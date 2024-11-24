import 'package:flutter/material.dart';

class ViewServicesPage extends StatelessWidget {
  const ViewServicesPage({super.key});

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
                "View Services", // Dynamic title based on the current tab
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 16.0), // Padding on the right for the icon
              child: Image.asset(
                'lib/assets/notification-bell.png',
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),

        bottom: const PreferredSize(
          //divider
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Color.fromRGBO(233, 233, 233, 1),
            thickness: 1,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: ListView.builder(
          itemCount: 5, // Example: 5 services (replace with dynamic count if needed)
          itemBuilder: (context, index) {
            return _buildServiceCard();
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

  Widget _buildServiceCard() {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mr.Ariyawansha',
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(67, 67, 67, 1)
              ),
            ),
            Text(
              'Minuangoda',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(126, 126, 126, 1)
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Description: lorenm Professional air conditioning repair and maintenance services lorenm Professional air conditioning .',
              style: const TextStyle(fontSize: 14, color: Color.fromRGBO(188, 188, 188, 1)),
            ),
            const SizedBox(height: 30),



            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
                    children: [
                      Text(
                        'Air Conditioning',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(94, 105, 207, 1),
                        ),
                      ),
                      const SizedBox(height: 8), // Optional spacing between texts
                      Text(
                        '3000 LKR+',
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),



                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(70, 40),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromRGBO(225, 225, 225, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () /*async*/ {
                        // Here, you can add your button logic
                        print('Service removed');
                        /*Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomePage()),
                );*/
                      },
                      child: const Text(
                        'Remove',
                        style: TextStyle(
                          color: Color.fromRGBO(89, 89, 89, 1), // Set the text color to white
                          fontWeight: FontWeight.normal, // Optional: make text bold
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
