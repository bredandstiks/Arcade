function save_get_path(slot)
{
	return "save" + string(slot) + ".gsav";
}

function save_default_struct()
{
	return {
		version: 1,
		runner_highscore: 0,
		snake_highscore: 0,
		tickets: 0,
		gold_tickets: 0,
		keys: 0,
		machineUnlocked: {
			snake: true,
			runner: false
		}
	};
}

function save_apply_struct(data)
{
	if (!variable_struct_exists(data, "runner_highscore")) data.runner_highscore = 0;
	if (!variable_struct_exists(data, "snake_highscore")) data.snake_highscore = 0;
	if (!variable_struct_exists(data, "tickets")) data.tickets = 0;
	if (!variable_struct_exists(data, "gold_tickets")) data.gold_tickets = 0;
	if (!variable_struct_exists(data, "keys")) data.keys = 0;

	if (!variable_struct_exists(data, "machineUnlocked"))
	{
		data.machineUnlocked = { snake: true, runner: false };
	}

	if (!variable_struct_exists(data.machineUnlocked, "snake")) data.machineUnlocked.snake = true;
	if (!variable_struct_exists(data.machineUnlocked, "runner")) data.machineUnlocked.runner = false;

	global.Runner_highScore = data.runner_highscore;
	global.Snake_highScore = data.snake_highscore;

	global.playerData.tickets = data.tickets;
	global.playerData.gold_tickets = data.gold_tickets;
	global.playerData.keys = data.keys;

	global.machineUnlocked.snake = data.machineUnlocked.snake;
	global.machineUnlocked.runner = data.machineUnlocked.runner;
}

function save_write(slot)
{
	var data = {
		version: 1,
		runner_highscore: global.Runner_highScore,
		snake_highscore: global.Snake_highScore,
		tickets: global.playerData.tickets,
		gold_tickets: global.playerData.gold_tickets,
		keys: global.playerData.keys,
		machineUnlocked: global.machineUnlocked
	};

	var json = json_stringify(data);

	var buffer = buffer_create(string_length(json) + 1, buffer_fixed, 1);

	buffer_write(buffer, buffer_string, json);

	buffer_save(buffer, save_get_path(slot));

	buffer_delete(buffer);
}

function save_reset(slot)
{
	var def = save_default_struct();
	save_apply_struct(def);
	save_write(slot);
}

function save_load(slot)
{
	var path = save_get_path(slot);

	if (!file_exists(path))
	{
		save_reset(slot);
		return;
	}

	var buffer = buffer_load(path);
	var json = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);

	if (string_length(json) <= 0)
	{
		save_reset(slot);
		return;
	}

	var data;

	try
	{
		data = json_parse(json);
	}
	catch (e)
	{
		save_reset(slot);
		return;
	}

	save_apply_struct(data);
}
