
import 'package:budgeting_app/item.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:  Column(
             
        children: <Widget>[
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
             child: Row(
               children: [
              const   Text(
                  'Budgets',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500
                  ),
                ),
             const  SizedBox(width: 10,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))
               ],
             ),
           ),
           const SizedBox(height: 5,),
           const SizedBox(
            width: double.infinity,
             child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  ItemCard(emoji: '🧇', title: 'Food', color: Colors.amber, selected: true,),
                  ItemCard(emoji: '🥳', title: 'Entertainment', color: Colors.cyan,),
                  ItemCard(emoji: '🏡', title: 'Rent', color: Colors.orange,),
                  ItemCard(emoji: '🎾', title: 'Gym', color: Colors.pink,),
                  ItemCard(emoji: '🥳', title: 'Entertainment', color: Colors.orange,),
                ],
              ),
             ),
           ),
           Divider(
            thickness: 2,
            color: Colors.grey[200],
           )
        ],
      ),
      );
  }
}