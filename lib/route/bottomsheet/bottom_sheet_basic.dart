import 'package:flutter/material.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';
import 'package:materialx_flutter/data/my_strings.dart';

class BottomSheetBasicRoute extends StatefulWidget {

  BottomSheetBasicRoute();

  @override
  BottomSheetBasicRouteState createState() => new BottomSheetBasicRouteState();
}

class BottomSheetBasicRouteState extends State<BottomSheetBasicRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Basic"),
      body: Center(
        child: Text("Press button \nbelow", textAlign : TextAlign.center, style: MyText.display1(context).copyWith(
            color: Colors.grey[300]
        )),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "fab",
        backgroundColor: Colors.pink[500],
        elevation: 3,
        child: Icon(Icons.arrow_upward, color: Colors.white,),
        onPressed: () {
          showSheet(context);
        },
      ),
    );
  }
}

void showSheet(context) {
  showModalBottomSheet(context: context, builder: (BuildContext bc) {
    var MyStrings;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Wrap(
        spacing: 60,
        children: <Widget>[
          Container(height: 10),
          Text("Roberts", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
          Container(height: 10),
          Container(
            child: Text(
              MyStrings.middle_lorem_ipsum,
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18
              ),
            ),
          ),
          Container(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new FlatButton(
                textColor: Colors.pink[500],
                color: Colors.transparent,
                onPressed: (){
                  Navigator.pop(context);
                },
                child: new Text("CLOSE"),
              ),
              new RaisedButton(
                textColor: Colors.white,
                color: Colors.blue[700],
                onPressed: (){},
                child: new Text("DETAILS"),
              )
            ],
          )
        ],
      ),
    );
  });
}