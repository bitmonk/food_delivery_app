import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //Burgers ->
    Food(
      name: 'Classic Cheeseburger',
      description:
          'Juicy Meat Patty with melted cheese, tomato, onion and a hint of onian and mustard sauce',
      imagePath: 'lib/images/burgers/burger1.jpg',
      price: 350,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: 'Extra Cheese',
          price: 80,
        ),
        Addon(
          name: 'Fried Egg',
          price: 100,
        ),
        Addon(
          name: 'Caramalized Onions',
          price: 60,
        ),
      ],
    ),
    Food(
      name: 'Bacon Cheeseburger',
      description:
          'A cheeseburger with crispy bacon strips added, offering a smoky, savory flavor in addition to the classic cheeseburger taste.',
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 400,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: 'Barbecue Sauce',
          price: 100,
        ),
        Addon(
          name: 'Jalapenos',
          price: 110,
        ),
      ],
    ),
    Food(
      name: 'Sliders',
      description:
          'Small, bite-sized burgers usually served in multiples. They can come in various flavors, including classic beef, pulled pork, or chicken.',
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: 'Pickles',
          price: 100,
        ),
        Addon(
          name: 'Caramelized Onions',
          price: 60,
        ),
      ],
    ),
    Food(
      name: 'Chicken Cheeseburger',
      description:
          'A grilled or fried chicken breast fillet served with lettuce, tomato, and mayonnaise on a bun. It can be made spicy or mild.',
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 300,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: 'Mayonnaise',
          price: 50,
        ),
        Addon(
          name: 'Bacon',
          price: 110,
        ),
      ],
    ),
    //Desserts ->
    Food(
      name: 'Chocolate Cake',
      description:
          'A rich, moist cake flavored with cocoa or melted chocolate, often layered with chocolate frosting or ganache.',
      imagePath: "lib/images/desserts/dessert3.jpg",
      price: 180,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: 'Nuts',
          price: 60,
        ),
        Addon(
          name: 'Raspberries',
          price: 70,
        ),
      ],
    ),
    Food(
      name: 'Cheese Cake',
      description:
          'A creamy dessert made with a base of cream cheese, eggs, and sugar on a crust made of crushed cookies or graham crackers, often topped with fruit or chocolate.',
      imagePath: "lib/images/desserts/dessert.jpg",
      price: 150,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: 'Fruit Compote',
          price: 70,
        ),
        Addon(
          name: 'Caramel',
          price: 60,
        ),
        Addon(
          name: 'Whipped Cream',
          price: 100,
        ),
      ],
    ),
    Food(
      name: 'Panna Cotta',
      description:
          'An Italian dessert made from sweetened cream thickened with gelatin, often flavored with vanilla and served with a fruit sauce or coulis.',
      imagePath: "lib/images/desserts/dessert2.jpg",
      price: 300,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: 'Fruit Culis',
          price: 120,
        ),
      ],
    ),
    //Drinks ->
    Food(
      name: 'Milkshakes',
      description:
          'Creamy, cold drinks made by blending milk, ice cream, and flavorings like chocolate or fruit. They are often topped with whipped cream and served with a straw.',
      imagePath: "lib/images/drinks/ice_cream.jpg",
      price: 180,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: 'Whipped Cream',
          price: 120,
        ),
        Addon(
          name: 'Chocolate Chips',
          price: 100,
        ),
        Addon(
          name: 'Caramel Drizzle',
          price: 180,
        ),
      ],
    ),
    Food(
      name: 'Fruit Juice',
      description:
          'Drinks made by extracting the liquid from fruits and vegetables. They come in a variety of flavors like orange, apple, and carrot, and are often consumed for their vitamins and minerals.',
      imagePath: "lib/images/drinks/orange_juice.jpg",
      price: 130,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: 'Mint Leaves',
          price: 30,
        ),
        Addon(
          name: 'Chia Seeds',
          price: 50,
        ),
        Addon(
          name: 'Honey',
          price: 80,
        ),
      ],
    ),
    Food(
      name: 'Smmothie',
      description:
          'Thick, blended beverages made from fruits, vegetables, yogurt, and sometimes milk or juice. They are popular as healthy, nutrient-rich drinks.',
      imagePath: "lib/images/drinks/smoothie.jpg",
      price: 300,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: 'Protein Powder',
          price: 100,
        ),
        Addon(
          name: 'Nut Butter',
          price: 80,
        ),
        Addon(
          name: 'Coconut flakes',
          price: 60,
        ),
      ],
    ),
    //Salads ->
    Food(
      name: 'Asian Salad',
      description:
          'A salad with mixed greens, shredded cabbage, carrots, bell peppers, and often topped with crispy noodles, dressed with a sesame or soy-ginger dressing.',
      imagePath: "lib/images/salads/cabbage.jpg",
      price: 110,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(
          name: 'Avocado',
          price: 70,
        ),
        Addon(
          name: 'Mandarin Oranges',
          price: 100,
        ),
        Addon(
          name: 'Crispy Toppings',
          price: 110,
        ),
      ],
    ),
    Food(
      name: 'Fruit Salad',
      description:
          'A refreshing mix of various fruits, often dressed with a citrus or honey-lime dressing.',
      imagePath: "lib/images/salads/salad_bread.jpg",
      price: 130,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(
          name: 'Mint Leaves',
          price: 70,
        ),
        Addon(
          name: 'Yogurt',
          price: 50,
        ),
        Addon(
          name: 'Granola',
          price: 60,
        ),
      ],
    ),
    Food(
      name: 'Tomato Salad',
      description:
          'A straightforward salad made with sliced or diced tomatoes, drizzled with olive oil, and sprinkled with salt and pepper.',
      imagePath: "lib/images/salads/tomato_salad.jpg",
      price: 100,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(
          name: 'Fresh Basil',
          price: 70,
        ),
        Addon(
          name: 'Red Onion',
          price: 30,
        ),
        Addon(
          name: 'Garlic',
          price: 20,
        ),
      ],
    ),

    //Sides ->
    Food(
      name: 'Pickled Cucumbers',
      description:
          'Cucumbers pickled in a vinegar brine with spices and herbs.',
      imagePath: "lib/images/sides/cucumber.jpg",
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: 'Mustard Seeds',
          price: 40,
        ),
        Addon(
          name: 'Black Beans',
          price: 30,
        ),
      ],
    ),
    Food(
      name: 'Collard Greens',
      description:
          'Collard greens slow-cooked with smoked meat (like ham hocks) and spices.',
      imagePath: "lib/images/sides/greens.jpg",
      price: 120,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: 'Hot Sauce',
          price: 40,
        ),
        Addon(
          name: 'Vinegar',
          price: 20,
        ),
      ],
    ),
    Food(
      name: 'Grilled Mushrooms',
      description: 'Tasty Mushrooms grilled with olive oil and herbs.',
      imagePath: "lib/images/sides/shrooms.jpg",
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: 'Rosemary',
          price: 60,
        ),
        Addon(
          name: 'Lemon Zest',
          price: 30,
        ),
      ],
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

//user cart
  final List<CartItem> _cart = [];
//add items to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

//remove items from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

//get total price of the cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

//get total no. of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
