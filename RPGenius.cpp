#include <iostream>
#include <vector>
#include <string>
using namespace std;

#define underline "\33[4m";

string input;
vector<string> pinput; //prepared input

int main(){
	//ascii art title screen
	cout << "  ___  ___   ___             _             " << endl;
	cout << " | _ \\| _ \\ / __| ___  _ _  (_) _  _  ___  " << endl;
	cout << " |   /|  _/| (_ |/ -_)|  ,\\ | || || |(_-<  " << endl;
	cout << " |_|_\\|_|   \\___|\\___||_||_||_| \\_,_|/__/  " << endl;
	cout << endl;
	cout << "          A Narrative Puzzler              " << endl;
	cout << endl;
	cout << "\33[4mPlay\33[0m,\33[4mOptions\33[0m, or \33[4mQuit\33[0m" << endl;
	cout << endl;

	cin  >> input;

	


	cout << pinput[0] << endl;




	return 0;
}

void prepareInpit(string in){
	stringstream ss(in);
	istream_iterator<std::string> begin(ss);
	istream_iterator<std::string> end;
	pinpit = vector<std::string> vstrings(begin, end);
}