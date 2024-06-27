import 'package:ptc2/models/item.dart';

String path = "lib/core/data/data_source/images";
List<Item> itemsApp = [
  Item(
    id: 1,
    name: "Apple",
    price: 1.5,
    details:
        "Fresh and juicy apple Fresh and juicy apple Fresh and juicy apple Fresh and juicy apple",
    quantity: "1 kg",
    category: "Fruits",
    isDiscount: true,
    discount: 10,
    numReviews: 50,
    rate: 4.5,
    images: [
      "$path/apple.png",
    ],
  ),
  Item(
    id: 2,
    name: "Banana",
    price: 0.99,
    details: "Ripe and sweet banana",
    quantity: "1 bunch",
    category: "Fruits",
    isDiscount: false,
    discount: 0,
    numReviews: 40,
    rate: 4.2,
    images: [
      "$path/banana.png",
    ],
  ),
  Item(
    id: 3,
    name: "Orange",
    price: 2.0,
    details: "Fresh orange with tangy flavor",
    quantity: "1 kg",
    category: "Fruits",
    isDiscount: true,
    discount: 15,
    numReviews: 35,
    rate: 4.7,
    images: [
      "$path/Orange.png",
    ],
  ),
  Item(
    id: 4,
    name: "Grapes",
    price: 3.5,
    details: "Sweet and seedless grapes",
    quantity: "500 g",
    category: "Fruits",
    isDiscount: false,
    discount: 0,
    numReviews: 60,
    rate: 4.3,
    images: [
      "$path/Grapes.png",
    ],
  ),
  Item(
    id: 5,
    name: "Watermelon",
    price: 5.0,
    details: "Large and juicy watermelon",
    quantity: "1 piece",
    category: "Fruits",
    isDiscount: false,
    discount: 0,
    numReviews: 55,
    rate: 4.6,
    images: [
      "$path/Watermelon.png",
    ],
  ),
  Item(
    id: 6,
    name: "Carrot",
    price: 1.2,
    details: "Fresh and crunchy carrot",
    quantity: "1 kg",
    category: "Vegetables",
    isDiscount: false,
    discount: 0,
    numReviews: 45,
    rate: 4.4,
    images: [
      "$path/Carrot.png",
    ],
  ),
  Item(
    id: 7,
    name: "Broccoli",
    price: 2.5,
    details: "Nutritious and tender broccoli",
    quantity: "500 g",
    category: "Vegetables",
    isDiscount: true,
    discount: 20,
    numReviews: 30,
    rate: 4.8,
    images: [
      "$path/Broccoli.png",
    ],
  ),
  Item(
    id: 8,
    name: "Spinach",
    price: 1.8,
    details: "Fresh and leafy spinach",
    quantity: "1 bunch",
    category: "Vegetables",
    isDiscount: false,
    discount: 0,
    numReviews: 25,
    rate: 4.1,
    images: [
      "$path/Spinach.png",
    ],
  ),
  Item(
    id: 9,
    name: "Tomato",
    price: 1.0,
    details: "Ripe and juicy tomato",
    quantity: "1 kg",
    category: "Vegetables",
    isDiscount: true,
    discount: 10,
    numReviews: 20,
    rate: 4.0,
    images: [
      "$path/Tomato.png",
    ],
  ),
  Item(
    id: 10,
    name: "Potato",
    price: 0.75,
    details: "Versatile and nutritious potato",
    quantity: "1 kg",
    category: "Vegetables",
    isDiscount: false,
    discount: 0,
    numReviews: 35,
    rate: 4.2,
    images: [
      "$path/Potato.png",
    ],
  ),
  Item(
    id: 11,
    name: "Milk",
    price: 2.0,
    details: "Fresh and nutritious milk",
    quantity: "1 liter",
    category: "Dairy",
    isDiscount: false,
    discount: 0,
    numReviews: 50,
    rate: 4.5,
    images: [
      "$path/Milk.png",
    ],
  ),
  Item(
    id: 12,
    name: "Cheese",
    price: 3.5,
    details: "Creamy and flavorful cheese",
    quantity: "250 g",
    category: "Dairy",
    isDiscount: true,
    discount: 15,
    numReviews: 40,
    rate: 4.2,
    images: [
      "$path/Cheese.png",
    ],
  ),
  Item(
    id: 13,
    name: "Yogurt",
    price: 1.5,
    details: "Smooth and creamy yogurt",
    quantity: "500 g",
    category: "Dairy",
    isDiscount: false,
    discount: 0,
    numReviews: 55,
    rate: 4.6,
    images: [
      "$path/Yogurt.png",
    ],
  ),
  Item(
    id: 14,
    name: "Butter",
    price: 2.5,
    details: "Rich and flavorful butter",
    quantity: "200 g",
    category: "Dairy",
    isDiscount: false,
    discount: 0,
    numReviews: 45,
    rate: 4.4,
    images: [
      "$path/Butter.png",
    ],
  ),
  Item(
    id: 15,
    name: "Cream",
    price: 1.8,
    details: "Whipped and smooth cream",
    quantity: "250 ml",
    category: "Dairy",
    isDiscount: true,
    discount: 10,
    numReviews: 35,
    rate: 4.1,
    images: [
      "$path/Cream.png",
    ],
  ),
  Item(
    id: 16,
    name: "Green Tea",
    price: 5.99,
    details: "Fresh and aromatic green tea leaves",
    quantity: "100 g",
    category: "Tea",
    isDiscount: true,
    discount: 10,
    numReviews: 120,
    rate: 4.5,
    images: [
      "$path/GreenTea.png",
    ],
  ),
  Item(
    id: 17,
    name: "Chamomile Tea",
    price: 4.5,
    details: "Calming chamomile flowers for relaxation",
    quantity: "50 g",
    category: "Tea",
    isDiscount: false,
    discount: 0,
    numReviews: 90,
    rate: 4.2,
    images: [
      "$path/ChamomileTea.png",
    ],
  ),
  Item(
    id: 18,
    name: "Earl Grey Tea",
    price: 6.5,
    details: "Bold and citrusy black tea with bergamot",
    quantity: "100 g",
    category: "Tea",
    isDiscount: false,
    discount: 0,
    numReviews: 85,
    rate: 4.7,
    images: [
      "$path/EarlGreyTea.png",
    ],
  ),
  Item(
    id: 19,
    name: "Peppermint Tea",
    price: 3.99,
    details: "Refreshing and minty herbal tea",
    quantity: "50 g",
    category: "Tea",
    isDiscount: true,
    discount: 15,
    numReviews: 110,
    rate: 4.4,
    images: [
      "$path/PeppermintTea.png",
    ],
  ),
  Item(
    id: 20,
    name: "Jasmine Tea",
    price: 7.0,
    details: "Delicate and floral jasmine-infused green tea",
    quantity: "100 g",
    category: "Tea",
    isDiscount: false,
    discount: 0,
    numReviews: 100,
    rate: 4.6,
    images: [
      "$path/JasmineTea.png",
    ],
  ),
  Item(
    id: 21,
    name: "Orange Juice",
    price: 3.99,
    details: "Freshly squeezed orange juice",
    quantity: "1 liter",
    category: "Juice",
    isDiscount: false,
    discount: 0,
    numReviews: 80,
    rate: 4.3,
    images: [
      "$path/OrangeJuice.png",
    ],
  ),
  Item(
    id: 22,
    name: "Apple Juice",
    price: 4.5,
    details: "Pure apple juice with no added sugar",
    quantity: "1 liter",
    category: "Juice",
    isDiscount: true,
    discount: 10,
    numReviews: 95,
    rate: 4.6,
    images: [
      "$path/AppleJuice.png",
    ],
  ),
  Item(
    id: 23,
    name: "Grape Juice",
    price: 5.5,
    details: "Rich and fruity grape juice",
    quantity: "1 liter",
    category: "Juice",
    isDiscount: false,
    discount: 0,
    numReviews: 75,
    rate: 4.4,
    images: [
      "$path/GrapeJuice.png",
    ],
  ),
  Item(
    id: 24,
    name: "Mixed Berry Juice",
    price: 6.99,
    details: "Blend of strawberries, blueberries, and raspberries",
    quantity: "1 liter",
    category: "Juice",
    isDiscount: false,
    discount: 0,
    numReviews: 85,
    rate: 4.5,
    images: [
      "$path/MixedBerryJuice.png",
    ],
  ),
  Item(
    id: 25,
    name: "Pineapple Juice",
    price: 3.49,
    details: "Sweet and tangy pineapple juice",
    quantity: "1 liter",
    category: "Juice",
    isDiscount: true,
    discount: 15,
    numReviews: 90,
    rate: 4.2,
    images: [
      "$path/PineappleJuice.png",
    ],
  ),
  Item(
    id: 26,
    name: "Grass-fed Ribeye Steak",
    price: 19.99,
    details: "Premium grass-fed ribeye steak, tender and flavorful",
    quantity: "250g",
    category: "Meat",
    isDiscount: false,
    discount: 0,
    numReviews: 120,
    rate: 4.8,
    images: [
      "$path/GrassfedRibeyeSteak.png",
    ],
  ),
  Item(
    id: 27,
    name: "Organic Chicken Breast",
    price: 12.49,
    details: "Organic chicken breast, hormone-free and antibiotic-free",
    quantity: "500g",
    category: "Meat",
    isDiscount: true,
    discount: 15,
    numReviews: 90,
    rate: 4.5,
    images: [
      "$path/OrganicChickenBreast.png",
    ],
  ),
  Item(
    id: 28,
    name: "Australian Wagyu Beef",
    price: 39.99,
    details: "High-grade Australian Wagyu beef, marble score 8+",
    quantity: "200g",
    category: "Meat",
    isDiscount: false,
    discount: 0,
    numReviews: 150,
    rate: 4.9,
    images: [
      "$path/AustralianWagyuBeef.png",
    ],
  ),
  Item(
    id: 29,
    name: "Lamb Chops",
    price: 17.99,
    details: "Delicious lamb chops, ideal for grilling or pan-searing",
    quantity: "300g",
    category: "Meat",
    isDiscount: false,
    discount: 0,
    numReviews: 100,
    rate: 4.6,
    images: [
      "$path/LambChops.png",
    ],
  ),
];
