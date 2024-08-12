// ignore_for_file: depend_on_referenced_packages

import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/Login_Screen.dart';
import 'package:chat_app/screens/Register_Screen.dart';
import 'package:chat_app/screens/blocs/auth_bloc/auth_bloc.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/cubits/auth_cubit/auth_cubit.dart';
import 'package:chat_app/screens/cubits/cubit_chat/chat_cubit.dart';
import 'package:chat_app/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  BlocOverrides.runZoned(
    () {
      runApp(const ScholarChat());
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => LoginCubit()),
        // BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => ChatCubit()),
        BlocProvider(create: (context) => AuthBloc()),
      ],
      child: MaterialApp(
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          RegisterScreen.id: (context) => RegisterScreen(),
          ChatScreen.id: (context) => ChatScreen(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,
      ),
    );
  }
}
