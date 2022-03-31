import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> categoryfilters = [
    "All",
    "Popular",
    "Near by",
    "Tours",
  ];
  final List<List<String>> placestovisit = [
    [
      "https://immobilier-en-thailande.com/wp-content/uploads/2019/06/phuket-island.jpg",
      "Long Tail Ailey",
      "4.9",
      "Phuket, Thailand",
    ],
    [
      "https://kupernic.com/wp-content/uploads/2015/02/PhiPhiIsland.jpg",
      "Phi Phi Islands",
      "4.3",
      "Phuket, Thailand",
    ],
    [
      "https://immobilier-en-thailande.com/wp-content/uploads/2019/06/phuket-island.jpg",
      "Long Tail Ailey",
      "4.9",
      "Phuket, Thailand",
    ],
    [
      "https://kupernic.com/wp-content/uploads/2015/02/PhiPhiIsland.jpg",
      "Phi Phi Islands",
      "4.3",
      "Phuket, Thailand",
    ],
    [
      "https://immobilier-en-thailande.com/wp-content/uploads/2019/06/phuket-island.jpg",
      "Long Tail Ailey",
      "4.9",
      "Phuket, Thailand",
    ],
    [
      "https://kupernic.com/wp-content/uploads/2015/02/PhiPhiIsland.jpg",
      "Phi Phi Islands",
      "4.3",
      "Phuket, Thailand",
    ],
  ];

  int categoryfilterselected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: const Color(0xfff6f6f6),
          child: Column(
            children: [
              _profilePictureAndName(),
              _countryTitleAndExp(),
              _categoryFilters(),
              _listPlacesToVisit(),
              _topPlaces(context)
            ],
          ),
        ),
      ),
    );
  }

  Padding _topPlaces(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Top Places",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: SizedBox(
                                  height: 125,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child:
                                        Image.network(placestovisit[index][0]),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          placestovisit[index][1],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            Text(
                                              placestovisit[index][2],
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.location_pin,
                                          color: Colors.orange,
                                          size: 20,
                                        ),
                                        Text(
                                          placestovisit[index][3],
                                          style: const TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                  itemCount: placestovisit.length),
            ),
          )
        ],
      ),
    );
  }

  Padding _listPlacesToVisit() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 175,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(placestovisit[index][0]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                placestovisit[index][1],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    placestovisit[index][2],
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Text(
                                placestovisit[index][3],
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
            itemCount: placestovisit.length),
      ),
    );
  }

  Padding _categoryFilters() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: categoryfilters.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    categoryfilterselected = index;
                  });
                },
                child: OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    backgroundColor: categoryfilterselected == index
                        ? MaterialStateProperty.all(Colors.orange)
                        : MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(
                    categoryfilters[index],
                    style: TextStyle(
                        color: categoryfilterselected == index
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _countryTitleAndExp() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Georgous Thailand",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Let's have an unforgotten experience",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding _profilePictureAndName() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                  "https://vetref.fr/wp-content/uploads/2021/02/blank-profile-picture-973460_640.png"),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Hello, Michael!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "Where are you going today?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
