import 'package:flutter/material.dart';
import 'assignment.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widget ProfileCard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Widget ProfileCard'),
        ),
        body: Center(
          child: FadeIn(
            duration: Duration(seconds: 2), 
            child: ProfileCard(
              name: 'Athichar Kijcharoen',
              position: 'Student',
              email: 'Kijcharoen_a@su.ac.th',
              phoneNumber: '0959943335',
              imageUrl: 'https://scontent.fbkk7-3.fna.fbcdn.net/v/t39.30808-6/482349494_635153712549857_2279833133083138606_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeF5V750H3_7C9FjDa_WKVWER0U9EQMjYZFHRT0RAyNhkdxQX9YOrSiAAj3tgAPqsYJJF9n2GbPD__YZNA9-pogk&_nc_ohc=UAkuoDKEmdsQ7kNvwEG5yxL&_nc_oc=AdnEub9prAAEedistJ5QIDHmVEAd0FOIjSa80LelFKXKBNyXYmFP4SEZ2byE8_TA7tw&_nc_zt=23&_nc_ht=scontent.fbkk7-3.fna&_nc_gid=sv7H8JSxlWEP1MBL1cFJ9A&oh=00_AffbHeShPk9zuQrx3EjadHYGcPs3DMdfe10-UylNOrGuXw&oe=68F8D741', 
            ),
          ),
        ),
      ),
    );
  }
}

class FadeIn extends StatelessWidget {
  final Widget child;
  final Duration duration;

  FadeIn({required this.child, required this.duration});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: duration,
      child: child,
    );
  }
}
