import 'package:front_etruco/models/player_play_model.dart';

class PlayedRoundModel {
  List<PlayedPlayModel> playedPlays;
  final String winnerTeamID;

  PlayedRoundModel({this.playedPlays = const [], required this.winnerTeamID});
}
