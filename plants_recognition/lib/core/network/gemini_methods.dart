import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:plants_recognition/core/network/api_endpoints.dart';
import 'package:plants_recognition/core/network/dio_client.dart';

extension GeminiMethods on DioClient {
  Future<String> getDescription(String imageURL, String title) async {
    // ==============================================================
    final String apiKey = dotenv.env['GEMINI_API_KEY'] ?? '';

    final String endpoint =
        '/${ApiEndpoints.apiVersion}/models/${ApiEndpoints.model}:${ApiEndpoints.action}?key=$apiKey';
    // ==============================================================

    // STEP1: Download the image as raw bytes
    final imageResponse = await dio.get(
      imageURL,
      options: Options(
        responseType: ResponseType.bytes,
        headers: {'Accept': '*/*'},
      ),
    );

    // STEP2: Convert the bytes to a Base64 string
    final List<int> imageBytes = imageResponse.data;
    final String base64Image = base64Encode(imageBytes);

    // STEP3: Extract the mime type from the headers
    final String mimeType =
        imageResponse.headers.value('content-type') ?? 'image/jpeg';

    // ==============================================================

    final String prompt =
        "Describe the $title in the image in a simple, short, and clean way. "
        "Use plain text only with no formatting symbols like ###, **, or --- or bullet points. "
        "Keep it under 5 sentences and make it mobile friendly. "
        "Focus only on what the plant is and its key interesting facts.";

    // ==============================================================

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

    // ==============================================================

    // POST request to Gemini API
    final geminiResponse = await dio.post(endpoint, data: payload);

    // ==============================================================

    final responseData = geminiResponse.data;

    // Extract the description text from geminiResponse
    final String generatedText =
        responseData['candidates'][0]['content']['parts'][0]['text'];

    // ==============================================================

    return generatedText;
  }
}
