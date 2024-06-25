import 'package:front_etruco/models/player_round_model.dart';
import 'package:front_etruco/models/team_model.dart';

class GameModal {
  int currentround;
  PlayedRoundModel roundHistory;
  TeamModel teams;

  GameModal(
      {required this.currentround,
      required this.roundHistory,
      required this.teams});
}
