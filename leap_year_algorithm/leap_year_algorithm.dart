void main(List<String> arguments) {
isLeapYear(year: 2012); //うるう年
isLeapYear(year: 2300); //うるう年でない
isLeapYear(year: 2000); //うるう年
isLeapYear(year: 2023); //うるう年でない
}

void isLeapYear({int year=0}){
  bool l; //うるう年ならtrue,でなければfalse
  if(year%400==0){
    l=true;
  }else if(year%100==0){
    l=false;
  }else if(year%4==0){
    l=true;
  }else{
    l=false;
  }
  if(l==true){
    print("$year年はうるう年です。");
  }else{
    print("$year年はうるう年ではありません。");
  }
}
