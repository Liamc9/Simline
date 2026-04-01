import 'package:provider/provider.dart';
import 'package:simline/providers/all_providers.dart';
import 'package:simline/providers/auth_providers.dart';

var providers = [
  ChangeNotifierProvider<AuthProviders>(create: ((context) => AuthProviders())),
  ChangeNotifierProvider<AllProviders>(create: ((context) => AllProviders())),
];
