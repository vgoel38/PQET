                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13311.04..13311.04 rows=1 width=128) (actual time=112590.638..112590.638 rows=1 loops=1)
   Buffers: shared hit=208188 read=87335
   ->  Nested Loop  (cost=2685.33..13310.98 rows=191 width=64) (actual time=3758.212..112559.998 rows=8144 loops=1)
         Join Filter: (ci.movie_id = t.id)
         Buffers: shared hit=208188 read=87335
         ->  Nested Loop  (cost=2685.31..13298.74 rows=191 width=55) (actual time=3716.820..91291.663 rows=8144 loops=1)
               Buffers: shared hit=176986 read=85956
               ->  Nested Loop  (cost=2685.30..13289.32 rows=529 width=59) (actual time=3167.003..77848.363 rows=18345 loops=1)
                     Buffers: shared hit=105221 read=84308
                     ->  Nested Loop  (cost=2685.29..13260.28 rows=275 width=51) (actual time=3126.185..53436.868 rows=7726 loops=1)
                           Buffers: shared hit=77330 read=82231
                           ->  Hash Join  (cost=2685.27..13156.90 rows=568 width=39) (actual time=3100.718..42506.258 rows=8204 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=48033 read=80612
                                 ->  Nested Loop  (cost=2685.24..13156.26 rows=6810 width=43) (actual time=3100.619..42492.389 rows=8204 loops=1)
                                       Join Filter: (n.id = ci.person_id)
                                       Buffers: shared hit=48030 read=80611
                                       ->  Hash Join  (cost=2685.22..3178.45 rows=8155 width=39) (actual time=2813.158..3720.785 rows=10525 loops=1)
                                             Hash Cond: (an.person_id = n.id)
                                             Buffers: shared read=67008
                                             ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=21.403..409.264 rows=901343 loops=1)
                                                   Buffers: shared read=11395
                                             ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2785.826..2785.827 rows=50011 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                   Buffers: shared read=55613
                                                   ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1277.182..2759.152 rows=50011 loops=1)
                                                         Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4117480
                                                         Buffers: shared read=55613
                                       ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..1.22 rows=1 width=16) (actual time=3.526..3.681 rows=1 loops=10525)
                                             Index Cond: (person_id = an.person_id)
                                             Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                             Rows Removed by Filter: 44
                                             Buffers: shared hit=48030 read=13603
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.072..0.073 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.066..0.068 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=1.330..1.330 rows=1 loops=8204)
                                 Index Cond: (id = ci.person_role_id)
                                 Buffers: shared hit=29297 read=1619
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.11 rows=2 width=8) (actual time=2.646..3.156 rows=2 loops=7726)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=27891 read=2077
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.731..0.731 rows=0 loops=18345)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=71765 read=1648
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=2.609..2.609 rows=1 loops=8144)
               Index Cond: (id = mc.movie_id)
               Buffers: shared hit=31202 read=1379
 Planning Time: 3893.736 ms
 Execution Time: 112591.195 ms
(57 rows)

