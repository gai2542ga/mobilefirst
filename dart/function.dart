void main(){
    callWeb("facebook",port: "443",protocol: "http");
}

String callGen(int year){
    print(year);
    var x = (year >= 1996) ? "Gen Z" : "Gen Y or Upper";
    return x;
}

int callColor([String newCoLor = "black"]){
    List<String> colors = ["red","blue","green"];
    
    colors.add(newCoLor);

    for(var item in colors){
        print(item);
    }
    return colors.length;
}

void callWeb(String web,{String protocol="http",String port ="80"}) => print("$web $protocol $port");