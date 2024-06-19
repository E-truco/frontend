import 'package:front_etruco/models/card_model.dart';

class PlayerModel {
  final String nickname;
  final String playerId;
  List<CardModel> hand;

  PlayerModel(
      {required this.nickname, required this.playerId, this.hand = const []});
}