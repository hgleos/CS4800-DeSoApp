import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../Database/listing.dart';
import '../../constants.dart';

Column getContractProgress(Listing item){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text('Contract Progress',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          indicatorStyle: IndicatorStyle(
            color: appPrimaryColor!,
          ),
          afterLineStyle: LineStyle(
            color: appPrimaryColor!,
          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Buyer Sent Payment'),
          ),
          isFirst: true,
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          beforeLineStyle: LineStyle(
            color: (item.status >= 2) ? appPrimaryColor!: Colors.grey,
          ),
          indicatorStyle: IndicatorStyle(
            color: (item.status >= 2) ? appPrimaryColor!: Colors.grey,
          ),
          afterLineStyle: LineStyle(
            color: (item.status >= 2) ? appPrimaryColor!: Colors.grey,
          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Payment Received'),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          beforeLineStyle: LineStyle(
            color: (item.status >= 3) ? appPrimaryColor!: Colors.grey,
          ),
          indicatorStyle: IndicatorStyle(
            color: (item.status >= 3) ? appPrimaryColor!: Colors.grey,
          ),
          afterLineStyle: LineStyle(
            color: (item.status >= 3) ? appPrimaryColor!: Colors.grey,
          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Seller Sent Shipment'),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          beforeLineStyle: LineStyle(
            color: (item.status >= 4) ? appPrimaryColor!: Colors.grey,
          ),
          indicatorStyle: IndicatorStyle(
            color: (item.status >= 4) ? appPrimaryColor!: Colors.grey,
          ),
          afterLineStyle: LineStyle(
            color: (item.status >= 4) ? appPrimaryColor!: Colors.grey,
          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Buyer Confirmed Arrival'),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          beforeLineStyle: LineStyle(
            color: (item.status >= 5) ? appPrimaryColor!: Colors.grey,
          ),
          indicatorStyle: IndicatorStyle(
            color: (item.status >= 5) ? appPrimaryColor!: Colors.grey,
          ),
          afterLineStyle: LineStyle(
            color: (item.status >= 5) ? appPrimaryColor!: Colors.grey,
          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Payment Released to Seller'),
          ),
          isLast: true,
        ),

      ],
    );
}