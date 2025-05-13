import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD9UyONvjdUhMmk3v6SHysVwPcqUxwvjCk",
            authDomain: "dibs-ralmlq.firebaseapp.com",
            projectId: "dibs-ralmlq",
            storageBucket: "dibs-ralmlq.firebasestorage.app",
            messagingSenderId: "748236194967",
            appId: "1:748236194967:web:4207f4a82ad9ed0e2b15d2"));
  } else {
    await Firebase.initializeApp();
  }
}
