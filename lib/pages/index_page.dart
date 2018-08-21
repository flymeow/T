import 'package:flutter/material.dart';
import 'package:tcustomer/pages/home.dart';
import 'package:tcustomer/pages/school.dart';
import 'package:tcustomer/pages/notifications.dart';
import 'package:tcustomer/pages/cart.dart';
import 'package:tcustomer/pages/account.dart';

//import 'package:tcustomer/widgets/index.dart';

class IndexPage extends StatefulWidget{
	IndexPage({Key key});

    @override
    IndexPageState createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> with TickerProviderStateMixin {
	TabController controller;
	int selectedIndex = 0;
	@override
	void initState() {
		controller = TabController(vsync: this, length: 5);
		controller.addListener(() {
			setState(() {
				selectedIndex = controller.index;
			});
		});
		super.initState();
	}

	var appBarTitles = ['首页', 'T课堂', '消息中心', '采购台','我的'];

	Text getTabTitle(int curIndex) {
		if (curIndex == selectedIndex) {
			return new Text(appBarTitles[curIndex],
				style: new TextStyle(color: Colors.white, fontSize: 14.0,));
		} else {
			return new Text(appBarTitles[curIndex],
				style: new TextStyle(color: Colors.black, fontSize: 14.0));
		}
	}
	final _main = [
		Home(),
		SchoolPage(),
		NotificationsPage(),
		CartPage(),
		AccountPage()
	];
    @override
    Widget build(BuildContext context) {
    // TODO: implement build
		return Scaffold(
//			appBar: new AppBar(
//				title: searchBar(),
//			),
//			body: TabBarView(
//				controller: controller,
//				physics: NeverScrollableScrollPhysics(),
//				children: <Widget>[
//					Home(),
//					SchoolPage(),
//					NotificationsPage(),
//					CartPage(),
//					AccountPage()
//				],
//			),
			body:_main[selectedIndex],
			bottomNavigationBar:new Theme(
				data: Theme.of(context).copyWith(
					// sets the background color of the `BottomNavigationBar`
					canvasColor: Colors.redAccent,
					// sets the active color of the `BottomNavigationBar` if `Brightness` is light
					primaryColor: Colors.white,
					textTheme: Theme
							.of(context)
							.textTheme
							.copyWith(caption: new TextStyle(color: Colors.black))
				),
				child: new BottomNavigationBar(
					items: [
						BottomNavigationBarItem(
							icon: new Icon(Icons.home,),
							title: getTabTitle(0),
						),
						BottomNavigationBarItem(
							icon: new Icon(Icons.school, ),
							title: getTabTitle(1),
						),
						BottomNavigationBarItem(
							icon: new Stack(
								children: <Widget>[
									new Container(
										width: 50.0,
										margin: EdgeInsets.only(top: 2.0),
										child: Column(
											children: <Widget>[
												new SizedBox(
													height: 22.0,
													child: new Icon(Icons.notifications_active),
												),
											],
										),
									),
									 new Positioned(
										top: 0.0,
										right:2.0,
										child: Container(
											padding: new EdgeInsets.fromLTRB(3.0,1.0,3.0,1.0),
											alignment: Alignment.center,
											decoration: BoxDecoration(
												borderRadius: BorderRadius.all(Radius.circular(10.0)),
												color: Colors.white,
											),
											child: new Text("99+",style: TextStyle(
												color: Colors.red,
												fontSize: 9.0,
											),),
										),
									)
								],
							),
							title: getTabTitle(2),
						),
						BottomNavigationBarItem(
							icon: new Icon(Icons.add_shopping_cart, ),
							title: getTabTitle(3),
						),
						BottomNavigationBarItem(
							icon: new Icon(Icons.account_circle, ),
							title: getTabTitle(4),
						),
					],
					type: BottomNavigationBarType.fixed,
					currentIndex: selectedIndex,
					onTap: (int index) {
						setState(() {
							selectedIndex = index;
						});
					},
				),
			)
//			bottomNavigationBar: Material(
//				color: Colors.redAccent,
//				child: TabBar(
//					isScrollable: false,
//					indicatorColor: Colors.transparent,
//					controller: controller,
//					tabs: <Widget>[
//						TabBarItem(
//							text: getTabTitle(0),
//							icon: Icons.home,
//							selected: selectedIndex == 0,
//						),
//						TabBarItem(
//							text: getTabTitle(1),
//							icon: Icons.school,
//							selected: selectedIndex == 1,
//						),
//						TabBarItem(
//							text: getTabTitle(2),
//							icon: Icons.notifications_active,
//							selected: selectedIndex == 2,
//							size:11,
//						),
//						TabBarItem(
//							text: getTabTitle(3),
//							icon: Icons.add_shopping_cart,
//							selected: selectedIndex == 3,
//							size:99,
//						),
//						TabBarItem(
//							text: getTabTitle(4),
//							icon: Icons.account_circle,
//							selected: selectedIndex == 4,
//						)
//					],
//				),
//			),
		);
    }

}