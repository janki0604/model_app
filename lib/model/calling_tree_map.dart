import 'package:flutter/material.dart';
import 'package:model_app/model/model_tree.dart';
import 'package:model_app/model/tree_list.dart';

class CallingTreeMap extends StatefulWidget {
  const CallingTreeMap({Key? key}) : super(key: key);

  @override
  State<CallingTreeMap> createState() => _CallingTreeMapState();
}

class _CallingTreeMapState extends State<CallingTreeMap> {
  ModelTree? modelTree;
  @override
  void initState() {



    modelTree = ModelTree.fromJson(TreeList.treeData);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Text(" name: ${modelTree!.mangoTree!.fruit}"),
              Text("use:${modelTree!.mangoTree!.use}"),
              Text("price:${modelTree!.mangoTree!.price}"),
              Text("name:${modelTree!.neemTree!.name}"),
              Text("name:${modelTree!.neemTree!.color}"),
              Text("name:${modelTree!.neemTree!.oil}"),

        ],
      ),

    );
  }
}
