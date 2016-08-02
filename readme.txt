Universal Weapons Respawn Script v1.04 (March 31, 2003) revised (February 1, 2007)
Required Version: ArmA
original by toadlife revised by norrin for ArmA
toadlife@toadlife.net



The method for its implementation is in the comments section at the start of the code but here's a couple of extra examples from a post I made on your forums.

Using the first method for initialising this script you must put these lines in the init lines of the units in the editor not the init.sqs.

eg for a unit called joebloggs in its init line in the editor you'd put the following code:
Code Sample  

["joebloggs",0] exec "weapons_respawn.sqs"  

If you use a 0 after the comma the unit will respawn with the weapons and ammo it had when it first appeared in mission whereas if you put a 1 it will respawn with the weapons and ammo it had when it died.

If you want to use the init.sqs method use must create an array called _units that contains all the names of the units that you want to use this script. Using our example above and adding an extra unit called johncitizen that you want to use the script you'd have this in the init.sqs
Code:
_units = ["joebloggs","johncitizen"]
{[_x,0] exec {weapons_respawn.sqs}} foreach _units

You must use either the init line method or the init.sqs method not both together.
