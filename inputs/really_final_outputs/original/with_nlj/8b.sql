 Aggregate  (cost=2457.17..2457.17 rows=1 width=64) (actual time=4347.844..4347.844 rows=1 loops=1)
   Buffers: shared hit=1664 read=36309
   ->  Nested Loop  (cost=0.07..2457.17 rows=1 width=33) (actual time=2317.421..4347.767 rows=6 loops=1)
         Join Filter: (ci.role_id = rt.id)
         Buffers: shared hit=1664 read=36309
         ->  Nested Loop  (cost=0.07..2457.14 rows=1 width=37) (actual time=2293.609..4323.900 rows=6 loops=1)
               Buffers: shared hit=1659 read=36308
               ->  Nested Loop  (cost=0.06..2456.88 rows=1 width=45) (actual time=1506.778..3718.644 rows=171 loops=1)
                     Buffers: shared hit=1059 read=36224
                     ->  Nested Loop  (cost=0.04..2451.99 rows=1 width=49) (actual time=1458.407..3661.351 rows=171 loops=1)
                           Buffers: shared hit=381 read=36218
                           ->  Nested Loop  (cost=0.03..2451.52 rows=1 width=29) (actual time=1417.541..2758.692 rows=104 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=64 read=36118
                                 ->  Nested Loop  (cost=0.01..2380.29 rows=1 width=29) (actual time=1326.875..1881.797 rows=4 loops=1)
                                       Buffers: shared hit=24 read=36008
                                       ->  Seq Scan on title t  (cost=0.00..2089.15 rows=34 width=21) (actual time=1276.755..1763.537 rows=7 loops=1)
                                             Filter: ((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))
                                             Rows Removed by Filter: 2528305
                                             Buffers: shared read=35998
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..8.56 rows=1 width=8) (actual time=14.182..16.884 rows=1 loops=7)
                                             Index Cond: (movie_id = t.id)
                                             Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))
                                             Rows Removed by Filter: 2
                                             Buffers: shared hit=24 read=10
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..71.23 rows=1 width=12) (actual time=53.820..219.144 rows=26 loops=4)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: (note = '(voice: English version)'::text)
                                       Rows Removed by Filter: 17
                                       Buffers: shared hit=40 read=110
                           ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.47 rows=2 width=20) (actual time=7.650..8.672 rows=2 loops=104)
                                 Index Cond: (person_id = ci.person_id)
                                 Buffers: shared hit=317 read=100
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4.90 rows=1 width=4) (actual time=0.331..0.331 rows=1 loops=171)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[jp]'::text)
                           Buffers: shared hit=678 read=6
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=4) (actual time=3.538..3.538 rows=0 loops=171)
                     Index Cond: (id = an.person_id)
                     Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=600 read=84
         ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=3.971..3.971 rows=1 loops=6)
               Filter: ((role)::text = 'actress'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=5 read=1
 Planning Time: 2705.600 ms
 Execution Time: 4413.966 ms
