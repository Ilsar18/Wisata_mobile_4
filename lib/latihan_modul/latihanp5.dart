import 'package:flutter/material.dart';

class pertemuan_5 extends StatefulWidget {
  const pertemuan_5({super.key});

  @override
  State<pertemuan_5> createState() => _pertemuan_5State();
}

class _pertemuan_5State extends State<pertemuan_5> {
  bool switchValue = false;
  String selectedRadio = '';
  bool olahraga = false;
  bool seni = false;
  String name = '';

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pertemuan5'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(labelText: 'Masukan Nama'),
              onChanged: (String value) {
                setState(() {
                  name = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Jenis Kelamin : '),
                Radio(
                    value: 'Laki-laki',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('Laki-laki'),
                Radio(
                    value: 'Perempuan',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('Perempuan'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Hobi :'),
            CheckboxListTile(
                title: Text('Olahraga'),
                value: olahraga,
                onChanged: (value) {
                  setState(() {
                    olahraga = value!;
                  });
                }),
            CheckboxListTile(
                title: Text('Seni'),
                value: seni,
                onChanged: (value) {
                  setState(() {
                    seni = value!;
                  });
                }),
            SizedBox(
              height: 20,
            ),
            SwitchListTile(
                title: Text('Lulus'),
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
