class Inventory {
  String? id;
  String? color;
  String? colorValue;
  String? size;
  int? stockQuantity;

  Inventory(
      {this.id, this.color, this.colorValue, this.size, this.stockQuantity});

  Inventory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    color = json['color'];
    colorValue = json['color_value'];
    size = json['size'];
    stockQuantity = json['stock_quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['color'] = this.color;
    data['color_value'] = this.colorValue;
    data['size'] = this.size;
    data['stock_quantity'] = this.stockQuantity;
    return data;
  }

  Inventory copyWith({
    String? id,
    String? color,
    String? colorValue,
    String? size,
    int? stockQuantity,
  }) {
    return Inventory(
      id: id ?? this.id,
      stockQuantity: stockQuantity ?? this.stockQuantity
    );
  }
}
