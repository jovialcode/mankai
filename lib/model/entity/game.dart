import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Game {
  int id;
  String title;
  String content;

  Game(this.id, this.title, this.content);

  @override
  String toString() {
    return 'Game{id: $id, title: $title}';
  }
}