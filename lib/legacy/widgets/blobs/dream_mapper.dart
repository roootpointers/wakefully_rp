import '../../../data/contracts/blob.dart';
import 'blobs.dart';
import 'dream_blob.dart';
import 'mood_control_words.dart';

extension DreamMapper on Blob {
  DreamBlob get toDreamBlob {
    if (content.trim().isEmpty) {
      return DreamBlob(blob: this, info: CustomBlobs.randomBlob);
    }

    if (_checkExistence(content, MoodControlWords.angry)) {
      return DreamBlob(
        blob: this,
        info: CustomBlobs.angryBlob,
      );
    }

    if (_checkExistence(content, MoodControlWords.anxious)) {
      return DreamBlob(
        blob: this,
        info: CustomBlobs.anxiousBlob,
      );
    }

    if (_checkExistence(content, MoodControlWords.calm)) {
      return DreamBlob(
        blob: this,
        info: CustomBlobs.calmBlob,
      );
    }

    if (_checkExistence(content, MoodControlWords.excited)) {
      return DreamBlob(
        blob: this,
        info: CustomBlobs.excitedBlob,
      );
    }

    if (_checkExistence(content, MoodControlWords.happy)) {
      return DreamBlob(
        blob: this,
        info: CustomBlobs.happyBlob,
      );
    }

    if (_checkExistence(content, MoodControlWords.sad)) {
      return DreamBlob(
        blob: this,
        info: CustomBlobs.sadBlob,
      );
    }

    return DreamBlob(blob: this, info: CustomBlobs.randomBlob);
  }

  bool _checkExistence(String input, String word) =>
      input.contains(RegExp('(?<=$word)'));
}
