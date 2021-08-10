import 'country.dart';
import 'problem.dart';
class City extends Country with Problem {
    var city;

    City(this.city): super ("Japan","Japanese");

    void callSuper(){
    super.showPeople();
}

}