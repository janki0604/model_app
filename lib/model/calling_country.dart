import 'package:flutter/material.dart';
import 'package:model_app/model/country_list.dart';
import 'package:model_app/model/model_country.dart';

class CallingCountry extends StatefulWidget {
  const CallingCountry({Key? key}) : super(key: key);

  @override
  State<CallingCountry> createState() => _CallingCountryState();
}

class _CallingCountryState extends State<CallingCountry> {
  ModelCountry? modelCountry;

  @override
  void initState() {
    modelCountry = ModelCountry.fromJson(CountryData.country);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child : ListView.builder(
            itemCount: modelCountry!.states!.aboutStates!.length,
            itemBuilder: (context, index) =>
                Text("hey :${modelCountry!.states!.aboutStates![index].name}"),
          ))
        ],
      ),
    );
  }
}
