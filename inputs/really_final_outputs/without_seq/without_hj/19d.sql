                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=43234.19..43234.19 rows=1 width=64) (actual time=715413.349..715413.349 rows=1 loops=1)
   Buffers: shared hit=19395385 read=148207
   ->  Nested Loop  (cost=0.12..43234.11 rows=480 width=32) (actual time=573.257..714460.152 rows=1760645 loops=1)
         Join Filter: (ci.person_id = n.id)
         Buffers: shared hit=19395385 read=148207
         ->  Nested Loop  (cost=0.11..42705.92 rows=2080 width=25) (actual time=552.007..695085.168 rows=1761514 loops=1)
               Join Filter: (mi.info_type_id = it.id)
               Rows Removed by Join Filter: 8584528
               Buffers: shared hit=12351054 read=143397
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.034..0.035 rows=1 loops=1)
                     Index Cond: ((info)::text = 'release dates'::text)
                     Buffers: shared hit=1 read=1
               ->  Nested Loop  (cost=0.10..42665.30 rows=235007 width=29) (actual time=538.039..692978.974 rows=10346042 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=12351053 read=143396
                     ->  Nested Loop  (cost=0.09..39734.98 rows=11532 width=37) (actual time=507.142..426756.041 rows=266076 loops=1)
                           Buffers: shared hit=8953828 read=112629
                           ->  Nested Loop  (cost=0.07..38384.74 rows=21106 width=16) (actual time=359.673..263635.674 rows=483198 loops=1)
                                 Buffers: shared hit=7035798 read=96439
                                 ->  Nested Loop  (cost=0.06..37343.31 rows=58459 width=20) (actual time=226.223..230199.614 rows=910376 loops=1)
                                       Buffers: shared hit=3396632 read=92932
                                       ->  Nested Loop  (cost=0.05..34129.44 rows=30437 width=12) (actual time=185.519..64010.881 rows=483319 loops=1)
                                             Buffers: shared hit=1548768 read=77887
                                             ->  Nested Loop  (cost=0.04..33343.32 rows=35008 width=8) (actual time=90.352..61725.549 rows=255651 loops=1)
                                                   Buffers: shared hit=781605 read=77335
                                                   ->  Nested Loop  (cost=0.02..29509.08 rows=72136 width=12) (actual time=55.174..7703.308 rows=276166 loops=1)
                                                         Buffers: shared hit=2 read=69446
                                                         ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.034..0.034 rows=1 loops=1)
                                                               Index Cond: ((role)::text = 'actress'::text)
                                                               Buffers: shared hit=1 read=1
                                                         ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..29497.51 rows=78694 width=16) (actual time=55.133..7563.627 rows=276166 loops=1)
                                                               Index Cond: (role_id = rt.id)
                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 7175807
                                                               Buffers: shared hit=1 read=69445
                                                   ->  Index Only Scan using char_name_pkey on char_name chn  (cost=0.01..0.05 rows=1 width=4) (actual time=0.194..0.194 rows=1 loops=276166)
                                                         Index Cond: (id = ci.person_role_id)
                                                         Heap Fetches: 0
                                                         Buffers: shared hit=781603 read=7889
                                             ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=0.006..0.007 rows=2 loops=255651)
                                                   Index Cond: (person_id = ci.person_id)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=767163 read=552
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=0.264..0.342 rows=2 loops=483319)
                                             Index Cond: (movie_id = ci.movie_id)
                                             Buffers: shared hit=1847864 read=15045
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.036..0.036 rows=1 loops=910376)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=3639166 read=3507
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.336..0.336 rows=1 loops=483198)
                                 Index Cond: (id = mc.movie_id)
                                 Filter: (production_year > 2000)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=1918030 read=16190
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=9 width=8) (actual time=0.313..0.983 rows=39 loops=266076)
                           Index Cond: (movie_id = mc.movie_id)
                           Buffers: shared hit=3397225 read=30767
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=19) (actual time=0.010..0.010 rows=1 loops=1761514)
               Index Cond: (id = an.person_id)
               Filter: ((gender)::text = 'f'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=7044331 read=4810
 Planning Time: 7360.177 ms
 Execution Time: 715433.990 ms
(66 rows)

