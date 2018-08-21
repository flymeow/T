import 'package:flutter/material.dart';

import 'package:tcustomer/pages/index_page.dart';


void main() => runApp(TCustomer());

class TCustomer extends StatefulWidget {
    @override
    State<TCustomer> createState() => new TCustomerState();

}

class TCustomerState extends State<TCustomer> with TickerProviderStateMixin {



  @override
  Widget build(BuildContext context) {
      return MaterialApp(
          theme:  new ThemeData(
              primaryColor: Colors.redAccent
          ) ,
          home: IndexPage()
      );
  }
}
