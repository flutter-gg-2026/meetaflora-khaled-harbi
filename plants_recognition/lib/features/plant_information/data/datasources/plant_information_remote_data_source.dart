import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:plants_recognition/features/plant_information/data/models/plant_description_model.dart';

abstract class BasePlantInformationRemoteDataSource {
  Future<PlantDescriptionModel> getDescription(String imageURL, String title);
}

// ====================================================================
// ====================================================================

@LazySingleton(as: BasePlantInformationRemoteDataSource)
class PlantInformationRemoteDataSource
    implements BasePlantInformationRemoteDataSource {
  final Dio dio;

  PlantInformationRemoteDataSource({required this.dio});

  // ====================================================================
  // ====================================================================

  @override
  Future<PlantDescriptionModel> getDescription(
    String imageURL,
    String title,
  ) async {
    // TODO: move network implementation to network folder later

    const String apiKey = 'AIzaSyAWJiUNkvaB5gdcrpx4gffWZR1xIVydwBQ';
    final String endpoint =
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key=$apiKey';

    //^ ==============================================================

    try {
      //^ ==============================================================

      // STEP1: Download the image as raw bytes
      final imageResponse = await dio.get(
        imageURL,
        options: Options(responseType: ResponseType.bytes),
      );
      //^ ==============================================================

      // STEP2: Convert the bytes to a Base64 string
      final List<int> imageBytes = imageResponse.data;
      final String base64Image = base64Encode(imageBytes);
      //^ ==============================================================

      // STEP3: Extract the mime type from the headers
      final String mimeType =
          imageResponse.headers.value('content-type') ?? 'image/jpeg';
      //^ ==============================================================

      final String prompt =
          "Describe the $title in the image in a simple, short, and clean way. "
          "Use plain text only with no formatting symbols like ###, **, or --- or bullet points. "
          "Keep it under 5 sentences and make it mobile friendly. "
          "Focus only on what the plant is and its key interesting facts.";

      //^ ==============================================================

      final Map<String, dynamic> payload = {
        "contents": [
          {
            "parts": [
              {"text": prompt},
              {
                "inline_data": {"mime_type": mimeType, "data": base64Image},
              },
            ],
          },
        ],
      };

      //^ ==============================================================

      // POST request to Gemini API
      final geminiResponse = await dio.post(
        endpoint,
        data: payload,
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      //^ ==============================================================

      final responseData = geminiResponse.data;
      // Extract the description text from geminiResponse
      final String generatedText =
          responseData['candidates'][0]['content']['parts'][0]['text'];

      //^ ==============================================================

      return PlantDescriptionModel(description: generatedText);
    } catch (error) {
      throw Exception(error);
    }
  }
}
