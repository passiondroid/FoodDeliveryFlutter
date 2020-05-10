
class Food{

  Food(name, imagePath, hotel, price, ratings){
    this.name = name;
    this.imagePath = imagePath;
    this.hotel = hotel;
    this.price = price;
    this.ratings = ratings;
  }
  
  String name;
  String imagePath;
  String hotel;
  String price;
  String ratings;
}

class Utils {
  
  static List<Food> getFoodCategories() {
    List categories = new List<Food>();
    Food category1 = Food("Pizza", "images/pizza.svg","","","");
    Food category2 = Food("Salad", "images/salad.svg","","","");
    Food category3 = Food("Shakes", "images/shake.svg","","","");
    Food category4 = Food("Burger", "images/burger.svg","","","");
    Food category5 = Food("Biryani", "images/biryani.svg","","","");
    Food category6 = Food("Ice cream", "images/icecream.svg","","","");
    categories.add(category1);
    categories.add(category2);
    categories.add(category3);
    categories.add(category4);
    categories.add(category5);
    categories.add(category6);
    return categories;
  }

  static List<Food> getPopularFoods() {
    List categories = new List<Food>();
    Food category1 = Food("Grilled Chicken", "https://image.ibb.co/hpie5K/chicken.png","Marine Star Hotel","230","4.8 ratings");
    Food category2 = Food("Taco Salad", "https://image.ibb.co/n4JqCz/Featured_Food_2x_500x550_Taco_Salad.png","Marine Star Hotel","160","4.5 ratings");
    Food category3 = Food("Pork Schnitzel", "https://image.ibb.co/h5vsQK/pork.png","Marine Star Hotel","210","4.1 ratings");
    categories.add(category1);
    categories.add(category2);
    categories.add(category3);
    return categories;
  }


}