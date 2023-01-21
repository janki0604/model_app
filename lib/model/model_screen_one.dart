
class ModelScreen {
  final String? filmIndustry;
  final String? language;
  final int? establishedYear;
  final List<Movie>? movie;

  ModelScreen(
      {this.filmIndustry="", this.language="", this.establishedYear,this.movie});

  factory ModelScreen.fromJson(Map<String, dynamic>json) {

    return ModelScreen(

      filmIndustry: json['film_industry'],
    language: json['language'],
    establishedYear: json['established_year'],
    movie: List<Movie>.from(
        json["movie"].map((value) => Movie.fromJson(value))),
    );


  }


}

class Movie {
  final String? name;
  final String? actor;
  final String? actress;
  final double? rate;

  Movie({this.name, this.actor, this.actress, this.rate});
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      name: json['name'],
      actor: json['actor'],
      actress: json['actress'],
      rate: json['imdb'],

    );
  }

}
