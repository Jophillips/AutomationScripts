/* 
This is a simple automine script for a cobblestone generator
To use fill your numbered inventory slots with stone pickaxes
Place crosshair on cobblestone block select the pick in slot #1 and hit ctrl+r
After 29 minutes all of the picks will be used up and you will have 
approximately 14 stacks of cobblestone. 
Press Ctrl + e to pause script 
*/

^r::

  { 
	Counter := 2 ; Sets counter to 2.

	Loop, 9
	{

	/*
	 Holds Mouse1 down for 190 seconds approximate longevity of stone pick when used on cobblestone
	 */

	sleep, 50
	Click Down
	sleep, 190000
	Click Up
	sleep, 50


	send, %Counter% ; Changes item in hand to current number.
	Counter+=1 ; Adds 1 to counter for next iteration.


	}
  }



^e::Pause 
