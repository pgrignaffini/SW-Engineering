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

		 /* PROC :init: */
	case 3: // STATE 1 - findmax.prom:22 - [i = 0] (0:17:2 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->_1_1_i);
		((P0 *)this)->_1_1_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_1_i));
#endif
		;
		/* merge: i = 0(17, 2, 17) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->_1_1_i);
		((P0 *)this)->_1_1_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_1_i));
#endif
		;
		/* merge: .(goto)(0, 18, 17) */
		reached[0][18] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 3 - findmax.prom:25 - [((i<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)this)->_1_1_i)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - findmax.prom:10 - [v = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_1_1_1_v);
		((P0 *)this)->_1_1_1_v = 0;
#ifdef VAR_RANGES
		logval(":init::v", ((int)((P0 *)this)->_1_1_1_v));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 5 - findmax.prom:11 - [((v<15))] (9:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_1_1_1_v)<15)))
			continue;
		/* merge: v = (v+1)(0, 6, 9) */
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_1_1_1_v);
		((P0 *)this)->_1_1_1_v = (((int)((P0 *)this)->_1_1_1_v)+1);
#ifdef VAR_RANGES
		logval(":init::v", ((int)((P0 *)this)->_1_1_1_v));
#endif
		;
		/* merge: .(goto)(0, 10, 9) */
		reached[0][10] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 12 - findmax.prom:15 - [vals[i] = v] (0:0:1 - 3)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)now.vals[ Index(((int)((P0 *)this)->_1_1_i), 5) ]);
		now.vals[ Index(((P0 *)this)->_1_1_i, 5) ] = ((int)((P0 *)this)->_1_1_1_v);
#ifdef VAR_RANGES
		logval("vals[:init::i]", ((int)now.vals[ Index(((int)((P0 *)this)->_1_1_i), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 14 - findmax.prom:25 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_1_1_i);
		((P0 *)this)->_1_1_i = (((int)((P0 *)this)->_1_1_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_1_i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 15 - findmax.prom:26 - [((i>=5))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!((((int)((P0 *)this)->_1_1_i)>=5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _1_1_i */  (trpt+1)->bup.oval = ((P0 *)this)->_1_1_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_1_1_i = 0;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 21 - findmax.prom:35 - [i = 0] (0:28:2 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->_1_2_i);
		((P0 *)this)->_1_2_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_2_i));
#endif
		;
		/* merge: i = 0(28, 22, 28) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->_1_2_i);
		((P0 *)this)->_1_2_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_2_i));
#endif
		;
		/* merge: .(goto)(0, 29, 28) */
		reached[0][29] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 23 - findmax.prom:38 - [((i<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((int)((P0 *)this)->_1_2_i)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 24 - findmax.prom:38 - [printf('vals[%d] = %d\\n',i,vals[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		Printf("vals[%d] = %d\n", ((int)((P0 *)this)->_1_2_i), ((int)now.vals[ Index(((int)((P0 *)this)->_1_2_i), 5) ]));
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 25 - findmax.prom:39 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_1_2_i);
		((P0 *)this)->_1_2_i = (((int)((P0 *)this)->_1_2_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_2_i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 26 - findmax.prom:40 - [((i>=5))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((((int)((P0 *)this)->_1_2_i)>=5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _1_2_i */  (trpt+1)->bup.oval = ((P0 *)this)->_1_2_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_1_2_i = 0;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 32 - findmax.prom:48 - [i = 0] (0:34:2 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->_1_3_i);
		((P0 *)this)->_1_3_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_3_i));
#endif
		;
		/* merge: i = 0(34, 33, 34) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->_1_3_i);
		((P0 *)this)->_1_3_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_3_i));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 16: // STATE 34 - findmax.prom:49 - [max = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = ((int)now.max);
		now.max = 0;
#ifdef VAR_RANGES
		logval("max", ((int)now.max));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 35 - findmax.prom:52 - [((i<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		if (!((((int)((P0 *)this)->_1_3_i)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 36 - findmax.prom:54 - [((vals[i]>max))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!((((int)now.vals[ Index(((int)((P0 *)this)->_1_3_i), 5) ])>((int)now.max))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 37 - findmax.prom:54 - [max = vals[i]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = ((int)now.max);
		now.max = ((int)now.vals[ Index(((int)((P0 *)this)->_1_3_i), 5) ]);
#ifdef VAR_RANGES
		logval("max", ((int)now.max));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 39 - findmax.prom:55 - [(1)] (45:0:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(45, 41, 45) */
		reached[0][41] = 1;
		;
		/* merge: i = (i+1)(45, 42, 45) */
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_1_3_i);
		((P0 *)this)->_1_3_i = (((int)((P0 *)this)->_1_3_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_3_i));
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 21: // STATE 42 - findmax.prom:57 - [i = (i+1)] (0:45:1 - 3)
		IfNotBlocked
		reached[0][42] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_1_3_i);
		((P0 *)this)->_1_3_i = (((int)((P0 *)this)->_1_3_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_3_i));
#endif
		;
		/* merge: .(goto)(0, 46, 45) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 22: // STATE 49 - findmax.prom:66 - [i = 0] (0:56:2 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->_1_4_i);
		((P0 *)this)->_1_4_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_4_i));
#endif
		;
		/* merge: i = 0(56, 50, 56) */
		reached[0][50] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->_1_4_i);
		((P0 *)this)->_1_4_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_4_i));
#endif
		;
		/* merge: .(goto)(0, 57, 56) */
		reached[0][57] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 51 - findmax.prom:69 - [((i<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!((((int)((P0 *)this)->_1_4_i)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 52 - findmax.prom:70 - [assert((vals[i]<=max))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		spin_assert((((int)now.vals[ Index(((int)((P0 *)this)->_1_4_i), 5) ])<=((int)now.max)), "(vals[i]<=max)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 53 - findmax.prom:71 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->_1_4_i);
		((P0 *)this)->_1_4_i = (((int)((P0 *)this)->_1_4_i)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((int)((P0 *)this)->_1_4_i));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 54 - findmax.prom:72 - [((i>=5))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!((((int)((P0 *)this)->_1_4_i)>=5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _1_4_i */  (trpt+1)->bup.oval = ((P0 *)this)->_1_4_i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_1_4_i = 0;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 60 - findmax.prom:82 - [printf('max is: %d\\n',max)] (0:0:0 - 3)
		IfNotBlocked
		reached[0][60] = 1;
		Printf("max is: %d\n", ((int)now.max));
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 61 - findmax.prom:83 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
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

