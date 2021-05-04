import 'package:flutter/material.dart';
import 'package:lab_12_islambek/traveller_model.dart';

class ModalBottomSheet extends StatelessWidget {
  final TravellerModel travellers;
  final Function delete;

  ModalBottomSheet(this.travellers, this.delete);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.75,
          padding: EdgeInsets.only(
            top: 10,
            left: 9,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 11,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Информация о пассажире',
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 9,
              ),
              Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(18),
                shadowColor: Colors.white54,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: travellers.name,
                      labelStyle: TextStyle(color: Colors.black, fontSize: 21),
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 10, top: 10, right: 14)),
                  enabled: false,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(18),
                shadowColor: Colors.white54,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: '87079282498',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 21),
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 10, top: 10, right: 14)),
                  enabled: false,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Material(
                elevation: 4,
                shadowColor: Colors.white54,
                borderRadius: BorderRadius.circular(18),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Почта',
                      labelStyle: TextStyle(color: Colors.green, fontSize: 21),
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 10, top: 10, right: 14)),
                  enabled: false,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Место',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Цена',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 110,
                    child: Material(
                      elevation: 5,
                      shadowColor: Colors.white54,
                      borderRadius: BorderRadius.circular(13),
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: travellers.place,
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 110,
                    child: Material(
                      elevation: 5,
                      shadowColor: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: '3000',
                            border: InputBorder.none,
                            labelStyle: TextStyle(color: Colors.black),
                            contentPadding: EdgeInsets.only(left: 40, top: 40)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 65,
                    width: 158,
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(14.0)),
                      textColor: Colors.white,
                      child: Text(
                        'ИЗМЕНИТЬ',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 65,
                    width: 200,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(14.0)),
                      textColor: Colors.white,
                      child: Text(
                        'ОТПРАВИТЬ ЧЕК',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 65,
                width: 340,
                child: RaisedButton(
                  onPressed: () {
                    delete(travellers.id);
                    Navigator.pop(context);
                  },
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(17.0)),
                  textColor: Colors.white,
                  child: Text(
                    'Отменить покупку Билета',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
