
#ifndef MYSTAGE_H
#define MYSTAGE_H

#include "bpgw/stage.h"

class ProtoGame;
class Texture;

class MyStage : public Stage
{
public:
	ProtoGame *game;
	Texture *texLogo;
	Texture *texEnemyship;
	
	MyStage (ProtoGame *game);
	~MyStage ();
	void enter ();
	void leave ();
	void update (double timeDelta);
	void drawBg ();
};

#endif

