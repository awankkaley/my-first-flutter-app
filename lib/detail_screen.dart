import 'package:flutter/material.dart';

import 'models/nft.dart';

class DetailScreen extends StatelessWidget {
  final Nft nft;

  const DetailScreen({Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailScreenPage(nft: nft),
    );
  }
}

class DetailScreenPage extends StatelessWidget {
  final Nft nft;

  const DetailScreenPage({Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: [
              SafeArea(
                  child: Image.network(
                nft.imgUrl,
                fit: BoxFit.cover,
                width: 400,
              )),
              SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    BookmarkButton()
                  ],
                ),
              ))
            ],
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.verified_user, color: Colors.black),
                          Text(nft.creator)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.bookmark, color: Colors.black),
                          Text(nft.likes)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.document_scanner,
                              color: Colors.black),
                          Text(nft.code)
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.black,
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nft.name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat-Bold",
                            fontSize: 20.0),
                      ),
                      Text(
                        nft.price,
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(nft.description),
                  const SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Buy Now"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black, padding: EdgeInsets.all(15)),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          child: IconButton(
            icon: Icon(
              isSaved ? Icons.bookmark : Icons.bookmark_outline,
            ),
            color: Colors.white,
            onPressed: () {
              setState(() {
                isSaved = !isSaved;
              });
            },
          ),
        )
      ],
    );
  }
}
