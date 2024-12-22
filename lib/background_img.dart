
  import 'package:flutter/material.dart';

var imgSrc =
      'https://images.unsplash.com/photo-1662186342592-5b1236e95a4e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cGl6emElMjBidXJnZXJ8ZW58MHx8MHx8fDA%3D';

      Widget backgroundImage({required double height,required double width}){
        return SizedBox(
                height: height,
                width: width,
                child: Image.network(
                  imgSrc,
                  fit: BoxFit.fill,
                ),
              );
      }