	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 2
		;
		((P0 *)this)->_1_1_i = trpt->bup.ovals[1];
		((P0 *)this)->_1_1_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 5: // STATE 4
		;
		((P0 *)this)->_1_1_1_v = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 6
		;
		((P0 *)this)->_1_1_1_v = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 12
		;
		now.vals[ Index(((P0 *)this)->_1_1_i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 14
		;
		((P0 *)this)->_1_1_i = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 15
		;
	/* 0 */	((P0 *)this)->_1_1_i = trpt->bup.oval;
		;
		;
		goto R999;

	case 10: // STATE 22
		;
		((P0 *)this)->_1_2_i = trpt->bup.ovals[1];
		((P0 *)this)->_1_2_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 13: // STATE 25
		;
		((P0 *)this)->_1_2_i = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 26
		;
	/* 0 */	((P0 *)this)->_1_2_i = trpt->bup.oval;
		;
		;
		goto R999;

	case 15: // STATE 33
		;
		((P0 *)this)->_1_3_i = trpt->bup.ovals[1];
		((P0 *)this)->_1_3_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 34
		;
		now.max = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 19: // STATE 37
		;
		now.max = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 42
		;
		((P0 *)this)->_1_3_i = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 42
		;
		((P0 *)this)->_1_3_i = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 50
		;
		((P0 *)this)->_1_4_i = trpt->bup.ovals[1];
		((P0 *)this)->_1_4_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 25: // STATE 53
		;
		((P0 *)this)->_1_4_i = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 54
		;
	/* 0 */	((P0 *)this)->_1_4_i = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 28: // STATE 61
		;
		p_restor(II);
		;
		;
		goto R999;
	}

