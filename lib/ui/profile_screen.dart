import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final messageController = TextEditingController();

  final List<String> imageUrls = [
    'https://picsum.photos/id/1011/600/800',
    'https://picsum.photos/id/1025/600/400',
    'https://picsum.photos/id/1035/800/600',
    'https://picsum.photos/id/1043/700/900',
    'https://picsum.photos/id/1056/900/600',
    'https://picsum.photos/id/1062/500/700',
    'https://picsum.photos/id/1074/600/800',
    'https://picsum.photos/id/1084/600/400',
    'https://picsum.photos/id/109/800/600',
    'https://picsum.photos/id/110/700/900',
    'https://picsum.photos/id/111/900/600',
    'https://picsum.photos/id/112/500/700',
    'https://picsum.photos/id/113/600/800',
    'https://picsum.photos/id/114/600/400',
    'https://picsum.photos/id/115/800/600',
    'https://picsum.photos/id/116/700/900',
    'https://picsum.photos/id/117/900/600',
    'https://picsum.photos/id/118/500/700',
    'https://picsum.photos/id/119/700/800',
    'https://picsum.photos/id/120/800/500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, size: 24.0, color: Colors.white),
        ),
        centerTitle: true,
        title: Text("Profile", style: TextStyle(fontSize: 20.0, color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16.0),
              CircleAvatar(
                radius: 70.0,
                backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/60.jpg'),
              ),
              SizedBox(height: 24.0),
              Text(
                'AKIJ KHAN',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 12.0),
              Text(
                'Full stack software engineer',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Dhaka Bangladesh',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '450',
                          style: TextStyle(
                            color: Color(0xFFF2F2F2),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Follower',
                          style: TextStyle(
                            color: Color(0xFFF2F2F2),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '|',
                      style: TextStyle(
                        color: Color(0xFFF2F2F2),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '950',
                          style: TextStyle(
                            color: Color(0xFFF2F2F2),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            color: Color(0xFFF2F2F2),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '|',
                      style: TextStyle(
                        color: Color(0xFFF2F2F2),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '330',
                          style: TextStyle(
                            color: Color(0xFFF2F2F2),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Like',
                          style: TextStyle(
                            color: Color(0xFFF2F2F2),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(blurRadius: 1.0, offset: Offset(1.0, 1.0), color: Colors.white12),
                      ],
                    ),
                    child: Icon(Icons.people, size: 24.0, color: Colors.grey),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(blurRadius: 1.0, offset: Offset(1.0, 1.0), color: Colors.white12),
                      ],
                    ),
                    child: Icon(Icons.favorite, size: 24.0, color: Colors.grey),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(blurRadius: 1.0, offset: Offset(1.0, 1.0), color: Colors.white12),
                      ],
                    ),
                    child: Icon(Icons.visibility_off, size: 24.0, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Image Gallery',
                    style: TextStyle(
                      color: Color(0xFFF2F2F2),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  itemCount: imageUrls.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        imageUrl: imageUrls[index],
                        placeholder:
                            (context, url) => Container(
                              height: 150,
                              color: Colors.grey[900],
                              child: const Center(child: CircularProgressIndicator()),
                            ),
                        errorWidget:
                            (context, url, error) => Container(
                              height: 150,
                              color: Colors.grey[900],
                              child: const Icon(Icons.error, color: Colors.red),
                            ),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
