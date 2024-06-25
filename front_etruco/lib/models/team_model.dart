import 'package:front_etruco/models/player_model.dart';

class TeamModel {
  final String teamID;
  List<PlayerModel> players;
  final int playPoints;
  final int roundPoints;

  TeamModel(
      {required this.teamID,
      this.players = const [],
      required this.playPoints,
      required this.roundPoints});
}
