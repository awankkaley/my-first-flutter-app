import 'package:flutter/material.dart';
import 'package:luxurynft/detail_screen.dart';

import 'models/nft.dart';

class ItemList extends StatelessWidget {
  final Nft nft;

  const ItemList({Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(nft: nft);
        }));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Image.network(
                nft.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          nft.code,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        Text("Price"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          nft.name,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(nft.price),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    BookmarkButton(likes: nft.likes)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  final String likes;

  const BookmarkButton({Key? key, required this.likes}) : super(key: key);

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
        IconButton(
          icon: Icon(
            isSaved ? Icons.bookmark : Icons.bookmark_outline,
          ),
          onPressed: () {
            setState(() {
              isSaved = !isSaved;
            });
          },
        ),
        Text(widget.likes)
      ],
    );
  }
}
