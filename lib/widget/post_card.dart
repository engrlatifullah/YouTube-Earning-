import 'package:flutter/material.dart';
import 'package:pdf_app/utils/colors.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
        color: AppColor.lightGreyColor,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Column(
          children: [
            const ListTile(

              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/im.jpg'),
              ),
              title: Text(
                "Chanel Name",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.blackColor,),
              ),
              subtitle: Text(
                "5 minutes ago",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,),
              ),
              trailing: Icon(Icons.more_vert,color: Colors.white,),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/im.jpg"),
                  )),
              child: Center(
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5a5c64),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}