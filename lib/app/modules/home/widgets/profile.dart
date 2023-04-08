import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          //! Appbar Home
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'dho.s.a_18',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_box_outlined),
                    ),
                    const SizedBox(width: 4),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //! Profile Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                //! Profile User
                SizedBox(
                  width: 95,
                  height: 95,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.red,
                              Colors.amber,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      Container(
                        width: 87,
                        height: 87,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.shade300,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://iili.io/HOE4qxI.jpg",
                            ),
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      InfoProfile(title: 'Posts', total: '0'),
                      InfoProfile(title: 'Followers', total: '720'),
                      InfoProfile(title: 'Followings', total: '453'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          //! Username
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Bin J.D.I',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 7),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Software Developer | Bussiness Enthusiast | Art',
              style: TextStyle(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              '- Mau bikin website? klik link di bawah ini 👇🏼',
              style: TextStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              child: Row(
                children: const [
                  Icon(Icons.link_outlined),
                  SizedBox(width: 3),
                  Text('ridhosuhaebiarrowi.me'),
                ],
              ),
              onTap: () {},
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          //! Button Edit Profile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Edit Profile'),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //! Stories
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Container(
                          width: 71,
                          height: 71,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://picsum.photos/id/${index + 544}/500/500",
                              ),
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Story ${index + 1}")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.grid_on),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_pin_outlined),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemCount: 15,
            itemBuilder: (context, index) => Image.network(
             "https://picsum.photos/id/${index + 544}/500/500",
            ),
          ),
        ],
      ),
    );
  }
}

class InfoProfile extends StatelessWidget {
  const InfoProfile({
    super.key,
    required this.title,
    required this.total,
  });

  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          total,
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title)
      ],
    );
  }
}
