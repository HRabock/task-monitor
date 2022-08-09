import 'dart:convert';

import 'package:task_monitor/client/webclient.dart';
import 'package:task_monitor/models/branch.dart';
import 'package:task_monitor/models/repositories.dart';

class GithubClient extends WebClient {
  final String GITHUB_URL = 'https://api.github.com';
  GithubClient({Map<String, String>? headers}) {
    this.headers = headers ?? this.headers;
    this.headers?['Authorization'] = '';
  }

  SetAuthToken(String token) {
    this.headers!['Authorization'] = token;
  }

  Future<List<Repository>> getRepos({int? page}) async {
    String response = await get('$GITHUB_URL/orgs/Nasajon/repos?page=$page');
    List<dynamic> jsonArray = jsonDecode(response);
    return jsonArray.map((json) => Repository.fromJson(json)).toList();
  }

  Future<List<Branch>> getBranchs(
      {int? page, required String repository}) async {
    page ??= 0;
    String response =
        await get('$GITHUB_URL/repos/Nasajon/$repository/branches?page=$page');
    List<dynamic> jsonArray = jsonDecode(response);
    return jsonArray.map((json) => Branch.fromJson(json)).toList();
  }
}
