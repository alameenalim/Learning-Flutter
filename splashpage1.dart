import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
///stateless splash page
void main() {
  /// we can add whole theme here
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      /// make anonymous fn to lambda function
      useInheritedMediaQuery: true,
      home: Splash(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  ///constructor
  ///passing value from one page to other
  ///for creating constant variable and adding to multiple screen

  ///widget class by default function build
  ///which has return value widget
  ///build context parameter
  ///we are creating a widget tree
  ///which can contain many other widget
  ///to position and monitor the change through build context parameter
  ///through the OBJECT context of build context class
  @override
  Widget build(BuildContext context) {
    //placeholder screen with cross
    ///scaffold the entire screen
    return Scaffold(
      //select entirely
      body: Container(
        ///gradient colors for whole body
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.yellow, Colors.black],
            begin: Alignment.centerLeft,
            end: Alignment.topCenter,
            // stops: [0.0,0.5,1]
            ///stops can be given instead of begin & end
          ),
        ),
        // color: Colors.amberAccent,///single color for all body
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/bgcam.jpg"),
        //         // image: NetworkImage(
        //         //     "https://wallpapers.com/images/featured/camera-95u5meqmzcsp76z9.webp"),
        //         fit: BoxFit.fill),
        // ),
        //here it is an image provider
        //ie, NetworkImage or AssetImage
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///can choose any widget in children
              // Icon(
              //   Icons.add_a_photo_outlined,
              //   size: 70,
              //   color: Colors.lightGreen,
              // ),
              // Image.asset("assets/icons/cam.png",height: 100,width: 100,),
              //named constructor image class
              Image.network(
                //here we call as widget
                // ie, image.asset or image.network
                "https://cdn0.iconfinder.com/data/icons/ui-essence/32/_13ui-512.png",
                height: 100,
                width: 100,
              ),
              const Text("cam",
                  style: TextStyle(
                      fontFamily: "ClimateCrisis",
                      color: Colors.brown,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              // style: GoogleFonts.aBeeZee(
              //     textStyle: Theme.of(context).textTheme.headline4,
              //     fontSize: 48,
              //     fontWeight: FontWeight.w700),
              // style: TextStyle(
              //     color: Colors.brown,
              //     fontSize: 30,
              //     fontWeight: FontWeight.bold),
              //)
            ],
          ),
        ),
      ),

      ///here center is single child  widget ie, it can have only single parameter
      ///ie, one child only
      // body: Center(
      //   child: Column(),
      // ),
    );
  }
}
