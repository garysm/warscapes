import 'package:functions_framework/functions_framework.dart';
import 'package:server/app.dart';
import 'package:shelf/shelf.dart';

@CloudFunction()
Future<Response> function(Request request, RequestLogger logger) {
  final app = App(logger);
  return app.router(request);
}
