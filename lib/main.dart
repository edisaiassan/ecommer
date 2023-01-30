import 'package:ecom/screens/checkout.dart';
import 'package:ecom/screens/home.dart';
import 'package:ecom/screens/profile.dart';
import 'package:ecom/utils/custom_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  //Firebase setup
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //Stripe setup
  /* final String response = await rootBundle.loadString('assets/config/stripe.json'); */
  //final data = await json.decode(response);
  //Stripe.publishableKey;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.getTheme(),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Shop'),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0),
              ),
              boxShadow: CustomTheme.cardShadow,
            ),
            child: const TabBar(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.home)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              HomeScreen(),
              ProfileScreen(),
              CheckoutScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
