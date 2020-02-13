import 'package:flutter/material.dart';

Container gridTile(
    {String image, String title = "title", String subtitle = "subtitle"}) {
  return Container(
    width: 110.0,
    child: Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(image),
          ),
          Flexible(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13.0,
              ),
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13.0),
          ),
        ],
      ),
    ),
  );
}
