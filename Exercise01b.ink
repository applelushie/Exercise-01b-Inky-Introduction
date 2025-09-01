/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave ready to enter solo after you lost to a bet from your friends. {not flashlight_pickup: You see a rusted flashlight on a rock.}{not nose_pickup:You see a clown's nose wedged into a crack along the wall.} The cave reveals a deceiving west and east opening.
+ [travel into the west tunnel] -> west_tunnel
+ [Take the east tunnel] -> east_tunnel
* [Pick up the flashlight] -> flashlight_pickup
* [Grab the clown's nose] -> nose_pickup

== west_tunnel ==
You are in the west tunnel. It is very dark, you can't see anything.
* {flashlight_pickup} [Turn on flashlight] -> west_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== east_tunnel ==
You are in the east tunnel. You can't see through the void.
+ [Go Back] -> cave_mouth
* {flashlight_pickup} [Turn on flashlight] -> east_tunnel_lit
-> END

=== flashlight_pickup ===
You now have a flashlight. May it illuminate the way.
* [Go Back] -> cave_mouth
-> END

== nose_pickup ==
You pick up the saggy clown nose damp from the cave's water.
* [Go Back] -> cave_mouth
-> END

== west_tunnel_lit ==
Glistling shards of rock hanging down are lit up by your flickering light. Maybe this cave isn't that bad after all like my friends said.
+ [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
A narrow yet attracting hallway travels into the void escaping your light.
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
+ [Walk Foward] -> in_dark_tunnel
-> END

== in_dark_tunnel ==
Your flashlight flickers off and you feel the jagged walls slowly pressing against you.
* [Shake flashlight] -> Squeaky_the_clown_encounter_bad
* {nose_pickup} [Put on clown nose] -> Squeaky_the_clown_encounter
-> END

== Squeaky_the_clown_encounter ==
Putting on the clown's nose makes a loud squeak noise, leading to squeaking rubber noises approaching. Emerging from the darkness a face stands above you grining from ear to ear with his bright red nose. Squeaky the clown has found you right where he wanted you. Squeaky then exclaims: "Are you ready to join the circus?!" (Special Ending)
-> END

== Squeaky_the_clown_encounter_bad ==
 Squeaking rubber noises approaches. Emerging from the darkness a face stands above you grining from ear to ear with his bright red nose. Squeaky the clown has found you right where he wanted you. (Bad Ending)
-> END

/* Very fun to make lol