import 'dart:convert';

Book bookFromJson(String str) {
  final jsonData = json.decode(str);
  return Book.fromMap(jsonData);
}

String bookToJson(Book data) {
  final dyn = data.toMap();
  return json.encode(dyn);
}

class Book {
  int id;
  String title;
  int quantity;

  Book({
    this.id,
    this.title,
    this.quantity,
  });

  factory Book.fromMap(Map<String, dynamic> json) => new Book(
        id: json["id"],
        title: json["title"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "quantity": quantity,
      };
}
