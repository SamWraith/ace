import "dart:convert";

import "package:ace/secrets.dart";
import "package:http/http.dart" as http;

class OpenAiService {
  Future<String> isArtPromptAPI(String prompt) async {
    try {
      final res = await http.post(
        Uri.parse("https://api.openai.com/v1/chat/completions"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $openAiAPI",
        },
        body: jsonEncode({
          "model": "gpt-3.5-turbo",
          "messages": [
            {
              "role": "user",
              "content":
                  "Does this message want to generate an AI picture, image, art or anything similar? $prompt . Simply answer in yes or no.",
            },
          ]
        }),
      );
      print(res.body);
      if (res.statusCode == 200) {
        print("yay!");
      }
      return "AI";
    } catch (e) {
      e.toString();
      return "Error";
    }
  }

  Future<String> CharGPTAPI(String prompt) async {
    return "ChatGPT";
  }

  Future<String> dalleAPI(String prompt) async {
    return "Dalle";
  }
}
