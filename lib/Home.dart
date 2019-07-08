import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//my Imports
import 'package:flutter_cash/pages/category.dart';
import 'package:flutter_cash/pages/expense.dart';
import 'package:flutter_cash/pages/income.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData = MediaQuery.of(context);
    final Size = MediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter Cash app"),
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
                        child: new MaterialButton(onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>new IncomePage()));
                        },child: new Text("Income"),),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.money_off),
                        ),
                        new Padding(padding: EdgeInsets.all(2.0),
                        child: new MaterialButton(onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>new ExpensePage()));
                        },child: new Text("Expense"),),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Padding(padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.dashboard),
                        ),
                        new Padding(padding: EdgeInsets.all(2.0),
                        child: new MaterialButton(onPressed: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context)=>new CategoryPage()));
                        },child: new Text("Category"),),
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
      body: new Stack(
        children: <Widget>[
          Center(
            child: ListTile(
              title: new Icon(Icons.account_balance_wallet,size: 64.0,color: Colors.grey,),
              subtitle: Padding(
                padding: EdgeInsets.fromLTRB(Size/3.2, 0, 0, 0),
                child: new Text("Waste No Money !")),
            ),
          )
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