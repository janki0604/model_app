class ModelCountry{
final States? states;
final UnionTerritory? unionTerritory;
ModelCountry({this.states
    , this.unionTerritory});
  factory ModelCountry.fromJson(Map<String,dynamic>json){
    return ModelCountry(
      states: States.fromJson(json['states']),
      unionTerritory: UnionTerritory.fromJson(json['union_territory']),
    );
  }
}
class States{
  final List<AboutStates>? aboutStates;
  States({this.aboutStates});
  factory States.fromJson(Map<String,dynamic>json){
    return States(
      aboutStates:  List<AboutStates>.from(
          json["about_states"].map((value) => AboutStates.fromJson(value))),
    );
  }
}
class UnionTerritory{
  final List<AboutUnionTerritory>? aboutUnionTerritory;

  UnionTerritory({this.aboutUnionTerritory});
  factory UnionTerritory.fromJson(Map<String,dynamic>json){
    return UnionTerritory(
      aboutUnionTerritory:
      List<AboutUnionTerritory>.from(
          json["about_union_territory"].map((value) => AboutUnionTerritory.fromJson(value))),
    );
  }

}
class AboutStates {
  final String? name;
  final String? folkDance;
  final int? districts;

  AboutStates({this.name="", this.folkDance="", this.districts});
  factory AboutStates.fromJson(Map<String,dynamic>json){
    return AboutStates(
      districts: json['districts'],
      folkDance: json['folk_dance'],
      name: json['name'],
    );
  }
}
class AboutUnionTerritory{
  final String? name;
  final String? famous;
  AboutUnionTerritory({this.name="", this.famous=""});
  factory AboutUnionTerritory.fromJson(Map<String,dynamic>json){
    return AboutUnionTerritory(
      name: json['name'],
      famous: json['famous'],
    );
  }
}

