part of 'page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List allData = [];
  Future<void> getMovie() async {
    try {
      final response = await Dio().get(
        "${UrlMethodUtils.shows}all",
      );
      print("response.statusCode ${response.statusCode}");
      if (response.statusCode == 200) {
        setState(() {
          var totalMemberList = (response.data)
              .map((sponsor) => ScoreModel.fromJson(sponsor))
              .toList();
          print("ddo $totalMemberList");
          allData = totalMemberList;
          print("allData $allData");
        });
      } else {
        print("failll");
      }
    } catch (e) {
      final response = await Dio().get(
        "${UrlMethodUtils.shows}all",
      );
      print("response ${response.data}");
      setState(() {
        var totalMemberList = (response.data)
            .map((sponsor) => ScoreModel.fromJson(sponsor))
            .toList();
        print("ddo $totalMemberList");
        allData = totalMemberList;
        print("allData $allData");
      });
    }
  }

  @override
  void initState() {
    getMovie();
    super.initState();
  }

  int currentIndex = 0;

  final bodies = [
    const DashboardPage(),
    const SearchDetailPage(showBack: false,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodies[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 14,
        selectedFontSize: 15,
        selectedItemColor: ColorManager.blackColor,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: ColorManager.primary,
              ),
              icon: const Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search,
                color: ColorManager.primary,
              ),
              icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
