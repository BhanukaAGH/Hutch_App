import 'package:flutter/material.dart';

class DataPackagesList extends StatelessWidget {
  final List<dynamic> _imagesList = [
    [
      'H01.jpg',
      'H02.jpg',
      'H03.jpg',
      'H04.jpg',
      'H05.jpg',
      'H06.jpg',
      'H07.jpg',
      'H08.jpg',
      'H09.jpg',
      'H10.jpg',
      'H11.jpg',
      'H12.jpg',
    ],
    [
      'H04.jpg',
      'H06.jpg',
      'H09.jpg',
      'H08.jpg',
      'H05.jpg',
      'H06.jpg',
      'H07.jpg',
      'H08.jpg',
      'H09.jpg',
      'H10.jpg',
      'H11.jpg',
      'H12.jpg',
    ],
    [
      'H10.jpg',
      'H04.jpg',
      'H05.jpg',
      'H04.jpg',
      'H05.jpg',
      'H06.jpg',
      'H07.jpg',
      'H08.jpg',
      'H09.jpg',
      'H10.jpg',
      'H11.jpg',
      'H12.jpg',
    ],
    [
      'H06.jpg',
      'H11.jpg',
      'H10.jpg',
      'H04.jpg',
      'H05.jpg',
      'H06.jpg',
      'H07.jpg',
      'H08.jpg',
      'H09.jpg',
      'H10.jpg',
      'H11.jpg',
      'H12.jpg',
    ],
    [
      'H09.jpg',
      'H05.jpg',
      'H08.jpg',
      'H04.jpg',
      'H05.jpg',
      'H06.jpg',
      'H07.jpg',
      'H08.jpg',
      'H09.jpg',
      'H10.jpg',
      'H11.jpg',
      'H12.jpg',
    ],
  ];

  final listTitle;
  final listNo;

  DataPackagesList(this.listTitle, this.listNo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            listTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ..._imagesList[listNo]
                    .map(
                      (item) => Container(
                        height: 180,
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/images/$item',
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 8,
                          margin: EdgeInsets.only(
                            top: 12,
                            bottom: 12,
                            right: 12,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
