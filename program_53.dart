void main() {
  print("-------------------- Library Management System --------------------");

  Book book1 =
      Book("Agile Software Craftsmanship", "Robert Martin", 978884, true);
  Book book2 = Book("The Pragmatic Programmer", "David Thomas", 978059, true);
  Book book3 = Book("Introduction to Algorithms", "H. Cormen", 978848, true);
  Book book4 = Book("JavaScript", "Douglas Crockford", 978748, true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);
  library.addBook(book4);
  library.listBook();

  Member member = Member("Osama Kamal", '3048');

  library.loanBooks(book1, member);

  library.listLoanBook();
}

class Book {
  String? bookTitle;
  String? authorName;
  int? isbn;
  bool isAvailable;

  Book(this.bookTitle, this.authorName, this.isbn, this.isAvailable);
}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  void loanBooks(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now(), DateTime.now()));
    } else {
      print('${book.bookTitle} is not available in Library');
    }
  }

  void addBook(Book book) {
    books.add(book);
  }

  void listBook() {
    print(
        "-------------------- Books Available in Library --------------------");
    for (var book in books) {
      print(
          'Book Title: ${book.bookTitle}, Book Author Name: ${book.authorName}, Book ISBN: ${book.isbn}, Book Availability: ${book.isAvailable}');
    }
  }

  void listLoanBook() {
    print(
        "-------------------- Books Loan by Member in Library --------------------");
    for (var loan in loans) {
      print(
          'Book Title: ${loan.book!.bookTitle}, Book Author Name: ${loan.book!.authorName}, Book ISBN: ${loan.book!.isbn}, Book Availability: ${loan.book!.isAvailable}');
    }
  }
}

class Member {
  String? name;
  String? memberID;

  Member(this.name, this.memberID);
}

class Loan {
  Book? book;
  Member? member;
  DateTime? loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, this.returnDate);

  void returnBook() {
    returnDate = DateTime.now();
    book!.isAvailable = true;
  }
}
