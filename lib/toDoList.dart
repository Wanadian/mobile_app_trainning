import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  int _counter = 0;
  int _nbArticle = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCart() {
    setState(() {
      _nbArticle++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_shopping_cart),
            tooltip: 'Cart',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You have $_nbArticle in your cart')));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Text(
            "Voldemort's Wand",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd3qSdnv4D-3i3huR7EBjkNdwlTtTltHRC_A&usqp=CAU',
                  scale: 1,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd3qSdnv4D-3i3huR7EBjkNdwlTtTltHRC_A&usqp=CAU',
                  scale: 1,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd3qSdnv4D-3i3huR7EBjkNdwlTtTltHRC_A&usqp=CAU',
                  scale: 1,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd3qSdnv4D-3i3huR7EBjkNdwlTtTltHRC_A&usqp=CAU',
                  scale: 1,
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 50),
          ),
          Container(
            child: const Text(
              'lksnef oeifqop qozfjp qozfjp iqufeuiq qiuzfhuiqf iqugzfuiqgfuigqui quizfuiq iqugzfuiq iuqzgfiuqg iqugzfiuq',
              textAlign: TextAlign.justify,
            ),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
          const Text(
            '30€',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 350,
          ),
          ElevatedButton(
            onPressed: _incrementCart,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.black)),
            child: const Text(
              'Order',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        label: Text(
          '$_counter',
          style: const TextStyle(color: Colors.black),
        ),
        tooltip: 'Like',
        icon: const Icon(
          Icons.favorite,
          color: Colors.pink,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
