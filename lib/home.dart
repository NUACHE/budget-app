import 'package:budgeting_app/item.dart';
import 'package:budgeting_app/semiarc.dart';
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Row(
                children: [
                  const Text(
                    'Budgets',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    ItemCard(
                      emoji: '🧇',
                      title: 'Food',
                      color: Colors.amber,
                      selected: true,
                    ),
                    ItemCard(
                      emoji: '🥳',
                      title: 'Entertainment',
                      color: Colors.cyan,
                    ),
                    ItemCard(
                      emoji: '🏡',
                      title: 'Rent',
                      color: Colors.orange,
                    ),
                    ItemCard(
                      emoji: '🎾',
                      title: 'Gym',
                      color: Colors.pink,
                    ),
                    ItemCard(
                      emoji: '🥳',
                      title: 'Entertainment',
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey[200],
            ),
            const SizedBox(height: 40,),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Summary',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Available Spend',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      Text(
                        "+\$50.48",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        '\$200 Limit',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  PathExample(
                    height: 180,
                    width: 180,
                    thickness: 25,
                    backgroundColor: Colors.amber.shade100,
                    foregroundColor: Colors.amber,
                    totalValue: 100,
                    currentValue: 75,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('\$150.42', style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 2,),
                        Text('Spent', style: TextStyle(fontWeight: FontWeight.w300),),
                  
                      ],
                    ),
                  ),
                ],
              ),
            ),
             Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
