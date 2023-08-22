import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAG-RN7zBMW9o0UOSLnGwokV-9L6S6fEWs",
            authDomain: "myproject-f1780.firebaseapp.com",
            projectId: "myproject-f1780",
            storageBucket: "myproject-f1780.appspot.com",
            messagingSenderId: "650552867016",
            appId: "1:650552867016:web:c83b189d70f3d8d7900dfd"));
  } else {
    await Firebase.initializeApp();
  }
}
