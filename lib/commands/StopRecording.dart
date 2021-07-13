import 'dart:io';

import 'package:obs_command/commands/BaseCommand.dart';

class StopRecording extends BaseCommand {
  @override
  String get description => 'Tell Obs to stop recording';

  @override
  String get name => 'StopRecording';

  @override
  Future<void> run() async {
    await super.run();
    try {
      await obs.socket.stopRecording();
      print('Recording started');
      exit(0);
    } catch (e) {
      print('Failed to switch profile - ${e.toString()}');
      exit(2);
    }
  }
}
