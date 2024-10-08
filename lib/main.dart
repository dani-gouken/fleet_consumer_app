import 'package:fleet_consumer/fleet_consumer_app.dart';
import 'package:fleet_consumer/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
late ObjectBox objectbox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 final dir = await getApplicationDocumentsDirectory();
  objectbox = await ObjectBox.create();
  HydratedBloc.storage = await HydratedStorage.build(storageDirectory:  dir);
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsBinding.instance
  );
  runApp(FleetConsumerApp(
    objectbox
  ));
}
