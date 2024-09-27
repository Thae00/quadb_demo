part of 'page.dart';

class HomeDetailPage extends StatefulWidget {
  final ScoreModel scoreModel;
  const HomeDetailPage({Key? key, required this.scoreModel}) : super(key: key);

  @override
  State<HomeDetailPage> createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.primary,
      width: MediaQuery.sizeOf(context).width,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          AppBar(
            toolbarHeight: 45,
          backgroundColor: ColorManager.primary,
          centerTitle: true,
          title: Text(
            "Detail Page",
            style: context.getTitleLarge().copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: const Icon(Icons.arrow_back_ios, color: Colors.black,),
        ),
        5.height,
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CachedNetworkImage(
                    imageUrl: widget.scoreModel.show?.image?.original ?? "",
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.grey,
                      ),
                    ),
                    errorWidget: (context, url, error) => const QadbImage(
                      "assets/images/no_img.png",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.scoreModel.show?.name ?? "",
                              style: TextStyle(fontSize: 18, color: ColorManager.blackColor, fontWeight: FontWeight.w800),
                              maxLines: 2,
                            ),
                            widget.scoreModel.show?.rating?.average == null ? SizedBox() : Container(
                              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ColorManager.blackColor.withOpacity(0.8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: ColorManager.primary, size: 10,),
                                  3.width,
                                  Text(
                                    "Rating ${widget.scoreModel.show?.rating?.average ?? "0"}",
                                    style: TextStyle(fontSize: 10, color: ColorManager.whiteColor,),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        10.height,
                        Row(
                          children: List.generate(widget.scoreModel.show?.genres?.length ?? 0, (index) {
                            return Row(
                              children: [
                                Text(
                                  widget.scoreModel.show?.genres?[index] ?? "",
                                  style: TextStyle(fontSize: 18, color: ColorManager.blackColor.withOpacity(0.6)),
                                  maxLines: 2,
                                ),
                                Text(
                                  widget.scoreModel.show?.genres?.last == widget.scoreModel.show?.genres?[index] ? "" : ", ",
                                  style: TextStyle(fontSize: 18, color: ColorManager.blackColor.withOpacity(0.6)),
                                  maxLines: 2,
                                ),
                              ],
                            );
                          }),),
                        10.height,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.watch_later_outlined, color: Colors.grey, size: 20,),
                                3.width,
                                Text(
                                  "${widget.scoreModel.show?.runtime ?? "0"} Mins",
                                  style: const TextStyle(fontSize: 16, color: Colors.grey,),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.subtitles, color: Colors.grey, size: 20,),
                                3.width,
                                Text(
                                  "${widget.scoreModel.show?.language ?? "0"}",
                                  style: const TextStyle(fontSize: 16, color: Colors.grey,),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(Icons.workspace_premium, color: Colors.grey, size: 20,),
                                3.width,
                                Text(
                                  "${widget.scoreModel.show?.premiered ?? "0"}",
                                  style: const TextStyle(fontSize: 16, color: Colors.grey,),
                                )
                              ],
                            ),
                          ],
                        ),
                        15.height,
                        Text(
                          "Summary",
                          style: TextStyle(fontSize: 20, color: ColorManager.blackColor, fontWeight: FontWeight.w800),
                          maxLines: 2,
                        ),
                        10.height,
                        HtmlWidget(
                          widget.scoreModel.show?.summary ?? "",
                          textStyle: context
                              .getBodySmall()
                              .copyWith(fontSize: 14, color: ColorManager.blackColor.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}