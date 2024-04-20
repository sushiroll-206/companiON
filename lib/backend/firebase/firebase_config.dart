import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDX9LOsmE_cilHXUiMRom_8ju0MxFc8oHA",
            authDomain: "companion-cf150.firebaseapp.com",
            projectId: "companion-cf150",
            storageBucket: "companion-cf150.appspot.com",
            messagingSenderId: "605962454037",
            appId: "1:605962454037:web:dee5ae5bc872fcd15f3a1c",
            measurementId: "G-S6JVXRW9FK"));
  } else {
    await Firebase.initializeApp();
  }
}
