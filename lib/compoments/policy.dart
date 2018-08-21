import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Policy extends StatelessWidget{
	static var percent = 5/100;
	static var size = percent*100;
	final percentStr = size.toStringAsFixed(0).toString() +"%";
	final texts = [
		{"name":"直播推荐","url":"/xx/xx","text":"红心火龙果3块九毛八", "state":1},
		{"name":"直播推荐","url":"/xx/xx", "text":"红心火龙果3块九毛八","state":2},
		{"name":"直播中","url":"/xx/xx","text":"红心火龙果3块九毛八", "state":3},
		{"name":"直播推荐","url":"/xx/xx", "text":"红心火龙果3块九毛八","state":4},
	];
	Widget _buildTableCell(String label,double height){
		return new Container(
			//单元格内小部件对齐方式
			alignment: Alignment.center,
			//文本小部件
			child: new Text(label,textAlign: TextAlign.center,),
			height: height,
		);
	}

	Widget build(BuildContext context) {
        return Container(
	        padding: EdgeInsets.only(left: 8.0, right: 8.0),
//			decoration: BoxDecoration(
//				color: Color(0xf5f5f5f5),
//				borderRadius: BorderRadius.only(
//					bottomLeft: Radius.circular(5.0), topLeft: Radius.circular(5.0)
//				)
//			),
			child: Column(
				children: <Widget>[
					Container(
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								new Column(
									children: [
										Text(
											"年度任务达成",
											style: TextStyle(fontSize: 12.0),
										),
									]
								),
								new Column(
									children: [
										new LinearPercentIndicator(
											width: MediaQuery.of(context).size.width - 180,
											animation: true,
											lineHeight: 15.0,
											animationDuration: 1500,
											percent: percent,
											center: Text(percentStr),
											linearStrokeCap: LinearStrokeCap.roundAll,
											backgroundColor: Color(0xe2e2e2e9),
											progressColor: Colors.redAccent,
											padding: EdgeInsets.only(left: 20.0, right: 20.0)
										),
									]
								),
								new Column(
									children:[
										Text(
											"799万/1000万",
											style: TextStyle(fontSize: 12.0),
										),
									],
								),

							],
						),
					),
					Container(
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								new Column(
									children: [
										Text(
											"月度任务达成",
											style: TextStyle(fontSize: 12.0),
										),
									]
								),
								new Column(
									children: [
										new LinearPercentIndicator(
												width: MediaQuery.of(context).size.width - 180,
												animation: true,
												lineHeight: 15.0,
												animationDuration: 1500,
												percent: percent,
												center: Text(percentStr),
												linearStrokeCap: LinearStrokeCap.roundAll,
												backgroundColor: Color(0xe2e2e2e9),
												progressColor: Colors.redAccent,
												padding: EdgeInsets.only(left: 20.0, right: 20.0)
										),
									]
								),
								new Column(
									children:[
										Text(
											"799万/1000万",
											style: TextStyle(fontSize: 12.0),
										),
									],
								),

							],
						),
					),
					Container(
						padding: EdgeInsets.only(top: 10.0),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								new Text.rich(
									new TextSpan(
										text: '本月X/C/P提货台数:',
										style: new TextStyle(
											fontSize: 12.0,
											fontWeight: FontWeight.w400
										),
										children: [
											new TextSpan(
												text: 'x: ',
												style: new TextStyle(
													fontWeight: FontWeight.w400,
												)),
											new TextSpan(
												text: '999',
												style: new TextStyle(
													color: Colors.redAccent,
													fontWeight: FontWeight.w400,
												)),
											new TextSpan(
												text: '台,   ',
												style: new TextStyle(
													fontWeight: FontWeight.w400,
												)),
											new TextSpan(
												text: 'c: ',
												style: new TextStyle(
													fontWeight: FontWeight.w400,
												)),
											new TextSpan(
												text: '999',
												style: new TextStyle(
													color: Colors.redAccent,
													fontWeight: FontWeight.w400,
												)),
											new TextSpan(
												text: '台,   ',
												style: new TextStyle(
													fontWeight: FontWeight.w400,
												)),
											new TextSpan(
												text: 'p: ',
												style: new TextStyle(
													fontWeight: FontWeight.w400,
												)),
											new TextSpan(
												text: '999',
												style: new TextStyle(
													color: Colors.redAccent,
													fontWeight: FontWeight.w400,
												)),
											new TextSpan(
												text: '台',
												style: new TextStyle(
													fontWeight: FontWeight.w400,
												)),
											]
									),
								),
							],
						),
					),
					Container(
						padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: <Widget>[
								new Column(
									children: [
										new Text.rich(
											new TextSpan(
												text: '当月单台返利:',
												style: new TextStyle(
													fontSize: 12.0,
													fontWeight: FontWeight.w400
												),
												children: [
													new TextSpan(
														text: '¥999',
														style: new TextStyle(
															color: Colors.redAccent,
															fontWeight: FontWeight.w400,
														)),
											],
											),
										),
									]
								),
								new Column(
									children: [
										new Text.rich(
											new TextSpan(
												text: '当月多台返利:',
												style: new TextStyle(
														fontSize: 12.0,
														fontWeight: FontWeight.w400
												),
												children: [
													new TextSpan(
															text: '¥999',
															style: new TextStyle(
																color: Colors.redAccent,
																fontWeight: FontWeight.w400,
															)),
												],
											),
										),
									]
								),
							],
						),
					),
					Container(
						decoration: BoxDecoration(
							border: new Border.all(width: .5, color: Colors.grey),
							borderRadius: BorderRadius.all(Radius.circular(5.0))
						),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
								children: <Widget>[
									new SizedBox(
										height: 90.0,
										child: Swiper(
											itemBuilder: (BuildContext context, int index) {
												return new Container(
													padding: const EdgeInsets.all(0.0),
													//容器内部小部件对齐方式:居中
													alignment: Alignment.center,
													//初始化表格小部件
													child: new Table(
														//设置表格边框,设置其他颜色的话,如果你的单元格"宽高不够"那么会遮挡你单元格内容的
														//我在这里就设置透明色了
														border: new TableBorder.all(width: 5.0,color: Colors.transparent),
														children: <TableRow>[
															//初始化一行widget
															new TableRow(
																children: <Widget>[
																	//在一行中初始化一个单元格
																	new TableCell(child: _buildTableCell('型号',30.0)),
																	new TableCell(child: _buildTableCell('最新供价(元)',30.0)),
																	new TableCell(child: _buildTableCell('涨跌幅',30.0)),
																	new TableCell(child: _buildTableCell('涨跌(元)',30.0)),
																],
															),
															new TableRow(
																children: <Widget>[
																	new TableCell(child: new Text('abcdf',textAlign: TextAlign.center,)),
																	new TableCell(child: new Text('6666',textAlign: TextAlign.center,)),
																	new TableCell(child: new Text('66666',textAlign: TextAlign.center,)),
																	new TableCell(child: new Text('6666',textAlign: TextAlign.center,)),
																]
															),
															new TableRow(
																children: <Widget>[
																	new TableCell(child: new Text('abcdf',textAlign: TextAlign.center,)),
																	new TableCell(child: new Text('6666',textAlign: TextAlign.center,)),
																	new TableCell(child: new Text('66666',textAlign: TextAlign.center,)),
																	new TableCell(child: new Text('6666',textAlign: TextAlign.center,)),
																]
															),
															new TableRow(
																children: <Widget>[
																	new TableCell(child: new Text('abcdf',textAlign: TextAlign.center,)),
																	new TableCell(child: new Text('6666',textAlign: TextAlign.center,)),
																	new TableCell(child: new Text('66666',textAlign: TextAlign.center,)),
																	new TableCell(child: new Text('6666',textAlign: TextAlign.center,)),
																]
															),
														],
													),
												);
											},
											autoplay:true,
											itemCount: texts.length,
											scrollDirection: Axis.vertical,
											reverse: false,
											autoplayDelay: 8000,
										),
									),
								],
							),
					),
				],
			),
		);
    }
}