import 'package:fisher_notes/common/constants.dart';
import 'package:fisher_notes/models/thing_model.dart';
import 'package:flutter/material.dart';

class ThingCard extends StatefulWidget {
  final Thing thing;

  ThingCard(this.thing);
  @override
  _ThingCardState createState() => _ThingCardState();
}

class _ThingCardState extends State<ThingCard> {
  Thing get thing => widget.thing; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: new GestureDetector(
        onTap: ()=>{
          Navigator.pushNamed(context, '/ThingDetail', arguments: 1)
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(12),
          ),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: <Widget>[
              buildImage(),
              buildTitle(),
              buildPriceInfo(),
            ],
          ),
        ),
      )
      
    ));

       
  }


  Widget buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      child: Image.network(
        thing.imageUrl,
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height / 6,
        loadingBuilder: (context, Widget child, ImageChunkEvent progress) {
          if (progress == null) return child;
          return Center(
            child: Padding(
              padding: EdgeInsets.all(32),
              child: CircularProgressIndicator(value: progress.expectedTotalBytes != null ? progress.cumulativeBytesLoaded / progress.expectedTotalBytes : null),
            ),
          );
        },
      ),
    );
  }

  Widget buildTitle() {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Text(
        thing.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Constants.titleStyle,
      ),
    );
  }

  Widget buildPriceInfo() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            thing.price.toString(),
            style: Constants.titleStyle,
          ),
        ],
      ),
    );
  }
}