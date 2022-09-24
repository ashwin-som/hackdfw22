import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Page!'),
      ),
      body: Center(
          child: Row(
            children: [
              ElevatedButton(
                child: const Text('Furniture'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FurnitureRoute()),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Groceries'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GroceriesRoute()),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Clothing'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ClothingRoute()),
                  );
                },
              ),
            ],
      )),
    );
  }
}

class FurnitureRoute extends StatelessWidget {
  const FurnitureRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Furniture'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back to Main'),
        ),
      ),
    );
  }
}

class GroceriesRoute extends StatelessWidget {
  const GroceriesRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Groceries'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back to Main'),
        ),
      ),
    );
  }
}

class ClothingRoute extends StatelessWidget {
  const ClothingRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clothing'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back to Main'),
        ),
      ),
    );
  }
}
