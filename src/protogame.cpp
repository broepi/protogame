
#include "protogame.h"

ProtoGame::ProtoGame ()
{
}

ProtoGame::~ProtoGame ()
{
}

int main (int argc, char *argv[])
{
	ProtoGame *myGame = new ProtoGame ();
	myGame->run ();
	delete myGame;
	return 0;
}
