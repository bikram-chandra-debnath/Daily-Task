class TodoModel {
  String? id;
  String? todoText;
  bool isDone;

  TodoModel({required this.id, required this.todoText, this.isDone = false});

  static List<TodoModel> todoList() {
    return [
      TodoModel(id: "01", todoText: "Morning exercise",isDone: true),
      TodoModel(id: "02", todoText: "Buy Groceries", isDone: true),
      TodoModel(id: "03", todoText: "Check Email"),
      TodoModel(id: "04", todoText: "Team Metting"),
      TodoModel(id: "05", todoText: "Dinner with Girlfriedn", isDone: true),
    ];
  }
}
