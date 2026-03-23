// ignore_for_file: unnecessary_this, prefer_collection_literals, unnecessary_new

class TodoModel {
  String? title;
  String? description;
  bool? isCompleted;
  String? id;

  TodoModel({this.title, this.description, this.isCompleted, this.id});

  TodoModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    isCompleted = json['isCompleted'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['isCompleted'] = this.isCompleted;
    data['id'] = this.id;
    return data;
  }
}