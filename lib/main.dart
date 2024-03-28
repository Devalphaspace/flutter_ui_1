import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'File Manager',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> recent_files = [
    {
      "name": "The Sceince of Black",
      "image": "assets/javier-miranda-nc1zsYGkLFA-unsplash.jpg",
      "size": "630KB"
    },
    {
      "name": "Unboxing Latest Tech",
      "image": "assets/pawel-czerwinski-vMODzl7Svjg-unsplash.jpg",
      "size": "350MB"
    },
    {
      "name": "Test Render C4D",
      "image": "assets/alex-shuper-jZBUNwNqH7U-unsplash.jpg",
      "size": "1.4GB"
    },
    {
      "name": "The Sceince of Black",
      "image": "assets/javier-miranda-nc1zsYGkLFA-unsplash.jpg",
      "size": "630KB"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            text: "Hello\n",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "Morsel",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      StorageTypeCard(
                          name: "Documents",
                          size: "926MB",
                          image:
                              "assets/favpng_blank-icon-document-icon-file-icon.png",
                          color: Color(0xFF219ebc)),
                      StorageTypeCard(
                          name: "Videos",
                          size: "9.3GB",
                          image: "assets/video-player.png",
                          color: Color(0xFF023047)),
                      StorageTypeCard(
                          name: "Images",
                          size: "11.4GB",
                          image: "assets/png.png",
                          color: Color(0xFFe63946)),
                      StorageTypeCard(
                          name: "Audios",
                          size: "541MB",
                          image:
                              "assets/Alecive-Flatwoken-Apps-Player-Audio.512.png",
                          color: Color(0xFF780000)),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.125,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: "30GB / 64GB\n",
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "Available Storage",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.height * 0.09,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            TweenAnimationBuilder(
                              tween: Tween<double>(begin: 0, end: 0.54),
                              duration: const Duration(milliseconds: 1500),
                              curve: Curves.easeInOut,
                              builder: (context, value, child) {
                                return SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.075,
                                  width: MediaQuery.of(context).size.height *
                                      0.075,
                                  child: CircularProgressIndicator(
                                    value: value,
                                    strokeWidth: 6,
                                    strokeCap: StrokeCap.round,
                                    color: Colors.orange.shade900,
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.height * 0.075,
                              child: CircularProgressIndicator(
                                value: 1,
                                strokeWidth: 6,
                                strokeCap: StrokeCap.round,
                                color: Colors.orange.shade900.withOpacity(0.25),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Recent Files",
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "see all",
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: recent_files.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.all(8),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          recent_files[index]["image"],
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.height * 0.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Science of Black",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "630KB",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert_rounded,
                          color: Colors.black54,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 16);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StorageTypeCard extends StatelessWidget {
  final String name;
  final String size;
  final String image;
  final Color color;
  const StorageTypeCard({
    super.key,
    required this.image,
    required this.name,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16),
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            RichText(
              text: TextSpan(
                text: "$name\n",
                style: const TextStyle(
                  height: 1.5,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: size,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -45,
              right: -45,
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(-30 / 360),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  height: 150,
                  width: 150,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
