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

	case 7: // STATE 8
		;
		((P0 *)this)->_1_1_1_v = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 14
		;
		now.vals[ Index(((P0 *)this)->_1_1_i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 16
		;
		((P0 *)this)->_1_1_i = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 23
		;
		((P0 *)this)->_1_2_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 12: // STATE 25
		;
		now.allSeqSums[ Index(((P0 *)this)->_1_2_i, 25) ] = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 26
		;
		((P0 *)this)->_1_2_i = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 34
		;
		((P0 *)this)->_1_3_i = trpt->bup.ovals[1];
		((P0 *)this)->_1_3_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 17: // STATE 38
		;
		((P0 *)this)->_1_3_i = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 49
		;
		((P0 *)this)->_1_4_sum = trpt->bup.ovals[4];
		((P0 *)this)->_1_4_index = trpt->bup.ovals[3];
		((P0 *)this)->_1_4_k = trpt->bup.ovals[2];
		((P0 *)this)->_1_4_j = trpt->bup.ovals[1];
		((P0 *)this)->_1_4_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 19: // STATE 51
		;
		((P0 *)this)->_1_4_j = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 53
		;
		((P0 *)this)->_1_4_k = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 22: // STATE 55
		;
		((P0 *)this)->_1_4_sum = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 56
		;
		((P0 *)this)->_1_4_k = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 62
		;
		now.allSeqSums[ Index(((P0 *)this)->_1_4_index, 25) ] = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 65
		;
		((P0 *)this)->_1_4_j = trpt->bup.ovals[2];
		((P0 *)this)->_1_4_index = trpt->bup.ovals[1];
		((P0 *)this)->_1_4_sum = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 26: // STATE 71
		;
		((P0 *)this)->_1_4_i = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 78
		;
		((P0 *)this)->_1_5_curr_max = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 81
		;
		((P0 *)this)->_1_5_s = trpt->bup.ovals[2];
		((P0 *)this)->_1_5_i = trpt->bup.ovals[1];
		((P0 *)this)->_1_5_max_here = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 30: // STATE 83
		;
		((P0 *)this)->_1_5_max_here = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 84
		;
	/* 0 */	((P0 *)this)->_1_5_max_here = trpt->bup.oval;
		;
		;
		goto R999;

	case 32: // STATE 85
		;
		((P0 *)this)->_1_5_max_here = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 86
		;
		((P0 *)this)->_1_5_s = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 92
		;
		((P0 *)this)->_1_5_curr_max = trpt->bup.ovals[1];
	/* 0 */	((P0 *)this)->_1_5_curr_max = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 35: // STATE 93
		;
		now.start = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 94
		;
		now.end = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 99
		;
		((P0 *)this)->_1_5_i = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 99
		;
		((P0 *)this)->_1_5_i = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 105
		;
		now.max = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 108
		;
		((P0 *)this)->_1_6_i = trpt->bup.ovals[1];
		((P0 *)this)->_1_6_i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 43: // STATE 111
		;
		((P0 *)this)->_1_6_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 45: // STATE 119
		;
		((P0 *)this)->_1_7_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 49: // STATE 123
		;
		((P0 *)this)->_1_7_i = trpt->bup.oval;
		;
		goto R999;
;
		
	case 50: // STATE 129
		goto R999;

	case 51: // STATE 131
		;
		((P0 *)this)->_1_8_i = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 132
		;
		((P0 *)this)->_1_8_sum = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 54: // STATE 134
		;
		((P0 *)this)->_1_8_sum = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 135
		;
		((P0 *)this)->_1_8_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 57: // STATE 143
		;
		p_restor(II);
		;
		;
		goto R999;
	}

