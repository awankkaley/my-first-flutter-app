import 'package:flutter/material.dart';
import 'package:luxurynft/explore_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          title: const Text(
            "More",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 36,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Discover, Collect & Sell Luxury NFT Items",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Bold"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "More is the world's first & largest NFT Marketplace ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ExploreScreen();
                        }));
                      },
                      child: Text("Explore"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black, padding: EdgeInsets.all(15)),
                    ),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(3),
                  height: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: NetworkImage(
                            "https://lh3.googleusercontent.com/m3nzoyGqIVhazDYzMKbT8H1YfiJ8cusfzF8odK8v9OjmNhLgItABtTFg5r126OVtGlnHvRCpTY58Xdc7a0xIWDp2PKNqkTXFqEeUk8o=w335",
                          ),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.6),
                              Colors.black.withOpacity(.3),
                            ])),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Art Block Collection",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ExploreScreen();
                            }));
                          },
                          child: const Text(
                            "View",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            primary: Colors.white,
                          ),
                        ),
                      ],
                    )),
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
