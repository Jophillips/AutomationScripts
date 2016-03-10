/* Walks character in a random pattern */

^r::

  { 
	Loop
	{
	Random, rand, 200, 400
	Random, rand2, 800, 1200

	Send {w down}
	sleep, rand2
	Send {w up}
	sleep, rand
	Send {d down}
	sleep, rand2
	Send {d up}
	sleep, rand
	Send {s down}
	sleep, rand2
	Send {s up}
	sleep, rand
	Send {a down}
	sleep, rand2
	Send {a up}
	sleep, rand
	sleep, rand

	}
  }


/* Pauses script with control+4 */
^4::Pause 
