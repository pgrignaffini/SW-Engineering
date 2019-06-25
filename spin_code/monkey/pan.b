	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM SafetyMaxOnRope */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 5: // STATE 1
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 7: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 4
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 10: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 7
		;
		((P1 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC monkey */
;
		;
		
	case 14: // STATE 3
		;
		now.numberOnRope = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->traveling = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 13
		;
		((P0 *)this)->traveling = trpt->bup.ovals[1];
		now.rope = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 13
		;
		((P0 *)this)->traveling = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 13
		;
		((P0 *)this)->traveling = trpt->bup.ovals[1];
		now.rope = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 13
		;
		((P0 *)this)->traveling = trpt->bup.oval;
		;
		goto R999;
;
		
	case 19: // STATE 15
		goto R999;

	case 20: // STATE 18
		;
		now.numberOnRope = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->traveling = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 21: // STATE 21
		;
		((P0 *)this)->side = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->side = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 22: // STATE 23
		;
		((P0 *)this)->side = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->side = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 23: // STATE 32
		;
		((P0 *)this)->traveling = trpt->bup.ovals[1];
		now.rope = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 24: // STATE 32
		;
		((P0 *)this)->traveling = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 32
		;
		((P0 *)this)->traveling = trpt->bup.oval;
		;
		goto R999;
;
		
	case 26: // STATE 34
		goto R999;

	case 27: // STATE 39
		;
		p_restor(II);
		;
		;
		goto R999;
	}

