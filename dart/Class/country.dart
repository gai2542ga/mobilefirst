class Country{
    //property
    var name;
    var language;
    var _animal;
    var color = "แดงขาว";

    static var city = "Tokyo";
    //constuctor
    Country(this.name,this.language);
    
    //constuctor name
    Country.language(String Name,String Language): this(Name,Language);

    //Method
    String showLanguage(){
        return this.language;
    }
    void showPeople(){
        print("ประชากร : 126.3 ล้าน");
    }

    //setter
    void setAnimal(String animal){
        this._animal = animal;
    }
    //getter
    String getAnimal(){
       return this._animal;
    }
    static void callHello() => print("Ohayo");
}