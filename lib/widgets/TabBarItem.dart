import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
    final IconData icon;
    final Text text;
    final bool  selected;
	final int size;
    TabBarItem({this.text, this.icon, this.selected = false, this.size});

    @override
    Widget build(BuildContext context) {
        final Color selectedColor = Colors.white;
        final Color normalColor   = Colors.black;

        return Container(
            height: 44.0,
            margin: EdgeInsets.only(top: 4.0),
            child: Column(
//	            children: <Widget>[
//		            new Stack(
//                      alignment: const FractionalOffset(0.9, 0.1),
//			            children: <Widget>[
//			            	new Container(
//					            width: 50.0,
//					            child: Column(
//						            children: <Widget>[
//							            new SizedBox(
//							                height: 22.0,
//								            child: Icon(
//									            icon,
//									            color: selected ? selectedColor : normalColor,
//									            size: 24.0,
//								            ),
//							            ),
//						            ],
//					            ),
//				            ),
//				            new Positioned(
//					            top: 0.0,
//					            right:2.0,
//					            child: Container(
//						            padding: new EdgeInsets.fromLTRB(5.0,2.0,5.0,2.0),
//						            alignment: Alignment.center,
//						            decoration: BoxDecoration(
//							            borderRadius: BorderRadius.all(Radius.circular(10.0)),
//							            color: Colors.white,
//						            ),
//						            child: new Text('99',style: TextStyle(
//							            color: Colors.red,
//							            fontSize: 9.0,
//						            ),),
//					            ),
//				            ),
//			            ],
//		            ),
//	            ],

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
//                    new SizedBox(
//	                    height: 22.0,
//	                    child: Icon(
//		                    icon,
//		                    color: selected ? selectedColor : normalColor,
//		                    size: 24.0,
//	                    ),
//                    ),

	                new Stack(
		                children: <Widget>[
			                new Container(
				                width: 50.0,
				                child: Column(
					                children: <Widget>[
						                new SizedBox(
							                height: 22.0,
							                child: Icon(
								                icon,
								                color: selected ? selectedColor : normalColor,
								                size: 24.0,
							                ),
						                ),
					                ],
				                ),
			                ),
	                        (this.size !=null && this.size>0 )? new Positioned(
				                top: 0.0,
				                right:2.0,
				                child: Container(
					                padding: new EdgeInsets.fromLTRB(5.0,2.0,5.0,2.0),
					                alignment: Alignment.center,
					                decoration: BoxDecoration(
						                borderRadius: BorderRadius.all(Radius.circular(10.0)),
						                color: Colors.white,
					                ),
					                child: new Text("${this.size}",style: TextStyle(
						                color: Colors.red,
						                fontSize: 9.0,
					                ),),
				                ),
			                ):Text(""),
		                ],
	                ),
	                text,
                ],
            ),
        );
    }
}