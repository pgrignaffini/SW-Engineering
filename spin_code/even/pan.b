	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		((P1 *)this)->x = trpt->bup.oval;
		;
		goto R999;

	case 4: // STATE 3
		;
		((P1 *)this)->x = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 9
		;
	/* 0 */	((P1 *)this)->x = trpt->bup.oval;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC evenOutput */

	case 7: // STATE 2
		;
		((P0 *)this)->v = trpt->bup.oval;
		;
		goto R999;
;
		
	case 8: // STATE 4
		goto R999;
;
		
	case 9: // STATE 7
		goto R999;

	case 10: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;
	}

