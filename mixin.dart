// Mixins are a way of defining code that can be reused in multiple class hierarchies. They are intended to provide member implementations en masse.

// To use a mixin, use the with keyword followed by one or more mixin names. The following example shows two classes that use (or, are subclasses of) mixins:

mixin Instrument {
  String color = "No color";
  void playPiano(){
    print('Piano playing a song !!!');
    
  }

  void playViolin(){
    print('Violin');
  }

  void changeColorOfTheInstrument(String color);
}

class Pianist with Instrument{
  String name;
  Pianist(this.name){
    print('Pianist created');
    playPiano();
  }
  
  @override
  void changeColorOfTheInstrument(String color) {
    this.color = color;
  }
}

void main(){
  var pianist = Pianist("Sebastian");
  pianist.changeColorOfTheInstrument("blue");
  pianist.changeColorOfTheInstrument('red');
  print(pianist.color);
}