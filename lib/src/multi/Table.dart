import 'package:flutter/material.dart';

//columnWidths：设置每一列的宽度。
//defaultColumnWidth：默认的每一列宽度值，默认情况下均分。
//border：表格边框。
//defaultVerticalAlignment：每一个单元的垂直方向的alignment。
class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Table(
        columnWidths:<int, TableColumnWidth>{
          0:FixedColumnWidth(50.0),
          1:FixedColumnWidth(60.0),
          2:FixedColumnWidth(150.0),
          3:FixedColumnWidth(50.0),
        } ,
        children: <TableRow>[
          TableRow(
            children:<Widget>[
              Text('123'),
              Text('asd'),
              Text('qwe'),
              Text('jl'),
            ],
          ),
          TableRow(
            children:<Widget>[
              Text('123'),
              Text('asd'),
              Text('qwe'),
              Text('jl'),
            ],
          ),
        ],
      ),
    );
  }
}
