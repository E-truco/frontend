import 'package:front_etruco/models/player_model.dart';

class GameModal {
  int currentround;
  PlayerRoundModel roundHistory;
  TeamModel teams;

  GameModal({required this.currentround, required this.roundHistory, required this.teams });
}
