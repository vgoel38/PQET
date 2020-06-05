                                                                                       QUERY PLAN                                                                                        
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=24195.23..24195.23 rows=1 width=64) (actual time=12301.016..12301.017 rows=1 loops=1)
   Buffers: shared hit=2491555 read=43204
   ->  Nested Loop  (cost=0.09..24195.23 rows=1 width=33) (actual time=8051.973..12300.925 rows=6 loops=1)
         Buffers: shared hit=2491555 read=43204
         ->  Nested Loop  (cost=0.08..24195.23 rows=1 width=37) (actual time=8051.937..12300.835 rows=6 loops=1)
               Buffers: shared hit=2491543 read=43204
               ->  Nested Loop  (cost=0.07..24194.97 rows=1 width=45) (actual time=7381.867..11829.203 rows=171 loops=1)
                     Buffers: shared hit=2490942 read=43121
                     ->  Nested Loop  (cost=0.06..24190.07 rows=1 width=49) (actual time=7341.774..11780.416 rows=171 loops=1)
                           Buffers: shared hit=2490261 read=43118
                           ->  Nested Loop  (cost=0.04..24189.61 rows=1 width=29) (actual time=7309.233..10877.946 rows=104 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=2489942 read=43020
                                 ->  Nested Loop  (cost=0.03..24118.38 rows=1 width=29) (actual time=7268.626..10086.046 rows=4 loops=1)
                                       Buffers: shared hit=2489899 read=42913
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23827.24 rows=34 width=21) (actual time=7227.665..9985.230 rows=7 loops=1)
                                             Filter: ((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))
                                             Rows Removed by Filter: 2528305
                                             Buffers: shared hit=2489874 read=42904
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..8.56 rows=1 width=8) (actual time=12.146..14.393 rows=1 loops=7)
                                             Index Cond: (movie_id = t.id)
                                             Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))
                                             Rows Removed by Filter: 2
                                             Buffers: shared hit=25 read=9
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..71.23 rows=1 width=12) (actual time=53.726..197.897 rows=26 loops=4)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: (note = '(voice: English version)'::text)
                                       Rows Removed by Filter: 17
                                       Buffers: shared hit=43 read=107
                           ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.47 rows=2 width=20) (actual time=7.329..8.670 rows=2 loops=104)
                                 Index Cond: (person_id = ci.person_id)
                                 Buffers: shared hit=319 read=98
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4.90 rows=1 width=4) (actual time=0.281..0.281 rows=1 loops=171)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[jp]'::text)
                           Buffers: shared hit=681 read=3
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=4) (actual time=2.756..2.756 rows=0 loops=171)
                     Index Cond: (id = an.person_id)
                     Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=601 read=83
         ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=6)
               Index Cond: (id = ci.role_id)
               Filter: ((role)::text = 'actress'::text)
               Buffers: shared hit=12
 Planning Time: 3993.359 ms
 Execution Time: 12328.669 ms
(47 rows)

