import 'dart:html';
import 'dart:math';

void main()
{
	// varTest();
	// condTest();
	// loopTest();
	oopTest();
}

void varTest()
{
	// there are six variable types in dart
	// Integers, Floats, Booleans, Strings, Lists, Maps
	var mydata = 10; // dart will get figure out what datatype to consider
	
	String myName = "uzumaki naruto";
	bool student = true;
	int rol = 007;
	double pi = 3.1415923485646184566;

	List myList = [1,2,3,4];
	Map myMap = {1: "Naruto", 2: "Sasuke", 3:"Shikamaru"};


	querySelector("#output").text = "mydata: ${mydata}, name: ${myName}, student: ${student}, rol: ${rol}, pi: ${pi}, \nmyList: ${myList}, myMap: ${myMap} ";

}

void condTest()
{
	String output = "";

	var age = 19;

	if ((age >= 4) && (age <=16)){
		output = "Go to kindergarten kid";
	}
	else if (age >= 18)
	{
		output = "Dude engineering!!";
	}
	else
	{
		output = "High School boiii";
	}
	querySelector("#output").text = output;
}

void loopTest()
{
	String output = "";
	int i = 0;

	while(i<=10)
	{
		output += "$i, ";
		i++;
	}

	output += "\n";

	querySelector("#output").text = output;

	do {
		output += "$i, ";
		i--;
	}while(i>0);
	output += "\n";

	for (int j = 1; j<= 20; j++)
	{
		if ((j%4) == 0){
			continue;
		}

		if (j == 25){
			break;
		}

		if ((j%2) == 0)
		{
			output += "$j, ";
		}
	}
	output += "\n";

	for(int k=0; k<=10; k++)
	{
		for(int l=0; l<=10;l++)
		{
			output += "$k * $l = ${k * l}\n ";
		}
	}

	querySelector("#output").text = output;
}


void oopTest()
{
	String output = "";
	Animal dog = new Animal();
	dog.name = "Diana";
	dog.sound = "Bhaww bhaww";
	dog._weight = 12;

	output += "${dog.name} said ${dog.sound} and weights ${dog._weight} kg \n";

	output += "${dog.run()}\n";


	querySelector("#output").text = output;
}


// Object oriented programming

class Animal
{
	String name = "No name";
	String sound = "No sound";

	int _weight = 0; //no one can access that(by putting underscore)

	int get weight => _weight; // this is how we access those data

	set weight(int w){
		if (w<=0){
			_weight = 0;
		}
		else
		{
			_weight = w;
		}
	}

	Animal(){numberOfAnimals++;} // constructor
	Animal.three(String name, String sound, int weight){
		this.name = name; // reference to objects value
		this.sound = sound;
		this._weight = weight;
		numberOfAnimals++;
	}

	String run()
	{
		return "${this.name} runs. ";
	}

	// Static means the data will be shared by every other objects
	static int numberOfAnimals = 0;

	// Static method
	static String getNumberOfAnimals(){	
		return numberOfAnimals.toString();
	}

	String info()
	{
		return "$name, $sound, $weight";
	}
}