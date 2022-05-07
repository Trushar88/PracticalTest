//Application Id
String appId = "GetXNative";

//Base url for api
String baseUrl = "http://192.168.29.220:9090/customers/";

//Api Header
Future<Map<String, String>> getApiHeaders(bool authorizationRequired) async {
  Map<String, String> apiHeader = new Map<String, String>();

  if (authorizationRequired) {
    apiHeader.addAll({"Authorization": appId});
  } else {
    apiHeader.addAll({"Authorization": appId});
  }

  apiHeader.addAll({"Content-Type": "application/json"});
  apiHeader.addAll({"Accept": "application/json"});
  print(apiHeader);
  return apiHeader;
}
