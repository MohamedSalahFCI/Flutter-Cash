import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ExpensePage extends StatefulWidget {
  @override
  _incomePageState createState() => _incomePageState();
}

class _incomePageState extends State<ExpensePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Expense"),
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.add),onPressed: (){
            //hna 3mlna l Alert w hwa byt2asam l title w content ya m3alm 
            showDialog(context: context,builder: (context)=>new AlertDialog(
              title: new Text("Add"),
              content: new Container(
                height: 180.0,
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Padding(padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.attach_money),
                        ),
                        new Padding(padding: EdgeInsets.all(2.0),
                        child: new MaterialButton(onPressed: (){},child: new Text("Income"),),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.money_off),
                        ),
                        new Padding(padding: EdgeInsets.all(2.0),
                        child: new MaterialButton(onPressed: (){},child: new Text("Expense"),),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.dashboard),
                        ),
                        new Padding(padding: EdgeInsets.all(2.0),
                        child: new MaterialButton(onPressed: (){},child: new Text("Category"),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ));
          },),

        ],
      ),
            bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              //flex: 1,
              child: ListTile(
                title: new Text("Balance:"),
                subtitle: new Text("\$720"),
              ),
            ),
            /*
            Expanded(
              flex: 3,
              child: new MaterialButton(
                color: Colors.red,
                onPressed: (){},
                child: new Text("press here",style: TextStyle(color: Colors.white),),
              ),
            )
             */
            Expanded(
              //flex: 1,
              child: ListTile(
                title: new Text("Expense:"),
                subtitle: new Text("\$230"),
              ),
            ),
            Expanded(
              child: new IconButton(icon: Icon(Icons.remove_red_eye),color: Colors.pink,onPressed: (){
                Fluttertoast.showToast(msg: "Hello Momo",toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.CENTER,timeInSecForIos: 1,
  );
              },),
            ),

          ],
        ),
      ),

      
    );
  }
}