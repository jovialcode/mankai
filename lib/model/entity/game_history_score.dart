import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

@JsonSerializable()
class GameHistoryScore extends Equatable{
  int id;
  List<int> score;

  GameHistoryScore(this.id, this.score);

  @override
  List<Object?> get props => [id, ...score];
}