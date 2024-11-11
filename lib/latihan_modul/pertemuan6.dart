import 'package:flutter/material.dart';

class pertemuan6 extends StatelessWidget {
  const pertemuan6({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pertemuan 6 membuat list view'),
          bottom: TabBar(tabs: [
            Tab(
              text: 'listView',
            ),
            Tab(
              text: 'listView.builder',
            ),
            Tab(
              text: 'listView.separated',
            ),
          ]),
        ),
        body: TabBarView(children: [
          ContohListView(),
          ContohListViewBuilder(),
          ContohlistViewSparated(),
        ]),
      ),
    );
  }
}

class ContohListView extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7];
  ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: numberList.map((int number) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 1, 36, 15),
              border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '$number',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class ContohListViewBuilder extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  ContohListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 192, 252, 216),
                border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        });
  }
}

class ContohlistViewSparated extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  ContohlistViewSparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 192, 252, 216),
                border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 15,
            color: Colors.amber,
          );
        },
        itemCount: numberList.length);
  }
}
