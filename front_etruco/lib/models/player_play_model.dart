import 'package:front_etruco/models/card_model.dart';

class PlayedPlayModel {
  List<CardModel> playedCards;
  final int winnerCardPlayIndex;

  PlayedPlayModel(
      {this.playedCards = const [], required this.winnerCardPlayIndex});
}
