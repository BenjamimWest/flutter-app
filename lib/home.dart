
import 'package:flutter/material.dart';
import 'package:flutter_app/components/big_card.dart';
import 'package:flutter_app/main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MainAppState>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Text("Uma palavra em inglês"),

          BigCard(appState: appState),
          

          ElevatedButton(onPressed:appState.geraNovaPalavra, 
          child: Text ("Proxima palavra")
          )
         ],
        ),
        ),
       );
    
  }
}

