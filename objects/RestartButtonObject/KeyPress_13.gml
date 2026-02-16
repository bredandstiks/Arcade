// runner score is stored on RunnerControllerObject instance variable `score`
var rc = instance_find(RunnerControllerObject, 0);
var s = (instance_exists(rc)) ? floor(rc.score) : 0;
arcade_finish("dead", s);
