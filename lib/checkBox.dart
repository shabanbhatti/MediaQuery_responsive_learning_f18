import 'package:flutter/material.dart';
import 'package:radio_chechbox_f18assignment/myTextStyle.dart';

class BottomCheckBoxes extends StatefulWidget {
  const BottomCheckBoxes({super.key});

  @override
  State<BottomCheckBoxes> createState() => _BottomCheckBoxesState();
}

class _BottomCheckBoxesState extends State<BottomCheckBoxes> {
  var loadedBurger = false;
  var loadedBurgerPrice = 630;
  var addToCartNumberLoadedBurger = 1;

// -------------------------------------------------

  var italianPizza = false;
  var italianPizzaPrice = 1230;
  var addToCartNumberItalianPizza = 1;

// -------------------------------------------------

  var fajitaPizza = false;
  var fajitaPizzaPrice = 1460;
  var addToCartNumberFajitaPizza = 1;

  // -------------------------------------------------

  var beefShawarma = false;
  int beefShawarmaPrice = 750;
  var addToCartNumberBeefShawarmaPrice = 1;

  int getTotalPrice() {
    int totalPrice = 0;
    if (fajitaPizza == true) {
      totalPrice += fajitaPizzaPrice;
    }
    if (italianPizza == true) {
      totalPrice += italianPizzaPrice;
    }
    if (beefShawarma == true) {
      totalPrice += beefShawarmaPrice;
    }
    if (loadedBurger == true) {
      totalPrice += loadedBurgerPrice;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Checkbox(
                    value: italianPizza,
                    side: const BorderSide(color: Colors.white, width: 2),
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        italianPizza = value!;
                      });
                    }),
              ),
              Flexible(
                child: FittedBox(
                  child: SizedBox(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width * 0.15,
                    child: Image.asset(
                      'assets/images/italianpizza.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 50,
                      child: FittedBox(
                        child: Text(
                          'Italian Pizza',
                          style: myTextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: null),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: FittedBox(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (addToCartNumberItalianPizza > 1) {
                                        addToCartNumberItalianPizza--;
                                        italianPizzaPrice -= 630;
                                      } else {
                                        null;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                addToCartNumberItalianPizza.toString(),
                                style: myTextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: null),
                              ),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (addToCartNumberItalianPizza >= 1 &&
                                          addToCartNumberItalianPizza <= 11) {
                                        addToCartNumberItalianPizza++;
                                        italianPizzaPrice += 630;
                                      } else {
                                        null;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 50,
                                  )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                        child: Container(
                      color: Colors.transparent,
                      height: mediaQuery.height * 0.2,
                      width: mediaQuery.width * 0.15,
                      child: Flexible(
                        child: FittedBox(
                          child: Text(
                            '$italianPizzaPrice',
                            style: myTextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'RS',
                          style: myTextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------

        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Checkbox(
                    value: fajitaPizza,
                    side: const BorderSide(color: Colors.white, width: 2),
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        fajitaPizza = value!;
                      });
                    }),
              ),
              Flexible(
                child: FittedBox(
                  child: SizedBox(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width * 0.15,
                    child: Image.asset(
                      'assets/images/fajitapizza.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 50,
                      child: FittedBox(
                        child: Text(
                          'Fajita Pizza',
                          style: myTextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: null),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: FittedBox(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (addToCartNumberFajitaPizza > 1) {
                                        addToCartNumberFajitaPizza--;
                                        fajitaPizzaPrice -= 630;
                                      } else {
                                        null;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                addToCartNumberFajitaPizza.toString(),
                                style: myTextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: null),
                              ),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (addToCartNumberFajitaPizza >= 1 &&
                                          addToCartNumberFajitaPizza <= 11) {
                                        addToCartNumberFajitaPizza++;
                                        fajitaPizzaPrice += 630;
                                      } else {
                                        null;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 50,
                                  )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                        child: Container(
                      color: Colors.transparent,
                      height: mediaQuery.height * 0.2,
                      width: mediaQuery.width * 0.15,
                      child: Flexible(
                        child: FittedBox(
                          child: Text(
                            '$fajitaPizzaPrice',
                            style: myTextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'RS',
                          style: myTextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        // -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------

        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Checkbox(
                    value: loadedBurger,
                    side: const BorderSide(color: Colors.white, width: 2),
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        loadedBurger = value!;
                      });
                    }),
              ),
              Flexible(
                child: FittedBox(
                  child: SizedBox(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width * 0.15,
                    child: Image.asset(
                      'assets/images/loadedburger.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 50,
                      child: FittedBox(
                        child: Text(
                          'Loaded Burger',
                          style: myTextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: null),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: FittedBox(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (addToCartNumberLoadedBurger > 1) {
                                        addToCartNumberLoadedBurger--;
                                        loadedBurgerPrice -= 630;
                                      } else {
                                        null;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                addToCartNumberLoadedBurger.toString(),
                                style: myTextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: null),
                              ),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (addToCartNumberLoadedBurger >= 1 &&
                                          addToCartNumberLoadedBurger <= 11) {
                                        addToCartNumberLoadedBurger++;
                                        loadedBurgerPrice += 630;
                                      } else {
                                        null;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 50,
                                  )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                        child: Container(
                      color: Colors.transparent,
                      height: mediaQuery.height * 0.2,
                      width: mediaQuery.width * 0.15,
                      child: Flexible(
                        child: FittedBox(
                          child: Text(
                            '$loadedBurgerPrice',
                            style: myTextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'RS',
                          style: myTextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        // -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------

        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: Checkbox(
                  
                    value: beefShawarma,
                    side: const BorderSide(color: Colors.white, width: 2),
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        beefShawarma = value!;
                      });
                    }),
              ),
              Flexible(
                child: FittedBox(
                  child: SizedBox(
                    height: mediaQuery.height * 0.07,
                    width: mediaQuery.width * 0.15,
                    child: Image.asset(
                      'assets/images/beefshawarma.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'Beef Shawarma',
                          style: myTextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: null),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: FittedBox(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (addToCartNumberBeefShawarmaPrice >
                                          1) {
                                        addToCartNumberBeefShawarmaPrice--;
                                        beefShawarmaPrice -= 630;
                                      } else {
                                        null;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                addToCartNumberBeefShawarmaPrice.toString(),
                                style: myTextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: null),
                              ),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (addToCartNumberBeefShawarmaPrice >=
                                              1 &&
                                          addToCartNumberBeefShawarmaPrice <=
                                              11) {
                                        addToCartNumberBeefShawarmaPrice++;
                                        beefShawarmaPrice += 630;
                                      } else {
                                        null;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 50,
                                  )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                        child: Container(
                      color: Colors.transparent,
                      height: mediaQuery.height * 0.2,
                      width: mediaQuery.width * 0.15,
                      child: Flexible(
                        child: FittedBox(
                          child: Text(
                            '$beefShawarmaPrice',
                            style: myTextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'RS',
                          style: myTextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        // -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------

        Flexible(
          child: Container(
              height: mediaQuery.height * 0.035,
              width: mediaQuery.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: FittedBox(
                      child: Text(
                        'Total : ',
                        style: myTextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Flexible(
                    child: FittedBox(
                      child: Text(
                        getTotalPrice().toString(),
                        style: myTextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: null),
                      ),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
