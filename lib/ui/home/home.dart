import 'package:flutter/material.dart';
import 'package:foods_app_1/model/food_model.dart';
import 'package:foods_app_1/ui/details/details.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<FoodModel> foodList = [
    FoodModel(
      name: 'Bakery and Bread',
      image: 'https://media.istockphoto.com/photos/wicker-basket-with-assorted-baking-products-isolated-on-white-picture-id517275318?k=20&m=517275318&s=612x612&w=0&h=_YWEKAiFvKiHFj_YNqWcG1WIq9cR3GT-Xug5pl2kZR0=',
    ),
    FoodModel(
      name: 'Meat and Seafood',
      image: 'https://www.jbtc.com/foodtech/wp-content/uploads/sites/2/2021/08/Beef-Poultry-Fish.jpeg',
    ),
    FoodModel(
      name: 'Cereals and Breakfast ',
      image: 'https://i.ndtvimg.com/i/2017-01/cereal-620_620x350_51484204965.jpg?im=FaceCrop,algorithm=dnn,width=384,height=384',
    ),
    FoodModel(
      name: 'Bakery and Bread',
      image: 'https://media.istockphoto.com/photos/wicker-basket-with-assorted-baking-products-isolated-on-white-picture-id517275318?k=20&m=517275318&s=612x612&w=0&h=_YWEKAiFvKiHFj_YNqWcG1WIq9cR3GT-Xug5pl2kZR0=',
    ),
  ];
  List<String> foodCategory = ['Asian', 'Italian', 'American', 'Australian', 'Chaines'];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(
                  size.width * .05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/menu.png',
                      width: size.width * .08,
                    ),
                    CircleAvatar(
                      radius: 22,
                      child: ClipOval(
                        child: Image.network(
                          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                child: Text(
                  'Food\nDelivery',
                  style: TextStyle(
                    fontSize: size.width * .05,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            )),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search Here',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .05,
                    ),
                    Container(
                        padding: EdgeInsets.all(
                          size.width * .025,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            )),
                        child: Icon(
                          Icons.search,
                          size: 30.0,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                height: size.height * .06,
                margin: EdgeInsets.only(
                  left: size.width * .05,
                ),
                child: ListView.builder(
                  itemCount: foodCategory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          right: size.width * .05,
                          top: size.width * .02,
                          bottom: size.width * .02,
                        ),
                        padding: EdgeInsets.only(
                          left: size.width * .02,
                          right: size.width * .02,
                        ),
                        decoration: BoxDecoration(
                            color: currentIndex == index ? Colors.orange[200] : Colors.white,
                            borderRadius: BorderRadius.circular(
                              10.0,
                            )),
                        child: Center(
                            child: Text(
                          foodCategory[index],
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                child: Text(
                  'Food of the day',
                  style: TextStyle(
                    fontSize: size.width * .05,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Details()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height * .2,
                    width: size.width * .9,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: size.width * .05,
                            left: size.width * .05,
                            right: size.width * .05,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.orange[400],
                              borderRadius: BorderRadius.circular(
                                10,
                              )),
                        ),
                        Positioned(
                          top: 0,
                          left: size.width * .15,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(120.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: CircleAvatar(
                              radius: 72,
                              backgroundColor: Colors.white,
                              child: ClipOval(
                                child: Image.network(
                                  "https://img.freepik.com/free-photo/schezwan-szechwan-hakka-noodles-with-paneer-cottage-cheese-served-bowl-selective-focus_466689-74685.jpg?w=360&t=st=1660901993~exp=1660902593~hmac=51625ef3e10a0815c802f983598ec8cb5006aa716ba3bda7b4391d29be890023",
                                  fit: BoxFit.cover,
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: size.height * .05,
                          right: size.width * .08,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: size.height * .02,
                                ),
                                Text(
                                  String.fromCharCodes(new Runes('\u0024')) + '225',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                                Text(
                                  'Noodles',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                child: Text(
                  'Our Menu',
                  style: TextStyle(
                    fontSize: size.width * .05,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              ListView.builder(
                itemCount: foodList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Details()),
                      );
                    },
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.all(
                          size.width * .01,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: size.width * .8,
                              height: size.height * .08,
                              margin: EdgeInsets.only(
                                top: size.width * .05,
                                left: size.width * .05,
                                right: size.width * .05,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  )),
                            ),
                            Positioned(
                              top: 0,
                              left: size.width * .1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(120.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 35,
                                  child: ClipOval(
                                    child: Image.network(
                                      foodList[index].image,
                                      fit: BoxFit.cover,
                                      width: 150,
                                      height: 150,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: size.width * .32,
                              top: size.height * .04,
                              right: size.width * .06,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        foodList[index].name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '12 food menu',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      )
                                    ],
                                  ),
                                  Icon(Icons.arrow_circle_right_outlined),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
