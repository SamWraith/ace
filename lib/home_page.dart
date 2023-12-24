import 'package:ace/feature_box.dart';
import 'package:ace/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ace"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          //* assistant picture
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(
                    top: 4,
                  ),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/virtualAssistant.png"),
                  ),
                ),
              ),
            ],
          ),
          //* chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              ),
            ),
            child: const Text(
              "Good morning, what task do you want?",
              style: TextStyle(
                fontFamily: "Cera Pro",
                color: Pallete.mainFontColor,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              top: 10,
              left: 22,
            ),
            child: const Text(
              "Here are a few feature!",
              style: TextStyle(
                fontFamily: "Cera Pro",
                color: Pallete.mainFontColor,
                fontSize: 20,
              ),
            ),
          ),
          //* features list
          const FeatureBox(
            color: Pallete.firstSuggestionBoxColor,
            headerText: "ChatGPT",
            descText:
                "A smarter way to stay organised and informed with ChatGPT",
          ),
          const FeatureBox(
            color: Pallete.secondSuggestionBoxColor,
            headerText: "Dall-E",
            descText:
                "Get inspired and stay creative with your personal assistant powered by Dall-E",
          ),
          const FeatureBox(
            color: Pallete.thirdSuggestionBoxColor,
            headerText: "Smart Voice Assistant",
            descText:
                "Get the best of the both worlds with a voice assistant powered by ChatGPT and Dall-E",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}
