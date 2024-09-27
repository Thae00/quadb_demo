part of 'page.dart';

class SplashPage extends StatefulWidget {
  final bool isAuth;

  const SplashPage({Key? key, required this.isAuth}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _isAuthenticated();
    FlutterNativeSplash.remove();
    super.initState();
  }

  _isAuthenticated() {
    Timer(
        const Duration(seconds: 2),
        () => {
          if(mounted){
            context.pushReplacement(const HomePage()),
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: QadbImage(
            "assets/images/qat_logo.png",
            width: MediaQuery.of(context).size.width / 1.2,
            height: 200,
          ),
        ),
      ),
    );
  }
}