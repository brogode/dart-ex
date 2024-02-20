import 'package:dart_ex/dart_ex.dart' as dart_ex;
import "dart:io";
import "dart:convert";

class  Details{
  String me(){
    String firstName = 'ey';
    String lastName = 'Mano';
    DateTime currentTime = DateTime.now();

    return 'Hello, ${firstName} ${lastName}, \n${currentTime}';
  }
}

class Matrix {
  int rows;
  int columns;

  Matrix(this.rows, this.columns);

  void printMatrix() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < columns; j++) {
        stdout.write('* ');
      }
      stdout.writeln();
    }
  }
}


void main(List<String> arguments) {
 var details = Details();
 print(details.me());

  stdout.write('Enter the number of rows: ');
  int rows = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the number of columns: ');
  int columns = int.parse(stdin.readLineSync()!);

  Matrix matrix = Matrix(rows, columns);
  matrix.printMatrix();
}
