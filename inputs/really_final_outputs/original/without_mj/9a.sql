                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4183.33..4183.33 rows=1 width=96) (actual time=29702.631..29702.632 rows=1 loops=1)
   Buffers: shared hit=11570 read=69800
   ->  Nested Loop  (cost=2680.35..4183.33 rows=1 width=49) (actual time=3647.463..29702.129 rows=121 loops=1)
         Buffers: shared hit=11570 read=69800
         ->  Nested Loop  (cost=2680.33..4182.96 rows=2 width=37) (actual time=3621.907..29294.731 rows=127 loops=1)
               Buffers: shared hit=11146 read=69740
               ->  Nested Loop  (cost=2680.32..4182.30 rows=4 width=28) (actual time=3531.623..25787.483 rows=359 loops=1)
                     Buffers: shared hit=9903 read=69543
                     ->  Nested Loop  (cost=2680.31..4181.66 rows=12 width=32) (actual time=3310.595..24038.562 rows=373 loops=1)
                           Buffers: shared hit=8554 read=69400
                           ->  Hash Join  (cost=2680.29..4175.63 rows=57 width=24) (actual time=3272.040..19409.574 rows=425 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=7088 read=68986
                                 ->  Nested Loop  (cost=2680.26..4175.53 rows=684 width=28) (actual time=3271.942..19408.267 rows=425 loops=1)
                                       Join Filter: (n.id = ci.person_id)
                                       Buffers: shared hit=7085 read=68985
                                       ->  Hash Join  (cost=2680.24..3173.47 rows=819 width=24) (actual time=2849.921..4245.505 rows=1558 loops=1)
                                             Hash Cond: (an.person_id = n.id)
                                             Buffers: shared read=67008
                                             ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=22.381..1017.076 rows=901343 loops=1)
                                                   Buffers: shared read=11395
                                             ->  Hash  (cost=2679.69..2679.69 rows=3787 width=4) (actual time=2819.723..2819.724 rows=6768 loops=1)
                                                   Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 302kB
                                                   Buffers: shared read=55613
                                                   ->  Seq Scan on name n  (cost=0.00..2679.69 rows=3787 width=4) (actual time=1311.449..2815.441 rows=6768 loops=1)
                                                         Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4160723
                                                         Buffers: shared read=55613
                                       ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..1.22 rows=1 width=16) (actual time=9.567..9.728 rows=0 loops=1558)
                                             Index Cond: (person_id = an.person_id)
                                             Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                             Rows Removed by Filter: 44
                                             Buffers: shared hit=7085 read=1977
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.075..0.075 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.069..0.070 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=1 width=8) (actual time=9.514..10.888 rows=1 loops=425)
                                 Index Cond: (movie_id = ci.movie_id)
                                 Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                 Rows Removed by Filter: 4
                                 Buffers: shared hit=1466 read=414
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.05 rows=1 width=4) (actual time=4.684..4.684 rows=1 loops=373)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=1349 read=143
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.17 rows=1 width=21) (actual time=9.766..9.766 rows=0 loops=359)
                     Index Cond: (id = ci.movie_id)
                     Filter: ((production_year >= 2005) AND (production_year <= 2015))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=1243 read=197
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=3.203..3.203 rows=1 loops=127)
               Index Cond: (id = ci.person_role_id)
               Buffers: shared hit=424 read=60
 Planning Time: 3917.712 ms
 Execution Time: 29703.100 ms
(60 rows)

