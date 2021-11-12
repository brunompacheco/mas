
/*

Very simple vacuum cleaner agent in a world that has only four locations.

Perceptions:
. dirty: the current location has dirty
. clean: the current location is clean
. pos(X): the agent position is X (0 < X < 5).

Actions:
. suck: clean the current location
. left, right, up, down: move the agent

*/

!start.

+!start <- .print("started cleaning!"); !clean.

+!clean : dirty	<- suck; !move; !clean.
+!clean : clean	<- !move; !clean.
-!clean			<- !clean.

+!move : pos(1)
	<- right.
+!move : pos(2)
	<- down.
+!move : pos(4)
	<- left.
+!move : pos(3)
	<- up.

