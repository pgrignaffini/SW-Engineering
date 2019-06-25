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
	case 3: // STATE 1 - mvcs.prom:29 - [i = 0] (0:19:2 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_1_1_i;
		((P0 *)this)->_1_1_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_1_i);
#endif
		;
		/* merge: i = 0(19, 2, 19) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->_1_1_i;
		((P0 *)this)->_1_1_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_1_i);
#endif
		;
		/* merge: .(goto)(0, 20, 19) */
		reached[0][20] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 3 - mvcs.prom:32 - [((i<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((P0 *)this)->_1_1_i<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - mvcs.prom:17 - [v = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_1_1_v;
		((P0 *)this)->_1_1_1_v = 0;
#ifdef VAR_RANGES
		logval(":init::v", ((P0 *)this)->_1_1_1_v);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 5 - mvcs.prom:18 - [((v<2))] (11:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((P0 *)this)->_1_1_1_v<2)))
			continue;
		/* merge: v = (v+1)(0, 6, 11) */
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_1_1_v;
		((P0 *)this)->_1_1_1_v = (((P0 *)this)->_1_1_1_v+1);
#ifdef VAR_RANGES
		logval(":init::v", ((P0 *)this)->_1_1_1_v);
#endif
		;
		/* merge: .(goto)(0, 12, 11) */
		reached[0][12] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 7 - mvcs.prom:19 - [((v>-(2)))] (11:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((P0 *)this)->_1_1_1_v> -(2))))
			continue;
		/* merge: v = (v-1)(0, 8, 11) */
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_1_1_v;
		((P0 *)this)->_1_1_1_v = (((P0 *)this)->_1_1_1_v-1);
#ifdef VAR_RANGES
		logval(":init::v", ((P0 *)this)->_1_1_1_v);
#endif
		;
		/* merge: .(goto)(0, 12, 11) */
		reached[0][12] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 14 - mvcs.prom:23 - [vals[i] = v] (0:0:1 - 3)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.vals[ Index(((P0 *)this)->_1_1_i, 5) ];
		now.vals[ Index(((P0 *)this)->_1_1_i, 5) ] = ((P0 *)this)->_1_1_1_v;
#ifdef VAR_RANGES
		logval("vals[:init::i]", now.vals[ Index(((P0 *)this)->_1_1_i, 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 16 - mvcs.prom:32 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_1_i;
		((P0 *)this)->_1_1_i = (((P0 *)this)->_1_1_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_1_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 23 - mvcs.prom:42 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_2_i;
		((P0 *)this)->_1_2_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_2_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 24 - mvcs.prom:43 - [((i<(5*5)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (!((((P0 *)this)->_1_2_i<(5*5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 25 - mvcs.prom:43 - [allSeqSums[i] = -(2)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		(trpt+1)->bup.oval = now.allSeqSums[ Index(((P0 *)this)->_1_2_i, 25) ];
		now.allSeqSums[ Index(((P0 *)this)->_1_2_i, 25) ] =  -(2);
#ifdef VAR_RANGES
		logval("allSeqSums[:init::i]", now.allSeqSums[ Index(((P0 *)this)->_1_2_i, 25) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 26 - mvcs.prom:43 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_2_i;
		((P0 *)this)->_1_2_i = (((P0 *)this)->_1_2_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_2_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 33 - mvcs.prom:51 - [i = 0] (0:41:2 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_1_3_i;
		((P0 *)this)->_1_3_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_3_i);
#endif
		;
		/* merge: i = 0(41, 34, 41) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->_1_3_i;
		((P0 *)this)->_1_3_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_3_i);
#endif
		;
		/* merge: printf('Array:\\n')(41, 35, 41) */
		reached[0][35] = 1;
		Printf("Array:\n");
		/* merge: .(goto)(0, 42, 41) */
		reached[0][42] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 36 - mvcs.prom:56 - [((i<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!((((P0 *)this)->_1_3_i<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 37 - mvcs.prom:57 - [printf('vals[%d] = %d\\n',i,vals[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		Printf("vals[%d] = %d\n", ((P0 *)this)->_1_3_i, now.vals[ Index(((P0 *)this)->_1_3_i, 5) ]);
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 38 - mvcs.prom:58 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_3_i;
		((P0 *)this)->_1_3_i = (((P0 *)this)->_1_3_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_3_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 45 - mvcs.prom:159 - [i = 0] (0:74:5 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_1_4_i;
		((P0 *)this)->_1_4_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_4_i);
#endif
		;
		/* merge: j = 0(74, 46, 74) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->_1_4_j;
		((P0 *)this)->_1_4_j = 0;
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)this)->_1_4_j);
#endif
		;
		/* merge: k = 0(74, 47, 74) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->_1_4_k;
		((P0 *)this)->_1_4_k = 0;
#ifdef VAR_RANGES
		logval(":init::k", ((P0 *)this)->_1_4_k);
#endif
		;
		/* merge: index = 0(74, 48, 74) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)this)->_1_4_index;
		((P0 *)this)->_1_4_index = 0;
#ifdef VAR_RANGES
		logval(":init::index", ((P0 *)this)->_1_4_index);
#endif
		;
		/* merge: sum = 0(74, 49, 74) */
		reached[0][49] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)this)->_1_4_sum;
		((P0 *)this)->_1_4_sum = 0;
#ifdef VAR_RANGES
		logval(":init::sum", ((P0 *)this)->_1_4_sum);
#endif
		;
		/* merge: .(goto)(0, 75, 74) */
		reached[0][75] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 19: // STATE 50 - mvcs.prom:167 - [((i<5))] (68:0:1 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!((((P0 *)this)->_1_4_i<5)))
			continue;
		/* merge: j = i(0, 51, 68) */
		reached[0][51] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_4_j;
		((P0 *)this)->_1_4_j = ((P0 *)this)->_1_4_i;
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)this)->_1_4_j);
#endif
		;
		/* merge: .(goto)(0, 69, 68) */
		reached[0][69] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 52 - mvcs.prom:170 - [((j<5))] (59:0:1 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		if (!((((P0 *)this)->_1_4_j<5)))
			continue;
		/* merge: k = i(0, 53, 59) */
		reached[0][53] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_4_k;
		((P0 *)this)->_1_4_k = ((P0 *)this)->_1_4_i;
#ifdef VAR_RANGES
		logval(":init::k", ((P0 *)this)->_1_4_k);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 54 - mvcs.prom:173 - [((k<=j))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!((((P0 *)this)->_1_4_k<=((P0 *)this)->_1_4_j)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 55 - mvcs.prom:175 - [sum = (sum+vals[k])] (0:0:1 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_4_sum;
		((P0 *)this)->_1_4_sum = (((P0 *)this)->_1_4_sum+now.vals[ Index(((P0 *)this)->_1_4_k, 5) ]);
#ifdef VAR_RANGES
		logval(":init::sum", ((P0 *)this)->_1_4_sum);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 56 - mvcs.prom:176 - [k = (k+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][56] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_4_k;
		((P0 *)this)->_1_4_k = (((P0 *)this)->_1_4_k+1);
#ifdef VAR_RANGES
		logval(":init::k", ((P0 *)this)->_1_4_k);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 62 - mvcs.prom:180 - [allSeqSums[index] = sum] (0:0:1 - 3)
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.allSeqSums[ Index(((P0 *)this)->_1_4_index, 25) ];
		now.allSeqSums[ Index(((P0 *)this)->_1_4_index, 25) ] = ((P0 *)this)->_1_4_sum;
#ifdef VAR_RANGES
		logval("allSeqSums[:init::index]", now.allSeqSums[ Index(((P0 *)this)->_1_4_index, 25) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 63 - mvcs.prom:181 - [sum = 0] (0:68:3 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_1_4_sum;
		((P0 *)this)->_1_4_sum = 0;
#ifdef VAR_RANGES
		logval(":init::sum", ((P0 *)this)->_1_4_sum);
#endif
		;
		/* merge: index = (index+1)(68, 64, 68) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->_1_4_index;
		((P0 *)this)->_1_4_index = (((P0 *)this)->_1_4_index+1);
#ifdef VAR_RANGES
		logval(":init::index", ((P0 *)this)->_1_4_index);
#endif
		;
		/* merge: j = (j+1)(68, 65, 68) */
		reached[0][65] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->_1_4_j;
		((P0 *)this)->_1_4_j = (((P0 *)this)->_1_4_j+1);
#ifdef VAR_RANGES
		logval(":init::j", ((P0 *)this)->_1_4_j);
#endif
		;
		/* merge: .(goto)(0, 69, 68) */
		reached[0][69] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 26: // STATE 71 - mvcs.prom:186 - [i = (i+1)] (0:74:1 - 3)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_4_i;
		((P0 *)this)->_1_4_i = (((P0 *)this)->_1_4_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_4_i);
#endif
		;
		/* merge: .(goto)(0, 75, 74) */
		reached[0][75] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 78 - mvcs.prom:100 - [curr_max = vals[1]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_5_curr_max;
		((P0 *)this)->_1_5_curr_max = now.vals[1];
#ifdef VAR_RANGES
		logval(":init::curr_max", ((P0 *)this)->_1_5_curr_max);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 79 - mvcs.prom:101 - [max_here = curr_max] (0:102:3 - 1)
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_1_5_max_here;
		((P0 *)this)->_1_5_max_here = ((P0 *)this)->_1_5_curr_max;
#ifdef VAR_RANGES
		logval(":init::max_here", ((P0 *)this)->_1_5_max_here);
#endif
		;
		/* merge: i = 1(102, 80, 102) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->_1_5_i;
		((P0 *)this)->_1_5_i = 1;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_5_i);
#endif
		;
		/* merge: s = 0(102, 81, 102) */
		reached[0][81] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)this)->_1_5_s;
		((P0 *)this)->_1_5_s = 0;
#ifdef VAR_RANGES
		logval(":init::s", ((P0 *)this)->_1_5_s);
#endif
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 29: // STATE 82 - mvcs.prom:105 - [((i<5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		if (!((((P0 *)this)->_1_5_i<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 83 - mvcs.prom:106 - [max_here = (max_here+vals[i])] (0:0:1 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_5_max_here;
		((P0 *)this)->_1_5_max_here = (((P0 *)this)->_1_5_max_here+now.vals[ Index(((P0 *)this)->_1_5_i, 5) ]);
#ifdef VAR_RANGES
		logval(":init::max_here", ((P0 *)this)->_1_5_max_here);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 84 - mvcs.prom:108 - [((max_here<vals[i]))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		if (!((((P0 *)this)->_1_5_max_here<now.vals[ Index(((P0 *)this)->_1_5_i, 5) ])))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _1_5_max_here */  (trpt+1)->bup.oval = ((P0 *)this)->_1_5_max_here;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_1_5_max_here = 0;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 85 - mvcs.prom:109 - [max_here = vals[i]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_5_max_here;
		((P0 *)this)->_1_5_max_here = now.vals[ Index(((P0 *)this)->_1_5_i, 5) ];
#ifdef VAR_RANGES
		logval(":init::max_here", ((P0 *)this)->_1_5_max_here);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 86 - mvcs.prom:110 - [s = i] (0:0:1 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_5_s;
		((P0 *)this)->_1_5_s = ((P0 *)this)->_1_5_i;
#ifdef VAR_RANGES
		logval(":init::s", ((P0 *)this)->_1_5_s);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 91 - mvcs.prom:114 - [((curr_max<max_here))] (93:0:2 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		if (!((((P0 *)this)->_1_5_curr_max<((P0 *)this)->_1_5_max_here)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _1_5_curr_max */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_1_5_curr_max;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->_1_5_curr_max = 0;
		/* merge: curr_max = max_here(0, 92, 93) */
		reached[0][92] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->_1_5_curr_max;
		((P0 *)this)->_1_5_curr_max = ((P0 *)this)->_1_5_max_here;
#ifdef VAR_RANGES
		logval(":init::curr_max", ((P0 *)this)->_1_5_curr_max);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 35: // STATE 93 - mvcs.prom:116 - [start = s] (0:0:1 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		(trpt+1)->bup.oval = now.start;
		now.start = ((P0 *)this)->_1_5_s;
#ifdef VAR_RANGES
		logval("start", now.start);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 94 - mvcs.prom:117 - [end = i] (0:0:1 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		(trpt+1)->bup.oval = now.end;
		now.end = ((P0 *)this)->_1_5_i;
#ifdef VAR_RANGES
		logval("end", now.end);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 96 - mvcs.prom:118 - [(1)] (102:0:1 - 1)
		IfNotBlocked
		reached[0][96] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(102, 98, 102) */
		reached[0][98] = 1;
		;
		/* merge: i = (i+1)(102, 99, 102) */
		reached[0][99] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_5_i;
		((P0 *)this)->_1_5_i = (((P0 *)this)->_1_5_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_5_i);
#endif
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 38: // STATE 99 - mvcs.prom:120 - [i = (i+1)] (0:102:1 - 3)
		IfNotBlocked
		reached[0][99] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_5_i;
		((P0 *)this)->_1_5_i = (((P0 *)this)->_1_5_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_5_i);
#endif
		;
		/* merge: .(goto)(0, 103, 102) */
		reached[0][103] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 39: // STATE 105 - mvcs.prom:124 - [max = curr_max] (0:0:1 - 3)
		IfNotBlocked
		reached[0][105] = 1;
		(trpt+1)->bup.oval = now.max;
		now.max = ((P0 *)this)->_1_5_curr_max;
#ifdef VAR_RANGES
		logval("max", now.max);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 107 - mvcs.prom:131 - [i = 0] (0:114:2 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)this)->_1_6_i;
		((P0 *)this)->_1_6_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_6_i);
#endif
		;
		/* merge: i = 0(114, 108, 114) */
		reached[0][108] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)this)->_1_6_i;
		((P0 *)this)->_1_6_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_6_i);
#endif
		;
		/* merge: .(goto)(0, 115, 114) */
		reached[0][115] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 41: // STATE 109 - mvcs.prom:134 - [((i<(5*5)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][109] = 1;
		if (!((((P0 *)this)->_1_6_i<(5*5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 110 - mvcs.prom:134 - [assert((max>=allSeqSums[i]))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][110] = 1;
		spin_assert((now.max>=now.allSeqSums[ Index(((P0 *)this)->_1_6_i, 25) ]), "(max>=allSeqSums[i])", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 111 - mvcs.prom:135 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_6_i;
		((P0 *)this)->_1_6_i = (((P0 *)this)->_1_6_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_6_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 118 - mvcs.prom:200 - [printf('Max sum is: %d\\n',max)] (0:0:0 - 3)
		IfNotBlocked
		reached[0][118] = 1;
		Printf("Max sum is: %d\n", now.max);
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 119 - mvcs.prom:68 - [i = start] (0:0:1 - 1)
		IfNotBlocked
		reached[0][119] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_7_i;
		((P0 *)this)->_1_7_i = now.start;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_7_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 120 - mvcs.prom:68 - [printf('Max sequence: [')] (0:0:0 - 1)
		IfNotBlocked
		reached[0][120] = 1;
		Printf("Max sequence: [");
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 121 - mvcs.prom:71 - [((i<=end))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][121] = 1;
		if (!((((P0 *)this)->_1_7_i<=now.end)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 122 - mvcs.prom:72 - [printf('%d ',vals[i])] (0:0:0 - 1)
		IfNotBlocked
		reached[0][122] = 1;
		Printf("%d ", now.vals[ Index(((P0 *)this)->_1_7_i, 5) ]);
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 123 - mvcs.prom:73 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][123] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_7_i;
		((P0 *)this)->_1_7_i = (((P0 *)this)->_1_7_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_7_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 129 - mvcs.prom:77 - [printf(']\\n')] (0:142:0 - 3)
		IfNotBlocked
		reached[0][129] = 1;
		Printf("]\n");
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 131 - mvcs.prom:145 - [i = start] (0:0:1 - 1)
		IfNotBlocked
		reached[0][131] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_8_i;
		((P0 *)this)->_1_8_i = now.start;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_8_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 132 - mvcs.prom:147 - [sum = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][132] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_8_sum;
		((P0 *)this)->_1_8_sum = 0;
#ifdef VAR_RANGES
		logval(":init::sum", ((P0 *)this)->_1_8_sum);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 133 - mvcs.prom:148 - [((i<=end))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][133] = 1;
		if (!((((P0 *)this)->_1_8_i<=now.end)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 134 - mvcs.prom:149 - [sum = (sum+vals[i])] (0:0:1 - 1)
		IfNotBlocked
		reached[0][134] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_8_sum;
		((P0 *)this)->_1_8_sum = (((P0 *)this)->_1_8_sum+now.vals[ Index(((P0 *)this)->_1_8_i, 5) ]);
#ifdef VAR_RANGES
		logval(":init::sum", ((P0 *)this)->_1_8_sum);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 135 - mvcs.prom:150 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][135] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_8_i;
		((P0 *)this)->_1_8_i = (((P0 *)this)->_1_8_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)this)->_1_8_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 141 - mvcs.prom:153 - [assert((sum==max))] (0:0:0 - 3)
		IfNotBlocked
		reached[0][141] = 1;
		spin_assert((((P0 *)this)->_1_8_sum==now.max), "(sum==max)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 143 - mvcs.prom:205 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][143] = 1;
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

