import 'package:flutter/material.dart';

void main() {
  runApp(AuctionApp());
}

class AuctionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuctionScreen(),
    );
  }
}

class AuctionScreen extends StatefulWidget {
  @override
  _AuctionScreenState createState() => _AuctionScreenState();
}

class _AuctionScreenState extends State<AuctionScreen> {
  int highestBid = 200;

  void updateBid() {
    setState(() {
      highestBid += 75;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Live Auction')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Highest Bid So Far:', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('\$$highestBid', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: updateBid,
              child: Text('Place a Bid (+\$75)'),
            ),
          ],
        ),
      ),
    );
  }
}
