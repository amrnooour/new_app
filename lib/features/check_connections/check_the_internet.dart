import 'package:flutter/material.dart';
import 'package:new_app/core/functions/check_connections.dart';
import 'package:new_app/features/check_connections/connected.dart';
import 'package:new_app/features/check_connections/disconnected.dart';

class CheckTheInternet extends StatefulWidget {
  const CheckTheInternet({super.key});

  @override
  State<CheckTheInternet> createState() => _CheckTheInternetState();
}

class _CheckTheInternetState extends State<CheckTheInternet> {
   bool _isConnected = false;

  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
  }

  Future<void> _checkInternetConnection() async {
    _isConnected = await isConnectedToInternet();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<bool>(
          future: isConnectedToInternet(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!) {
                return const Connected(); // Image for connected state
              } else {
                return const  Disconnected(); //Image for disconnected state
              }
            } else {
              return const Center(child: CircularProgressIndicator()); // Show loading indicator while checking
            }
          },
        ),
      ),
    );
  }
}