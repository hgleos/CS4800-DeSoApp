import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../constants.dart';

Column getContractProgress(bool inContractHistory){
  if (!inContractHistory) {
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
          indicatorStyle: IndicatorStyle(

          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Payment Received'),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          indicatorStyle: IndicatorStyle(

          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Seller Sent Shipment'),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          indicatorStyle: IndicatorStyle(

          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Buyer Confirmed Arrival'),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          indicatorStyle: IndicatorStyle(

          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Payment Released to Seller'),
          ),
          isLast: true,
        ),

      ],
    );
  } else {
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
          indicatorStyle: IndicatorStyle(
            color: appPrimaryColor!,
          ),
          beforeLineStyle: LineStyle(
            color: appPrimaryColor!,
          ),
          afterLineStyle: LineStyle(
            color: appPrimaryColor!,
          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Payment Received'),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          indicatorStyle: IndicatorStyle(
            color: appPrimaryColor!,
          ),
          beforeLineStyle: LineStyle(
            color: appPrimaryColor!,
          ),
          afterLineStyle: LineStyle(
            color: appPrimaryColor!,
          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Seller Sent Shipment'),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          indicatorStyle: IndicatorStyle(
            color: appPrimaryColor!,
          ),
          beforeLineStyle: LineStyle(
            color: appPrimaryColor!,
          ),
          afterLineStyle: LineStyle(
            color: appPrimaryColor!,
          ),
          endChild: Container(
            margin: EdgeInsets.only(left: 15),
            child: Text('Buyer Confirmed Arrival'),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.2,
          indicatorStyle: IndicatorStyle(
            color: appPrimaryColor!,
          ),
          beforeLineStyle: LineStyle(
            color: appPrimaryColor!,
          ),
          afterLineStyle: LineStyle(
            color: appPrimaryColor!,
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
}