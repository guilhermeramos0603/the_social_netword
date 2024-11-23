import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:the_social_network/presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyCv8V01nd2yK7jmwoL_nhaVUx1LPIcou1M",
      authDomain: "the-social-network-436c7.firebaseapp.com",
      projectId: "the-social-network-436c7",
      storageBucket: "the-social-network-436c7.firebasestorage.app",
      messagingSenderId: "698999836444",
      appId: "1:698999836444:web:8cbf9ef63cd780624134d9",
      measurementId: "G-W0Y9JS0Q21",
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const App());
}
