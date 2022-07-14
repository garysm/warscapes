import 'dart:io';

import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:server/app.dart';

Future main(List<String> args) async {
  final Stdout logger = stdout;
  logger.writeln('Starting server...');
  final app = App(logger);
  final server = await shelf_io.serve(app.handler, 'localhost', 8080);
  logger.writeln('Server listening on ${server.address.host}:${server.port}:');
}
