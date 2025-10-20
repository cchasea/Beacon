import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD0wSZAXqbeqma_KxwWKxzSt5wPs5KGsU4",
            authDomain: "campus-life-organizer-sjgd9s.firebaseapp.com",
            projectId: "campus-life-organizer-sjgd9s",
            storageBucket: "campus-life-organizer-sjgd9s.firebasestorage.app",
            messagingSenderId: "419464159221",
            appId: "1:419464159221:web:a0987358833bc7e8dc8abc"));
  } else {
    await Firebase.initializeApp();
  }
}
