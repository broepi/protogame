
#include <iostream>
#include "mystage.h"
#include "protogame.h"
#include "bpgw/display.h"
#include "bpgw/texture.h"
#include "bpgw/vector2d.h"

using namespace std;

MyStage::MyStage (ProtoGame *game)
	: game (game)
{
}

MyStage::~MyStage ()
{
}

void MyStage::enter ()
{
	texLogo = new Texture (game->display, "res/logo.png");
	texEnemyship = new Texture (game->display, "res/enemyship.png", 8, 8);
	game->display->setBgColor (0, 0.5, 0.5);
}

void MyStage::leave ()
{
}

void MyStage::update (double timeDelta)
{
}

void MyStage::drawBg ()
{
	texLogo->draw (
		Vector2D (0, 100),
		Vector2D (2, 0.5),
		Vector2D (0.5, 0.5),
		Vector2D (0.5, 0.5),
		0, 45, 0.5
	);
	texEnemyship->draw (
		Vector2D (0, 0),
		Vector2D (1, 1),
		Vector2D (0.5, 0.5),
		Vector2D (0.5, 0.5),
		20, 0, 1
	);
}

