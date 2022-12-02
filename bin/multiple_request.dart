import 'package:dio/dio.dart';

void main(List<String> arguments) {
  loop();
}

getData() async {
  var response =
      await Dio().get('https://jsonplaceholder.typicode.com/todos/1');
  print('status code => [${response.statusCode}]');
}

loop() async {
  while (true) {
    await Future.delayed(Duration(seconds: 2)).then((value) => getData());
  }
}
