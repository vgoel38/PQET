                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4183.88..4183.88 rows=1 width=64) (actual time=32216.879..32216.880 rows=1 loops=1)
   Buffers: shared hit=13135 read=70135
   ->  Nested Loop  (cost=2680.36..4183.88 rows=1 width=32) (actual time=3522.192..32216.465 rows=184 loops=1)
         Buffers: shared hit=13135 read=70135
         ->  Nested Loop  (cost=2680.36..4183.88 rows=1 width=36) (actual time=3503.071..32195.922 rows=184 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=12769 read=70133
               ->  Nested Loop  (cost=2680.35..4183.15 rows=1 width=44) (actual time=3453.302..29798.104 rows=77 loops=1)
                     Buffers: shared hit=11406 read=69788
                     ->  Nested Loop  (cost=2680.33..4182.96 rows=1 width=48) (actual time=3427.748..29440.871 rows=82 loops=1)
                           Join Filter: (mc.movie_id = t.id)
                           Buffers: shared hit=11146 read=69740
                           ->  Nested Loop  (cost=2680.32..4182.30 rows=4 width=27) (actual time=3337.388..25948.166 rows=359 loops=1)
                                 Buffers: shared hit=9903 read=69543
                                 ->  Nested Loop  (cost=2680.31..4181.66 rows=12 width=31) (actual time=3116.420..24124.314 rows=373 loops=1)
                                       Buffers: shared hit=8554 read=69400
                                       ->  Hash Join  (cost=2680.29..4175.63 rows=57 width=23) (actual time=3075.582..19034.938 rows=425 loops=1)
                                             Hash Cond: (ci.role_id = rt.id)
                                             Buffers: shared hit=7088 read=68986
                                             ->  Nested Loop  (cost=2680.26..4175.53 rows=684 width=27) (actual time=3057.290..19015.472 rows=425 loops=1)
                                                   Join Filter: (n.id = ci.person_id)
                                                   Buffers: shared hit=7085 read=68985
                                                   ->  Hash Join  (cost=2680.24..3173.47 rows=819 width=23) (actual time=2637.732..3959.556 rows=1558 loops=1)
                                                         Hash Cond: (an.person_id = n.id)
                                                         Buffers: shared read=67008
                                                         ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=26.731..960.755 rows=901343 loops=1)
                                                               Buffers: shared read=11395
                                                         ->  Hash  (cost=2679.69..2679.69 rows=3787 width=19) (actual time=2603.426..2603.426 rows=6768 loops=1)
                                                               Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 420kB
                                                               Buffers: shared read=55613
                                                               ->  Seq Scan on name n  (cost=0.00..2679.69 rows=3787 width=19) (actual time=1094.759..2598.946 rows=6768 loops=1)
                                                                     Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                                                     Rows Removed by Filter: 4160723
                                                                     Buffers: shared read=55613
                                                   ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..1.22 rows=1 width=16) (actual time=9.488..9.660 rows=0 loops=1558)
                                                         Index Cond: (person_id = an.person_id)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 44
                                                         Buffers: shared hit=7085 read=1977
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=18.234..18.234 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=1
                                                   ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=18.209..18.215 rows=1 loops=1)
                                                         Filter: ((role)::text = 'actress'::text)
                                                         Rows Removed by Filter: 11
                                                         Buffers: shared read=1
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=1 width=8) (actual time=9.985..11.971 rows=1 loops=425)
                                             Index Cond: (movie_id = ci.movie_id)
                                             Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                             Rows Removed by Filter: 4
                                             Buffers: shared hit=1466 read=414
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.05 rows=1 width=4) (actual time=4.885..4.885 rows=1 loops=373)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=1349 read=143
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.17 rows=1 width=21) (actual time=9.726..9.726 rows=0 loops=359)
                                 Index Cond: (id = ci.movie_id)
                                 Filter: ((production_year >= 2005) AND (production_year <= 2009))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=1243 read=197
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=4) (actual time=4.352..4.352 rows=1 loops=82)
                           Index Cond: (id = ci.person_role_id)
                           Buffers: shared hit=260 read=48
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.73 rows=1 width=8) (actual time=13.735..31.135 rows=2 loops=77)
                     Index Cond: (movie_id = ci.movie_id)
                     Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                     Rows Removed by Filter: 166
                     Buffers: shared hit=1363 read=345
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.109..0.109 rows=1 loops=184)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Buffers: shared hit=366 read=2
 Planning Time: 6289.267 ms
 Execution Time: 32217.448 ms
(75 rows)

