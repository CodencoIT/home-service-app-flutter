import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  const Service({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff009FD9),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Expanded(
              flex: 1,
              child: Container(
                height: 70.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Row(
                  children: [
                    const SizedBox(width: 10.0),
                    const Text(
                      "Search for a service",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 10.0),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              flex: 10,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 8, // Change this to the number of items you have
                itemBuilder: (context, index) {
                  return imgContainer(img: (1).toString());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class imgContainer extends StatelessWidget {
  final String img;
  const imgContainer({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Container(
            height: 110.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              image: DecorationImage(
                image: AssetImage("assets/$img.jpeg"),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),

          // Text
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Appliance Repair or maintenance",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Icon with text
          const Row(
            children: [
              Icon(
                Icons.location_on_sharp,
                color: Colors.blue,
                size: 15.0,
              ),
              SizedBox(width: 5.0),
              Text(
                "See proe near you",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
