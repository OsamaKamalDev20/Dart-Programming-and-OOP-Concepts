// Enum to represent the status of a task
enum TaskStatus { Pending, InProgress, Completed, OnHold, InComplete }

// Class to represent a task in the task management system
class Task {
  String? title;
  String? description;
  TaskStatus? status;

  // Constructor to initialize task properties
  Task(this.title, this.description, this.status);

  // Method to display the details of a task
  void displayInfo() {
    print("Task Title: $title");
    print("Description: $description");
    print("Task Status: ${getStatusString()}");
    print("");
  }

  // Method to update the status of a task
  void updateStatus(TaskStatus newStatus) {
    status = newStatus;
    print(
        "The status of the title: $title has been updated to: ${getStatusString()} ");
  }

  // Helper method to convert the status enum to a readable string
  String getStatusString() {
    switch (status) {
      case TaskStatus.Pending:
        return "Pending";
      case TaskStatus.InProgress:
        return "In Progress";
      case TaskStatus.Completed:
        return "Completed";
      case TaskStatus.OnHold:
        return "On Hold";
      case TaskStatus.InComplete:
        return "In Complete";
      default:
        return "Unknown Status";
    }
  }
}

void main() {
  print("");
  print("-------------------- Enum Project --------------------");
  print("");
  print("------------------- Task Management System -------------------");

  // Creating tasks with different statuses
  Task task1 = Task("Develop Login Module",
      "Create and test the login module for the app", TaskStatus.Pending);
  Task task2 = Task("Design Dashboard", "Design the user dashboard interface",
      TaskStatus.InProgress);
  Task task3 = Task("Test Payment Integration",
      "Verify the payment gateway functionality", TaskStatus.Completed);
  Task task4 = Task(
      "Bio Metric Registration",
      "Do Bio Metric Registration to get Death Certificate",
      TaskStatus.InComplete);
  Task task5 = Task(
      "Collect Token Number",
      "Collect Token Number in order to make Smart CINIC Card",
      TaskStatus.OnHold);

  // Displaying task details
  print("");
  print("-------------------- Tasks Details --------------------");
  print("");
  task1.displayInfo();
  task2.displayInfo();
  task3.displayInfo();
  task4.displayInfo();
  task5.displayInfo();

  // Updating the status of a task
  print("");
  print("-------------------- Updating Tasks Status --------------------");
  print("");
  task1.updateStatus(TaskStatus.Completed);
  task1.displayInfo();
  print("");
  task2.updateStatus(TaskStatus.OnHold);
  task2.displayInfo();
}
