class ModelTree {
  final MangoTree? mangoTree;
  final NeemTree? neemTree;

  ModelTree({this.mangoTree, this.neemTree});

  factory ModelTree.fromJson(Map<String, dynamic> json) {
    return ModelTree(
      mangoTree: MangoTree.fromJson(json['mango_tree']),
      neemTree: NeemTree.fromJson(json['neem_tree']),
    );
  }
}

class MangoTree {
  final String? fruit;
  final double? price;
  final String? use;

  MangoTree({
    this.fruit,
    this.price,
    this.use,
  });

  factory MangoTree.fromJson(Map<String, dynamic> json) {
    return MangoTree(
      fruit: json['fruit'],
      price: json['price'],
      use: json['use'],
    );
  }
}

class NeemTree {
  final String? name;
  final String? color;
  final String? oil;

  NeemTree({this.name, this.color, this.oil});

  factory NeemTree.fromJson(Map<String, dynamic> json) {
    return NeemTree(
      name: json['name'],
      color: json['color'],
      oil: json['oil'],
    );
  }
}













// factory ModelTree.fromJson(Map<String,dynamic>json){
//   return ModelTree(
//     mangoTree: json['mango_tree'],
//     neemTree: json['neem_tree'],
//   );
// }

