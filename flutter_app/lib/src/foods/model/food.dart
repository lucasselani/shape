class Food {
  int id;
  int categoryId;
  String description;

  Food({this.id, this.categoryId, this.description});

  Food.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['categoryId'] = this.categoryId;
    data['description'] = this.description;
    return data;
  }
}