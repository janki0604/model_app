
import 'package:flutter/material.dart';
import 'package:model_app/model/model_screen_one.dart';
import 'package:model_app/model/movie_data.dart';


class ModelCallingScreen extends StatefulWidget {
  const ModelCallingScreen({Key? key}) : super(key: key);

  @override
  State<ModelCallingScreen> createState() => _ModelCallingScreenState();
}

class _ModelCallingScreenState extends State<ModelCallingScreen> {
  ModelScreen? modelScreen;

  @override
  void initState() {
    modelScreen = ModelScreen.fromJson(Film.movieData);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Model Calling Screen"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Film Industry: ${modelScreen!.filmIndustry!}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "Movie Language: ${modelScreen!.language!}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "Established Year: ${modelScreen!.establishedYear!}",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: modelScreen!.movie!.length,
                padding: const EdgeInsets.all(15),
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemBuilder: (context, index) => Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Movie name: ${modelScreen!.movie![index].name}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "imdb: ${modelScreen!.movie![index].rate}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Actor Name: ${modelScreen!.movie![index].actor}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Actress Name: ${modelScreen!.movie![index].actress}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}