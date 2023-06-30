import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
// 2
    final ThemeData theme = ThemeData();
// 3
    return MaterialApp(
// 4
      title: 'Recipe Calculator',
// 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.yellow,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
// 1
    return Scaffold(
// 2
        appBar: AppBar(
          title: Text(widget.title),
        ),
// 3
        body: SafeArea(
// TODO: Replace child: Container()
// 4
          child: ListView.builder(
            itemCount: Recipe.samples.length,
            // 6
            itemBuilder: (BuildContext context, int index) {
// 7
// TODO: Update to return Recipe card
              return buildRecipeCard(Recipe.samples[index]);
            },
          ),
        ));
  }

  Widget buildRecipeCard(Recipe recipe) {
// 1
    return Card(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
// 3
            children: <Widget>[
// 4
              Image(image: AssetImage(recipe.imageUrl)),
              const SizedBox(height: 14.0,),
              Text(recipe.label,style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),),
            ],
          ),
        ));
  }
}
