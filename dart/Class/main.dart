import 'country.dart';
import 'city.dart';

void main(){
    City item = City("Kumamoto");
    print(item.city);
    print(item.color);
    print(item.name);
    item.showProblem();
    item.callSuper();


   /* var item = new Country.language("Japan","Japanese");

    print("ประเทศ : "+ item.name);
    print("ภาษาหลัก : "+ item.showLanguage());

    item.setAnimal("นกกระเรียน");
    print("สัตว์ประจำชาติ : " + item.getAnimal());

    print("เมืองหลวง : " + Country.city);

    Country.callHello(); */
}