
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';
  int _selectedIndex =0 ;
  void _onItemTapped(int index){
    _selectedIndex =index ;
  }

  void onImageTap(String emotion) {
    // Handle image tap
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/logo.png', width: 150, height: 130),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notification_add_outlined),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        'Sara Rose',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'How are you feeling today?',
                      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => onImageTap('love'),
                        child: Image.asset('assets/images/Frame 14.png', width: 60, height: 88),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () => onImageTap('cool'),
                        child: Image.asset('assets/images/Frame 19.png', width: 60, height: 88),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () => onImageTap('happy'),
                        child: Image.asset('assets/images/Frame 15.png', width: 60, height: 88),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () => onImageTap('sad'),
                        child: Image.asset('assets/images/Frame 16.png', width: 60, height: 88),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Text(
                        'Feature',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        'See more >',
                        style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 186,
                    color: Color(0xffECFDF3),
                    padding: EdgeInsets.all(16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildFeatureCard(),
                        SizedBox(width: 20),
                        _buildFeatureCard(),
                        SizedBox(width: 20),
                        _buildFeatureCard(),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Exercise',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        'See more >',
                        style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    height: 58,
                    color: Color(0xffF9F5FF),
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Frame.png1', width: 24, height: 24),
                            SizedBox(width: 10),
                            Text('Relaxation', style: TextStyle(fontWeight: FontWeight.w400)),
                          ],
                        ),
                       SizedBox(width: 10,),
                        Row(
                          children: [
                            Image.asset('assets/images/Frame.png2', width: 24, height: 24),
                            SizedBox(width: 10),
                            Text('Meditation', style: TextStyle(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 58,
                    color: Color(0xffF9F5FF),
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Frame.png3', width: 24, height: 24),
                            SizedBox(width: 10),
                            Text('Breathing', style: TextStyle(fontWeight: FontWeight.w400)),
                          ],
                        ),
                       SizedBox(width: 10,),
                        Row(
                          children: [
                            Image.asset('assets/images/Frame.png4', width: 24, height: 24),
                            SizedBox(width: 10),
                            Text('Yoga', style: TextStyle(fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: ' ',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined),
            label: ' ',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.padding_outlined),
            label: ' ',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),
            label: ' ',
    ),
    ],
       // showSelectedLabels: true,
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xff027A48),
        onTap: _onItemTapped,
          ),
    );

  }

  Widget _buildFeatureCard() {
    return Container(
      width: 326,
      height: 186,
      color: Color(0xffECFDF3),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Positive vibes',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              Text(
                'Boost your mood with ',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'positive vibes',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 12,
                    child: Icon(Icons.play_arrow_sharp, color: Colors.white),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '10 mins',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Image.asset('assets/images/img.png', height: 102, width: 98),
        ],
      ),
    );
  }
}














