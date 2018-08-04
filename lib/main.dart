import 'package:flutter/material.dart';

void main() => runApp(TCustomer());

class TCustomer extends StatefulWidget {
    @override
    State<StatefulWidget> createState() => new TCustomerState();


}

class TCustomerState extends State<TCustomer> {

  Widget searchBar() {
      return new Container(

          child: new Row(
              children: <Widget>[
                  new Expanded(child: new Container(
                      child: new Text("小星星商家你好", style: new TextStyle(color:Color(0xffffffff)) ),
                  )),
                  new IconButton(
                      icon: new Icon(
                          Icons.search, size: 32.0,
                          color: Color(0xffffffff),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) {
                              return ;
                            }
                        ));
                      }),
      //          decoration: new BoxDecoration(
      //              borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
      //              color: Colors.white
      //          )
              ],
          )

      );
  }

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
          theme:  new ThemeData(
              primaryColor: Colors.redAccent
          ) ,
          home: new Scaffold(
              appBar: new AppBar(
                  title: searchBar(),
              ),
          ),
      );
  }
}
