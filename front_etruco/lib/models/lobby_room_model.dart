import 'package:front_etruco/models/player_model.dart';

class LobbyRoom {
  final String lobbyId;
  List<PlayerModel> players;

  LobbyRoom({required this.lobbyId, this.players = const []});
}
