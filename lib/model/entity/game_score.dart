import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

@JsonSerializable()
class GameScore extends Equatable{
  int id;
  int score;

  GameScore(this.id, this.score);

  @override
  String toString() {
    return 'GameScore{id: $id, score: $score}';
  }

  @override
  List<Object> get props => [id, score];
}