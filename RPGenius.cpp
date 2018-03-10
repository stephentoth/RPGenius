#include <iostream>
#include <algorithm>
#include <string>
#include <sstream>
#include <vector>
#include <iterator>
using namespace std;

#define underline "\33[4m";

//variables
string input;
vector<string> pinput; //prepared input

char green[] = { 0x1b, '[', '1', ';', '9', '2', 'm', 0 };
char normal[] = { 0x1b, '[', '0', ';', '3', '9', 'm', 0 };


//templates
template<typename Out>
void split(const std::string &s, char delim, Out result) {
    std::stringstream ss(s);
    std::string item;
    while (std::getline(ss, item, delim)) {
        *(result++) = item;
    }
}

//functions
void prepareInpit(string in){
	pinput.erase (pinput.begin, pinput.end);
	std::transform(in.begin(), in.end(),in.begin(), ::tolower);
    split(in, ' ', std::back_inserter(pinput));
}

void comm(string command){ //for use in code
	if (command == "clear"){
		for (int i=0; i<100; ++i)
			cout << endl;
	}

}

void defCommands(){ //for use by humans
	if (pinput[0] == "clear"){
		comm("clear");
	}else {
		cout << "command: " << pinput[0] << " Not Found" << endl;
	}
}
void printTitle() {
	cout << green << endl;
	cout << "  ___  ___   ___             _             " << endl;
	cout << " | _ \\| _ \\ / __| ___  _ _  (_) _  _  ___  " << endl;
	cout << " |   /|  _/| (_ |/ -_)|  ,\\ | || || |(_-<  " << endl;
	cout << " |_|_\\|_|   \\___|\\___||_||_||_| \\_,_|/__/  " << endl;
	cout << endl;
	cout << "          A Narrative Puzzler              " << endl;
	cout << normal <<endl;
}


//MAIN
int main(){
	//ascii art title screen
	comm("clear");

	title:
	printTitle();
	cout << "\33[4mPlay\33[0m,\33[4mOptions\33[0m, or \33[4mQuit\33[0m" << endl;
	cout << endl;

	cin  >> input;
	prepareInpit(input);
	if (pinput[0] == "play" ){
		goto Mplay;
	}else if (pinput[0] == "options"){
		goto MOptions;
		return 0;
	}else if (pinput[0] == "quit"){
		goto MQuit;
		return 0;
	}else {
		defCommands();
		goto title;
	}


	Mplay:

	MOptions:

	MQuit:









	return 0;
}