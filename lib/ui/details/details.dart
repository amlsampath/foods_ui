import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int _orderCount = 2;
  List<String> ingredientList = [
    'https://bitesofwellness.com/wp-content/uploads/2019/07/10-Minute-Skillet-Italian-Chicken-social1.jpg',
    'https://spicecravings.com/wp-content/uploads/2021/05/Garlic-Paste-2-500x500.jpg',
    'https://cdn.loveandlemons.com/wp-content/uploads/2021/03/julienne-carrots.jpg',
    'https://www.simplyrecipes.com/thmb/BGEFNQWiy7oHEuSKbaGISKAR9CQ=/2000x1333/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2013__03__how-to-clean-leeks-horiz-a-2000-2e37ce2bff8c4a35939af490ffbba396.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
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
                  Icon(Icons.arrow_back_ios_new),
                  Container(
                    padding: EdgeInsets.all(
                      6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.favorite_border),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width * .05,
                right: size.width * .05,
              ),
              child: Text(
                'Product',
                style: TextStyle(
                  fontSize: size.width * .05,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height: size.height * .4,
                width: size.width,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: size.width * .2, left: 0,
                        // left: size.width * .05,
                        // right: size.width * .05,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.orange[400],
                          borderRadius: BorderRadius.circular(
                            30,
                          )),
                    ),
                    Positioned(
                      top: 0,
                      left: size.width * .22,
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
                          radius: 100,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.network(
                              "https://img.freepik.com/free-photo/schezwan-szechwan-hakka-noodles-with-paneer-cottage-cheese-served-bowl-selective-focus_466689-74685.jpg?w=360&t=st=1660901993~exp=1660902593~hmac=51625ef3e10a0815c802f983598ec8cb5006aa716ba3bda7b4391d29be890023",
                              fit: BoxFit.cover,
                              width: 200,
                              height: 200,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: size.width * .05,
                      right: 0,
                      left: 0,
                      child: Container(
                          margin: EdgeInsets.all(
                            size.width * .05,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    String.fromCharCodes(new Runes('\u0024')) + '125',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
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
                              Column(
                                children: [
                                  RatingBar.builder(
                                    initialRating: 3,
                                    itemSize: 12,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  SizedBox(
                                    height: size.height * .01,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _orderCount--;
                                          });
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(2),
                                          decoration: BoxDecoration(color: Colors.white30),
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(color: Colors.white30),
                                        child: Text(
                                          _orderCount.toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _orderCount++;
                                          });
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(2),
                                          decoration: BoxDecoration(color: Colors.white30),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Container(
                margin: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ingredients',
                      style: TextStyle(
                        fontSize: size.width * .05,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                    ),
                  ],
                )),
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              height: size.height * .1,
              margin: EdgeInsets.only(
                left: size.width * .04,
              ),
              child: ListView.builder(
                itemCount: ingredientList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
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
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                            10.0,
                          )),
                      child: Center(
                          child: Image.network(
                        ingredientList[index],
                        width: size.width * .15,
                        fit: BoxFit.cover,
                      )),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: size.height * .1,
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: size.height * .065,
            width: size.width * .8,
            padding: EdgeInsets.all(
              size.width * .03,
            ),
            margin: EdgeInsets.all(
              size.width * .05,
            ),
            decoration: BoxDecoration(
                color: Colors.orange[400],
                borderRadius: BorderRadius.circular(
                  10.0,
                )),
            child: Center(
              child: Text(
                'Add To Bucket',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
