import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                child: Text(
                  'Welcome to The DreamTheater',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Search Items',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(width: 40),
                    Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Upcoming Movies',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink)),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text('Batman'),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink)),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1580130775562-0ef92da028de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text('BIA'),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink)),
                          child: Image.network(
                            'https://m.media-amazon.com/images/I/71HBOO7tY5L._AC_SX679_.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text('Joker'),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink)),
                          child: Image.network(
                            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text('After'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Movies',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.pink)),
                      height: 200,
                      width: 180,
                      child: Image.network(
                        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.pink)),
                      height: 200,
                      width: 180,
                      child: Image.network(
                        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.pink)),
                      height: 200,
                      width: 180,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1584448141569-69f342da535c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=741&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.pink)),
                      height: 200,
                      width: 180,
                      child: Image.network(
                        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/movie-poster-template-design-21a1c803fe4ff4b858de24f5c91ec57f_screen.jpg?ts=1636996180',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
