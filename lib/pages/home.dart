import 'package:flutter/material.dart';
import 'package:tcustomer/compoments/Index.dart';
import 'package:tcustomer/widgets/index.dart';


class Home extends StatefulWidget{
	Home({Key key});

	@override
	HomeState createState() => HomeState();
}

//class IndexPageState extends State<IndexPage> with TickerProviderStateMixin {

class HomeState extends State<Home> with TickerProviderStateMixin {
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
				],
			),
		);
	}

    @override
    Widget build(BuildContext context) {
	    return Scaffold(
            appBar: new AppBar(
				title: searchBar(),
			),
			body: new Container(
				decoration: new BoxDecoration(color: Color(0xf5f5f5f5)),
				child: ListView(
					children: <Widget>[
						Padding(
							padding: new EdgeInsets.only(top: 10.0),
							child: IndexBanner(),
						),
						Padding(
							padding: new EdgeInsets.only(top: 5.0),
							child: Marquee(),
						),
						SectionName(
							title: "政策专区",
							style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orangeAccent),
							align: TextAlign.center,
						),
						Padding(
							padding: const EdgeInsets.symmetric(horizontal: 0.0),
							child: Policy(),
						),
						SectionName(
							title: "活动专区",
							style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orangeAccent),
							align: TextAlign.center,
						),
						Padding(
							padding: const EdgeInsets.symmetric(horizontal: 0.0),
							child: Activity(),
						),
						SectionName(
							title: "特惠专区",
							style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orangeAccent),
							align: TextAlign.center,
						),
						Padding(
							padding: const EdgeInsets.symmetric(horizontal: 0.0),
							child: Discount(),
						),
					],
				),
			),
	    );

    }
}