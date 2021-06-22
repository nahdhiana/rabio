import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/models/services.dart';
import 'package:flutter_submission/models/weddingHall.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            child: Text(
              'Wedding Hall',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Alex',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: size.height / 3,
          width: size.width,
          child: weddingHallList(),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            child: Text(
              'Other Services',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Alex',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: services(),
        ),
      ],
    );
  }

  ListView weddingHallList() {
    return ListView.builder(
      itemBuilder: (cotext, index) {
        WeddingHall wedHallList = weddingHallProp[index];
        return Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: [
              Image.asset(
                wedHallList.image,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    wedHallList.name,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Handycheera',
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        wedHallList.price,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Handycheera',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: weddingHallProp.length,
      scrollDirection: Axis.horizontal,
    );
  }

  ListView services() {
    return ListView.builder(
      itemBuilder: (context, index) {
        ServicesList srv = servicesProp[index];
        return Card(
          child: Stack(
            children: [
              Image.asset(
                srv.image,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Text(
                    srv.service,
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Handycheera',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    srv.price,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Handycheera',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: servicesProp.length,
    );
  }
}
