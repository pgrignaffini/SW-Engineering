#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM SafetyMaxOnRope */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((numberOnRope>3))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !( !((now.numberOnRope>3)))))
			continue;
		/* merge: assert(!(!(!((numberOnRope>3)))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !( !((now.numberOnRope>3)))), " !( !( !((numberOnRope>3))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 5: // STATE 1 - monkey.prom:56 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - monkey.prom:58 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)this)->i<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - monkey.prom:58 - [(run monkey(i,EAST))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)this)->i, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - monkey.prom:58 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 5 - monkey.prom:59 - [((i<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((P1 *)this)->i<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - monkey.prom:59 - [(run monkey(i,WEST))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)this)->i, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 7 - monkey.prom:59 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->i;
		((P1 *)this)->i = (((P1 *)this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - monkey.prom:62 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[1][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC monkey */
	case 13: // STATE 1 - monkey.prom:15 - [printf('I am monkey %d on side %e\\n',id,side)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("I am monkey %d on side %e\n", ((P0 *)this)->id, ((P0 *)this)->side);
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - monkey.prom:21 - [((!(traveling)&&(((rope==EMPTY)||(((side==EAST)&&(rope==EAST2WEST))&&(numberOnRope<3)))||(((side==WEST)&&(rope==WEST2EAST))&&(numberOnRope<3)))))] (11:0:2 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(( !(((int)((P0 *)this)->traveling))&&(((now.rope==5)||(((((P0 *)this)->side==2)&&(now.rope==4))&&(now.numberOnRope<3)))||(((((P0 *)this)->side==1)&&(now.rope==3))&&(now.numberOnRope<3))))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: traveling */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->traveling;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->traveling = 0;
		/* merge: numberOnRope = (numberOnRope+1)(11, 3, 11) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = now.numberOnRope;
		now.numberOnRope = (now.numberOnRope+1);
#ifdef VAR_RANGES
		logval("numberOnRope", now.numberOnRope);
#endif
		;
		/* merge: printf('%d: Moving to other side...\\n',id)(11, 4, 11) */
		reached[0][4] = 1;
		Printf("%d: Moving to other side...\n", ((P0 *)this)->id);
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 5 - monkey.prom:25 - [(((rope==EMPTY)&&(side==EAST)))] (36:0:2 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!(((now.rope==5)&&(((P0 *)this)->side==2))))
			continue;
		/* merge: rope = EAST2WEST(36, 6, 36) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.rope;
		now.rope = 4;
#ifdef VAR_RANGES
		logval("rope", now.rope);
#endif
		;
		/* merge: .(goto)(36, 12, 36) */
		reached[0][12] = 1;
		;
		/* merge: traveling = 1(36, 13, 36) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->traveling);
		((P0 *)this)->traveling = 1;
#ifdef VAR_RANGES
		logval("monkey:traveling", ((int)((P0 *)this)->traveling));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 16: // STATE 12 - monkey.prom:29 - [.(goto)] (0:36:1 - 3)
		IfNotBlocked
		reached[0][12] = 1;
		;
		/* merge: traveling = 1(36, 13, 36) */
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->traveling);
		((P0 *)this)->traveling = 1;
#ifdef VAR_RANGES
		logval("monkey:traveling", ((int)((P0 *)this)->traveling));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 7 - monkey.prom:26 - [(((rope==EMPTY)&&(side==WEST)))] (36:0:2 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!(((now.rope==5)&&(((P0 *)this)->side==1))))
			continue;
		/* merge: rope = WEST2EAST(36, 8, 36) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.rope;
		now.rope = 3;
#ifdef VAR_RANGES
		logval("rope", now.rope);
#endif
		;
		/* merge: .(goto)(36, 12, 36) */
		reached[0][12] = 1;
		;
		/* merge: traveling = 1(36, 13, 36) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->traveling);
		((P0 *)this)->traveling = 1;
#ifdef VAR_RANGES
		logval("monkey:traveling", ((int)((P0 *)this)->traveling));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 18: // STATE 10 - monkey.prom:27 - [(1)] (36:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(36, 12, 36) */
		reached[0][12] = 1;
		;
		/* merge: traveling = 1(36, 13, 36) */
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->traveling);
		((P0 *)this)->traveling = 1;
#ifdef VAR_RANGES
		logval("monkey:traveling", ((int)((P0 *)this)->traveling));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: // STATE 15 - monkey.prom:31 - [(traveling)] (36:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((int)((P0 *)this)->traveling)))
			continue;
		/* merge: printf('%d: Crossing...\\n',id)(0, 16, 36) */
		reached[0][16] = 1;
		Printf("%d: Crossing...\n", ((P0 *)this)->id);
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 17 - monkey.prom:34 - [(traveling)] (24:0:2 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!(((int)((P0 *)this)->traveling)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: traveling */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->traveling;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->traveling = 0;
		/* merge: numberOnRope = (numberOnRope-1)(24, 18, 24) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[1] = now.numberOnRope;
		now.numberOnRope = (now.numberOnRope-1);
#ifdef VAR_RANGES
		logval("numberOnRope", now.numberOnRope);
#endif
		;
		/* merge: printf('%d: Reached other side\\n',id)(24, 19, 24) */
		reached[0][19] = 1;
		Printf("%d: Reached other side\n", ((P0 *)this)->id);
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 20 - monkey.prom:38 - [((side==EAST))] (30:0:2 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((((P0 *)this)->side==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: side */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->side;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->side = 0;
		/* merge: side = WEST(0, 21, 30) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->side;
		((P0 *)this)->side = 1;
#ifdef VAR_RANGES
		logval("monkey:side", ((P0 *)this)->side);
#endif
		;
		/* merge: .(goto)(0, 25, 30) */
		reached[0][25] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 22: // STATE 22 - monkey.prom:39 - [((side==WEST))] (30:0:2 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (!((((P0 *)this)->side==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: side */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->side;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->side = 0;
		/* merge: side = EAST(0, 23, 30) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->side;
		((P0 *)this)->side = 2;
#ifdef VAR_RANGES
		logval("monkey:side", ((P0 *)this)->side);
#endif
		;
		/* merge: .(goto)(0, 25, 30) */
		reached[0][25] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 26 - monkey.prom:42 - [((numberOnRope<=0))] (36:0:2 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((now.numberOnRope<=0)))
			continue;
		/* merge: rope = EMPTY(36, 27, 36) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.rope;
		now.rope = 5;
#ifdef VAR_RANGES
		logval("rope", now.rope);
#endif
		;
		/* merge: .(goto)(36, 31, 36) */
		reached[0][31] = 1;
		;
		/* merge: traveling = 0(36, 32, 36) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->traveling);
		((P0 *)this)->traveling = 0;
#ifdef VAR_RANGES
		logval("monkey:traveling", ((int)((P0 *)this)->traveling));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 24: // STATE 31 - monkey.prom:45 - [.(goto)] (0:36:1 - 2)
		IfNotBlocked
		reached[0][31] = 1;
		;
		/* merge: traveling = 0(36, 32, 36) */
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->traveling);
		((P0 *)this)->traveling = 0;
#ifdef VAR_RANGES
		logval("monkey:traveling", ((int)((P0 *)this)->traveling));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 29 - monkey.prom:43 - [(1)] (36:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(36, 31, 36) */
		reached[0][31] = 1;
		;
		/* merge: traveling = 0(36, 32, 36) */
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->traveling);
		((P0 *)this)->traveling = 0;
#ifdef VAR_RANGES
		logval("monkey:traveling", ((int)((P0 *)this)->traveling));
#endif
		;
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 26: // STATE 34 - monkey.prom:47 - [(!(traveling))] (36:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!( !(((int)((P0 *)this)->traveling))))
			continue;
		/* merge: printf('%d: Staying on this side...\\n',id)(0, 35, 36) */
		reached[0][35] = 1;
		Printf("%d: Staying on this side...\n", ((P0 *)this)->id);
		/* merge: .(goto)(0, 37, 36) */
		reached[0][37] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 27: // STATE 39 - monkey.prom:50 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

