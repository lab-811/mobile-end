import 'package:flutter/material.dart';
import 'package:lab_12_islambek/free_list.dart';
import 'package:lab_12_islambek/main.dart';
import 'package:lab_12_islambek/modal_bottom_sheet.dart';
import 'package:lab_12_islambek/traveller_model.dart';

class Travellers extends StatefulWidget {
  @override
  _TravellersState createState() => _TravellersState();
}

class _TravellersState extends State<Travellers> {
  List<TravellerModel> travellerList = [
    TravellerModel(
        id: 1, name: 'Aigerim', place: '0 A верхний', type: 'OFFLINE'),
    TravellerModel(id: 2, name: 'Arlan', place: '0 B верхний', type: 'OFFLINE'),
    TravellerModel(id: 3, name: 'ASSEL', place: '1 нижний', type: 'ONLINE'),
    TravellerModel(
        id: 4, name: 'TEMIRLAN', place: '1  верхний', type: 'ONLINE'),
  ];

  List<FreeList> freeList = [
    FreeList(id: 5, name: 'Нет имени', place: '0 A нижний', type: 'no type'),
    FreeList(id: 6, name: 'Нет имени', place: '0 B нижний', type: 'no type'),
    FreeList(id: 7, name: 'Нет имени', place: '2 нижний', type: 'no type'),
    FreeList(id: 8, name: 'Нет имени', place: '2 верхний', type: 'no type'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65.0,
        title: Align(
            alignment: Alignment.bottomLeft,
            child: Text('Пассажиры',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21.0))),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Имя',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Место',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Тип',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: travellerList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () {
                        _bottomSheet(context, travellerList[index]);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 115,
                            child: Text(travellerList[index].name,
                                style: TextStyle(fontSize: 19)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            travellerList[index].place,
                            style: TextStyle(fontSize: 19),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 40,
                            width: 115,
                            padding: EdgeInsets.only(top: 9, left: 17),
                            decoration: BoxDecoration(
                              color: travellerList[index].type == "ONLINE"
                                  ? Colors.green
                                  : Colors.grey,
                              borderRadius: new BorderRadius.circular(29.0),
                            ),
                            child: Text(
                              travellerList[index].type,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Свободные места',
                    style: TextStyle(fontSize: 19),
                  )),
              ListView.separated(
                shrinkWrap: true,
                itemCount: freeList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(top: 15),
                    child: InkWell(
                      onTap: () {

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 115,
                            child: Text(freeList[index].name,
                                style: TextStyle(fontSize: 19)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            freeList[index].place,
                            style: TextStyle(fontSize: 19),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 40,
                            width: 115,
                            padding: EdgeInsets.only(top: 9, left: 17),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: new BorderRadius.circular(29.0),
                            ),
                            child: Text(
                              freeList[index].type,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: Text('Test Company',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 28,
                              fontWeight: FontWeight.w500))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                      child: Text('Aty Zhoni',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 36,
                              fontWeight: FontWeight.w800)))
                ]),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black87, width: 2)))),
        _listTile('Продажа билетов', Icon(Icons.credit_card)),
        _listTile('Список администраторов', Icon(Icons.people)),
        _listTile(
          'Автобусы',
          Icon(Icons.departure_board),
        ),
        _listTile('Статистика', Icon(Icons.equalizer)),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
              leading: new IconTheme(
                  data: new IconThemeData(size: 40),
                  child: Icon(Icons.airline_seat_recline_extra)),
              title: Text("Пассажиры",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
              onTap: () {}),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
              leading: new IconTheme(
                  data: new IconThemeData(size: 40),
                  child: Icon(Icons.date_range)),
              title: Text("Расписание",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
              onTap: () => Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new MyApp()))),
        ),
        _listTile('История', Icon(Icons.library_books)),
        _listTile('Настройки', Icon(Icons.settings)),
      ])),
    );
  }

  Widget _listTile(text, icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
          leading:
              new IconTheme(data: new IconThemeData(size: 40), child: icon),
          title: Text(text,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 24,
                  fontWeight: FontWeight.w600)),
          onTap: () => {}),
    );
  }

  void _deleteTravellerFromList(int id) {
    setState(() {
      travellerList.removeWhere((tx) => tx.id == id);
    });
  }

  void _bottomSheet(BuildContext ctx, TravellerModel cl) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: ModalBottomSheet(cl, _deleteTravellerFromList),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }
}
