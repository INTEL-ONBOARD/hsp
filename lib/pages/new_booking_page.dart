import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120, // Set a custom height for the AppBar
        automaticallyImplyLeading: true, // back button visibility
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: const EdgeInsets.only(
                  left: 16.0), // Padding on the left for the text
              child: Text(
                "Manage Orders", // Dynamic title based on the current tab
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 16.0), // Padding on the right for the icon
              child: Image.asset('lib/assets/notification-bell.png', width: 24, height: 24,
              ),
            ),
          ],
        ),

        bottom: const PreferredSize(
          //divider
          preferredSize: Size.fromHeight(1.0),
          child: Divider(color: Color.fromRGBO(233, 233, 233, 1), thickness: 1,),
        ),
      ),


      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView.builder(
          itemCount: 5, // Example: 5 orders (replace with dynamic count if needed)
          itemBuilder: (context, index) {
            return _buildOrderCard();
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Change index dynamically if needed
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/dashboard');
              break;
            case 1:
              Navigator.pushNamed(context, '/booking');
              break;
            case 2:
              Navigator.pushNamed(context, '/settings');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _buildOrderCard() {
    return Card(
      elevation: 0.0,
      color: Color.fromRGBO(249, 249, 249, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          color: Color.fromRGBO(242, 242, 242, 1),
          width: 1,
        ),
      ),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        //First row
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order ID: #345324',
              style: const TextStyle(
                color: Color.fromRGBO(138, 138, 138, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Air Conditioning',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(94, 105, 207, 1),
              ),
            ),
            const SizedBox(height: 22),
            // Second Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Left Column
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'Order Date',
                        style: const TextStyle(
                          color: Color.fromRGBO(138, 138, 138, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      Text(
                        '2024-11-12',
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),

                // Right Column
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end, // Aligns text to the right
                      mainAxisSize: MainAxisSize.min, // Adjusts the column height to its content
                      children: [
                        Text(
                          'Done: ',
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(43, 171, 79, 1),
                          ),
                        ),
                        Text(
                          'Rs.4870.00',
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            ),

            //divider
            PreferredSize(
              //divider
              preferredSize: Size.fromHeight(1.0),
              child: Divider(
                color: Color.fromRGBO(221, 221, 221, 1),
                thickness: 1,
              ),
            ),

            // Third Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                    children: [

                      Text(
                        'Mr.Ariyawansha',
                        style: TextStyle(
                          color: Color.fromRGBO(97, 97, 97, 1),
                          fontSize: 23,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'Minuangoda',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the',
                        style: TextStyle(
                          color: Color.fromRGBO(156, 156, 156, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),



                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topRight, // Aligns the Row to the right
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center, // Aligns text vertically
                      mainAxisSize: MainAxisSize.min, // Ensures the Row takes only the necessary space
                      /*
                      children: [
                        Text('for'),
                        const SizedBox(width: 4), // Optional spacing between texts
                        Text(
                          '2024-12-24',
                          style: const TextStyle(
                            color: Color.fromRGBO(94, 105, 207, 1),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],*/

                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16), // Spacing between rows

          ],
        ),





      ),
    );
  }
}
