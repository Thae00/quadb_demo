part of 'page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          color: ColorManager.primary,
          width: MediaQuery.sizeOf(context).width,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QadbImage(
                      "assets/images/qat_logo.png",
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 60,
                    ),
                    InkWell(
                      onTap: () {
                        context.push(const SearchDetailPage());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.search,
                          color: ColorManager.blackColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                12.height,
                Expanded(
                  child: allData.isEmpty
                      ? const Center(
                          child: Text(
                            "no Found here",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                            ),
                            maxLines: 2,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: GridView.count(
                            primary: false,
                            crossAxisCount: 3,
                            childAspectRatio: 0.62,
                            children:
                                List.generate(allData.length ?? 0, (index) {
                              return InkWell(
                                onTap: () {
                                  context.push(HomeDetailPage(
                                      scoreModel: allData[index]));
                                },
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        CachedNetworkImage(
                                          imageUrl: allData[index]
                                                  .show
                                                  .image
                                                  ?.original ??
                                              "",
                                          width: 125,
                                          height: 160,
                                          fit: BoxFit.cover,
                                          placeholder: (context, url) =>
                                              const Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          errorWidget: (context, url, error) =>
                                              const QadbImage(
                                            "assets/images/no_img.png",
                                            width: 125,
                                            height: 160,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4, vertical: 2),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: ColorManager.blackColor
                                                  .withOpacity(0.8),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: ColorManager.primary,
                                                  size: 10,
                                                ),
                                                3.width,
                                                Text(
                                                  "${allData[index].show.rating.average ?? "0"}",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color:
                                                        ColorManager.whiteColor,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    5.height,
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Text(
                                        allData[index].show.name ?? "",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: ColorManager.blackColor,
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
