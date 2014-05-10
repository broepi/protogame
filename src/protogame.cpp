
#include "protogame.h"
#include "mystage.h"
#include "bpgw/vector2d.h"

ProtoGame::ProtoGame ()
	: Game (Vector2D (800,600), "Proto-Game", true)
{
	myStage = new MyStage (this);
	changeStage (myStage);
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
