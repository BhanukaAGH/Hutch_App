import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        top: 16,
        bottom: 8,
        left: 12,
        right: 12,
      ),
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Good Evening',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '94781231231',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(color: Colors.white),
                    // fixedSize: Size(120, 35),
                    minimumSize: Size(88, 35),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                  ),
                  label: const Text('94781231231'),
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  onPressed: () {},
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Balance',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '3.00',
                          style: TextStyle(
                            fontSize: 24,
                            height: 1.2,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 2),
                        Text(
                          'LKR',
                          style: TextStyle(
                            height: 2,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Theme.of(context).primaryColor,
                    primary: Colors.white,
                    minimumSize: Size(88, 35),
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  child: const Text('RECHARGE'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
