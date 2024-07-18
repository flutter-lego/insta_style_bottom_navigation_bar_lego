import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';

class NewView extends StatefulWidget {
  const NewView({super.key});

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          //textTheme.bodyLarge!.color!,
          selectedItemColor: Theme.of(context).textTheme.bodyLarge!.color!,
          unselectedItemColor:
          Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.4),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _selectedIndex,
          //현재 선택된 Index
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            //////////////////////
            BottomNavigationBarItem(
              label: 'Favorites',
              icon: Icon(
                Icons.home_filled,
                size: 27,
              ),
              activeIcon: Icon(
                Icons.home_filled,
                color: Theme.of(context).textTheme.bodyLarge!.color!,
                size: 27,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Check',
              icon: SvgPicture.asset(
                'assets/lego/insta_style_bottom_navigation_bar_lego/check-circle-svgrepo-com.svg',
              ).opacity(0.5),
              activeIcon: SvgPicture.asset(
                  'assets/lego/insta_style_bottom_navigation_bar_lego/check-circle-svgrepo-com-fill.svg'),
            ),
            BottomNavigationBarItem(
              label: 'Places',
              icon: Icon(
                Icons.person,
                size: 27,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Theme.of(context).textTheme.bodyLarge!.color!,
                size: 27,
              ),
            ),
            BottomNavigationBarItem(
              label: 'favorite',
              icon: Icon(
                Icons.favorite_border,
                size: 27,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: Theme.of(context).textTheme.bodyLarge!.color!,
                size: 27,
              ),
            ),
            BottomNavigationBarItem(
              label: 'New',
              icon: CircleAvatar(
                radius: 11,
                backgroundImage:
                AssetImage('assets/lego/insta_style_bottom_navigation_bar_lego/iu.webp'),
              ),
              activeIcon: Container(
                width: 27,
                // 전체 컨테이너의 크기
                height: 27,
                // 전체 컨테이너의 크기
                padding: EdgeInsets.all(1.5),
                // 테두리의 너비를 조정
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: SweepGradient(
                    startAngle: 0.0,
                    endAngle: 6.28319, // 2*PI 값 (360도)
                    colors: [
                      Color(0xFFF58529), // 따뜻한 오렌지
                      Color(0xFFFEDA77), // 밝은 금색
                      Color(0xFFDD2A7B), // 강렬한 핑크
                      Color(0xFFC71585), // 중간 마젠타, 보라와 핑크 사이
                      Color(0xFF8134AF), // 진한 보라색
                      Color(0xFF515BD4), // 연한 파란색
                      Color(0xFFF58529), // 따뜻한 오렌지 반복
                    ],
                    stops: [0.0, 0.17, 0.34, 0.51, 0.68, 0.85, 1.0],
                  ),
                ),
                child: CircleAvatar(
                  radius: 11, // 내부 CircleAvatar의 크기
                  backgroundColor: Colors.white, // 내부 배경색 설정 (필요에 따라 변경 가능)
                  child: CircleAvatar(
                    radius: 11, // 더 작은 CircleAvatar로 이미지를 넣을 공간 확보
                    backgroundImage: AssetImage(
                        'assets/lego/insta_style_bottom_navigation_bar_lego/iu.webp'),
                  ),
                ),
              ),
            ),
            //////////////////////
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          //////////////////////
          Container().backgroundColor(Colors.red),
          Container().backgroundColor(Colors.blue),
          Container().backgroundColor(Colors.yellow),
          Container().backgroundColor(Colors.green),
          Container().backgroundColor(Colors.pinkAccent),
          //////////////////////
        ],
      ),
      floatingActionButton: FloatingActionButtonKit(
        button1: (context) {
          _selectedIndex = (_selectedIndex + 1) % 4;
          setState(() {});
        },
      ),
    );
  }
}

main() async {
  return buildApp(home: NewView());
}
