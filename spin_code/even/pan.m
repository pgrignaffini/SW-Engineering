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
	case 3: // STATE 1 - even.prom:15 - [x = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->x);
		((P1 *)this)->x = 0;
#ifdef VAR_RANGES
		logval(":init::x", ((int)((P1 *)this)->x));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - even.prom:17 - [((x<255))] (6:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)((P1 *)this)->x)<255)))
			continue;
		/* merge: x = (x+1)(0, 3, 6) */
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->x);
		((P1 *)this)->x = (((int)((P1 *)this)->x)+1);
#ifdef VAR_RANGES
		logval(":init::x", ((int)((P1 *)this)->x));
#endif
		;
		/* merge: .(goto)(0, 7, 6) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 5: // STATE 9 - even.prom:21 - [(run evenOutput(x))] (0:0:1 - 3)
		IfNotBlocked
		reached[1][9] = 1;
		if (!(addproc(II, 1, 0, ((int)((P1 *)this)->x))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: x */  (trpt+1)->bup.oval = ((P1 *)this)->x;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->x = 0;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 10 - even.prom:22 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC evenOutput */
	case 7: // STATE 1 - even.prom:4 - [((((v%2)!=0)&&(v!=37)))] (9:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((((int)((P0 *)this)->v)%2)!=0)&&(((int)((P0 *)this)->v)!=37))))
			continue;
		/* merge: v = (v-1)(9, 2, 9) */
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->v);
		((P0 *)this)->v = (((int)((P0 *)this)->v)-1);
#ifdef VAR_RANGES
		logval("evenOutput:v", ((int)((P0 *)this)->v));
#endif
		;
		/* merge: .(goto)(9, 6, 9) */
		reached[0][6] = 1;
		;
		/* merge: assert(((v%2)==0))(9, 7, 9) */
		reached[0][7] = 1;
		spin_assert(((((int)((P0 *)this)->v)%2)==0), "((v%2)==0)", II, tt, t);
		/* merge: printf('output: %d\\n',v)(9, 8, 9) */
		reached[0][8] = 1;
		Printf("output: %d\n", ((int)((P0 *)this)->v));
		_m = 3; goto P999; /* 4 */
	case 8: // STATE 4 - even.prom:5 - [(1)] (9:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(9, 6, 9) */
		reached[0][6] = 1;
		;
		/* merge: assert(((v%2)==0))(9, 7, 9) */
		reached[0][7] = 1;
		spin_assert(((((int)((P0 *)this)->v)%2)==0), "((v%2)==0)", II, tt, t);
		/* merge: printf('output: %d\\n',v)(9, 8, 9) */
		reached[0][8] = 1;
		Printf("output: %d\n", ((int)((P0 *)this)->v));
		_m = 3; goto P999; /* 3 */
	case 9: // STATE 7 - even.prom:8 - [assert(((v%2)==0))] (0:9:0 - 3)
		IfNotBlocked
		reached[0][7] = 1;
		spin_assert(((((int)((P0 *)this)->v)%2)==0), "((v%2)==0)", II, tt, t);
		/* merge: printf('output: %d\\n',v)(9, 8, 9) */
		reached[0][8] = 1;
		Printf("output: %d\n", ((int)((P0 *)this)->v));
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 9 - even.prom:10 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
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

