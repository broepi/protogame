
#ifndef PROTOGAME_H
#define PROTOGAME_H

#include "bpgw/game.h"

class MyStage;

class ProtoGame : public Game
{
public:
	MyStage *myStage;
	
	ProtoGame ();
	~ProtoGame ();
};

#endif

