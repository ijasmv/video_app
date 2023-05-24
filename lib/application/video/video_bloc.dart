import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:encrypt/encrypt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_app/application/core/constants/app_constants.dart';
import '../../domain/video/video_data.dart';
part 'video_event.dart';
part 'video_state.dart';
part 'video_bloc.freezed.dart';

@injectable
class VideoBloc extends Bloc<VideoEvent, VideoState> {
  VideoBloc() : super(VideoState.initial()) {
    on<NextVideo>((event, emit) {
      int index = state.currentVideoIndex;
      if (index + 1 < state.videoList.length) {
        index++;
        emit(state.copyWith(currentVideoIndex: index, downloadCompleted: false));
      }
    });

    on<PreviousVideo>((event, emit) {
      int index = state.currentVideoIndex;
      if (index - 1 >= 0) {
        index--;
        emit(state.copyWith(currentVideoIndex: index, downloadCompleted: false));
      }
    });

    on<SaveVideo>((event, emit) async {
      Dio dio = Dio();
      emit(state.copyWith(
          isLoading: true, downloadCompleted: false, isError: false, errorMessage: ""));
      Directory directory = await getApplicationDocumentsDirectory();
      try {
        var vid = state.videoList[state.currentVideoIndex];
        print(directory.path);
        await dio.download(
          vid.url,
          "${directory.path}/${vid.name}.mp4",
          onReceiveProgress: (count, total) {
            print("$count   ::::  $total");
          },
        );

        await saveFileEncrypted(vid.name, directory.path);

        emit(state.copyWith(
            isLoading: false, downloadCompleted: true, isError: false, errorMessage: ""));
      } catch (e) {
        print(e);
        emit(state.copyWith(isLoading: false, isError: true, errorMessage: "Download Error"));
      }
    });

    on<GetSavedVideos>((event, emit) async {
      Directory directory = await getApplicationDocumentsDirectory();
      var files =
          Directory(directory.path).listSync().where((e) => e.path.endsWith(".aes")).toList();
      List<VideoData> vidPaths = state.videoList;

      if (files.isNotEmpty) {
        for (var i = 0; i < state.videoList.length; i++) {
          for (var element in files) {
            if (element.path.contains(state.videoList[i].name)) {
              vidPaths[i].savedFile = await decryptFile(element.path);
              break;
            }
          }
        }
      }

      emit(state.copyWith(videoList: vidPaths));
    });
  }

  saveFileEncrypted(String name, String path) async {
    File file = File("$path/$name.mp4");
    File outFile = File("$path/$name.aes");

    bool outFileExists = await outFile.exists();

    if (!outFileExists) {
      await outFile.create();
    }

    final videoFileContents = file.readAsStringSync(encoding: latin1);

    final key = Key.fromUtf8(fileEncryptionKey);
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));

    final encrypted = encrypter.encrypt(videoFileContents, iv: iv);
    await outFile.writeAsBytes(encrypted.bytes);
  }

  Future<File?> decryptFile(String filePath) async {
    // print("##### $filePath");
    File inFile = File(filePath);
    File outFile = File(filePath.replaceRange(filePath.length - 3, filePath.length, "mp4"));
    // print(filePath.replaceRange(filePath.length - 3, filePath.length, "mp4"));

    // bool outFileExists = await outFile.exists();

    // if (!outFileExists) {
    //   await outFile.create();
    // }

    final videoFileContents = inFile.readAsBytesSync();

    final key = Key.fromUtf8(fileEncryptionKey);
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));

    final encryptedFile = Encrypted(videoFileContents);
    final decrypted = encrypter.decrypt(encryptedFile, iv: iv);

    final decryptedBytes = latin1.encode(decrypted);
    var decFile = await outFile.writeAsBytes(decryptedBytes);
    return decFile;
  }
}
