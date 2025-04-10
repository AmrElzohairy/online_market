import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_market/constants.dart';
import 'package:online_market/core/theme/app_colors.dart';
import 'package:online_market/views/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:online_market/views/auth/ui/login_view.dart';
import 'package:online_market/views/nav_bar/ui/main_home_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final client = Supabase.instance.client;

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AuthCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.kScaffoldColor),
        home:
            client.auth.currentUser != null
                ? const MainViews()
                : const LoginView(),
      ),
    );
  }
}
