import 'dart:convert';

class TodoModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TodoModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}

void main() {
  // Create a TodoModel instance
  TodoModel todo = TodoModel(
    userId: 1,
    id: 1,
    title: 'Learn Dart',
    completed: false,
  );

  // Convert the object to JSON
  Map<String, dynamic> jsonMap = todo.toJson();
  print('JSON: $jsonMap');

  // Convert JSON back to an object
  TodoModel newTodo = TodoModel.fromJson(jsonMap);

  print('Parsed Data: userId=${newTodo.userId}, id=${newTodo.id}, title=${newTodo.title}, completed=${newTodo.completed}');
}
