//void main() => runApp(MainScreen());
//
//class MainScreen extends StatefulWidget {
//  static const nav = 'main_screen';
//  MainScreen({Key key}) : super (key:key);
//
//
//  @override
//  _MainScreenState createState() => _MainScreenState();
//}
//
//class _MainScreenState extends State<MainScreen> {
//
//  Future<Movie> futureMovie;
//
//  @override
//  void initState()  {
//    super.initState();
//    futureMovie = fetchMovie();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Fetch Data Example',
//      theme: ThemeData(
//        primarySwatch: Colors.pink,
//      ),
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Fetch Data Example'),
//        ),
//        body: Center(
//          child: FutureBuilder<Movie>(
//            future: futureMovie,
//            builder: (context, snapshot) {
//              if (snapshot.hasData) {
//                Movie test1 = snapshot.data;
//                print("Esto es lo que viene  ${test1.fullTitle}");
//              } else if (snapshot.hasError) {
//                return Text("${snapshot.error}");
//              }
//
//              // By default, show a loading spinner.
//              return CircularProgressIndicator();
//            },
//          ),
//        ),
//      ),
//    );
//  }
//}