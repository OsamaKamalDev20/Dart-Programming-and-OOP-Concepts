class LibraryItems {
  String? bookTile;
  String? authorName;
  int? isbn;
  double? price;
  int? publicationYear;

  // Constructor for the LibraryItem class
  LibraryItems(this.bookTile, this.authorName, this.isbn, this.price,
      this.publicationYear);

  // Method to display information about the item
  void displayInfo() {
    print("Book Title: $bookTile");
    print("Author Name: $authorName");
    print("Book ISBN: $isbn");
    print("Book price: $price");
    print("Book Published in: $publicationYear");
  }
}
// Derived class: Book

class Book extends LibraryItems {
  String? bookOwnerName;

  // Constructor for the Book class, calls the base class constructor
  Book(String bookTile, String authorName, int isbn, double price,
      int publicationYear, this.bookOwnerName)
      : super(bookTile, authorName, isbn, price, publicationYear);

  // Method to display book-specific information
  void displayBookInfo() {
    displayInfo();
    print("Book issue to: $bookOwnerName");
  }
}

// Derived class: Magazine
class Magazine extends LibraryItems {
  String? issueNumber;

  // Constructor for the Magazine class, calls the base class constructor
  Magazine(String bookTile, String authorName, int isbn, double price,
      int publicationYear, this.issueNumber)
      : super(bookTile, authorName, isbn, price, publicationYear);

  // Method to display magazine-specific information
  void displayMagazineInfo() {
    displayInfo();
    print("Book Issue Number is: $issueNumber");
  }
}

void main() {
  print("");
  print("-------------------- Inheritance Project --------------------");
  print("-------------- Library Management System --------------");
  print("");
  // Creating a Book object
  Book myBook1 = Book("The Pragmatic Programmer", "David Thomas",
      978 - 0135957059, 6500, 1999, "Raheel");
  Book myBook2 = Book("Introduction to Algorithms", "Clifford Stein",
      978 - 0262033848, 7800, 2009, "Daniyal");
  Book myBook3 = Book("Python Crash Course", "Eric Matthes", 978 - 1593276034,
      4200, 2015, "Shaarif Asim");
  Book myBook4 = Book("A Handbook of Agile Software", "Robert C. Martin",
      978 - 0132350884, 5000, 2008, "Osama Kamal");

  print("-------------------- Book Information Owner 1 --------------------");
  myBook1.displayBookInfo();
  print("");

  print("-------------------- Book Information Owner 2 --------------------");
  myBook2.displayBookInfo();
  print("");

  print("-------------------- Book Information Owner 3 --------------------");
  myBook3.displayBookInfo();
  print("");

  print("-------------------- Book Information Owner 4 --------------------");
  myBook4.displayBookInfo();
  print("");

  // Creating a Magazine object
  Magazine myMagazine = Magazine("Tech Monthly", "Jane Smith", 978 - 0132546423,
      2470, 2010, "Vol. 45, No. 8");
  print("");
  print(" -------------------- Magazine Information --------------------");
  myMagazine.displayMagazineInfo();
}
