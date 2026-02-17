null = pointer_null;

//Game Settings Variables
global.isFullscreen = false;
global.resolution = 720;

//General game variables
global.playerData = {
	tickets: 0,
	gold_tickets: 0,
	keys: 0
};

global.machineUnlocked = {
	snake: true,
	runner: false
};

global.gameOver = false;

//Runner Variables
global.speedModifier = 1;
global.colorMode = 0; //DO NOT CHANGE VERY BROKEN
global.Runner_highScore = 0;
global.runner_last_score = 0;
global.runner_finished = false;

//snake variables
global.Snake_highScore = 0;

// vars for leaving games
global.hub_room = TitleRoom;

global.run_active_machine = "";
global.run_return_room = global.hub_room;

global.run_last_score = 0;
global.run_last_status = "none"; // "quit" | "dead" | "clear"

//======================================= save stuff ==================================================================================

global.saveSlot = 1;
save_load(global.saveSlot);
