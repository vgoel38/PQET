                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=189562.48..189562.48 rows=1 width=64) (actual time=164196.660..164196.660 rows=1 loops=1)
   Buffers: shared hit=19252280 read=122921
   ->  Nested Loop  (cost=106841.42..189279.73 rows=1820954 width=33) (actual time=17499.062..162801.900 rows=2487611 loops=1)
         Join Filter: (a1.person_id = n1.id)
         Buffers: shared hit=19252280 read=122921
         ->  Nested Loop  (cost=106841.41..162031.10 rows=1820954 width=41) (actual time=17460.278..105312.667 rows=2487611 loops=1)
               Buffers: shared hit=11491693 read=112651
               ->  Merge Join  (cost=106841.40..130865.73 rows=2094450 width=21) (actual time=17243.810..35668.429 rows=1970658 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=4170078 read=99833
                     ->  Merge Join  (cost=67525.72..90951.87 rows=941996 width=25) (actual time=14342.671..30110.392 rows=1153798 loops=1)
                           Merge Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=4170077 read=72608
                           ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14320.428..14585.788 rows=1153798 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 103237kB
                                 Buffers: shared hit=1681929 read=29747
                                 ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.107..13779.419 rows=1153798 loops=1)
                                       Merge Cond: (cn.id = mc.company_id)
                                       Buffers: shared hit=1681925 read=29747
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.071..1479.631 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231720 read=3834
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.029..11697.049 rows=2609129 loops=1)
                                             Buffers: shared hit=1450205 read=25913
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.021..13932.028 rows=2525744 loops=1)
                                 Buffers: shared hit=2488148 read=42861
                     ->  Sort  (cost=39315.65..39550.15 rows=3020362 width=8) (actual time=2866.335..3612.954 rows=3863824 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 226224kB
                           Buffers: shared hit=1 read=27225
                           ->  Nested Loop  (cost=0.02..29219.82 rows=3020362 width=8) (actual time=54.316..1637.543 rows=2728943 loops=1)
                                 Buffers: shared hit=1 read=27225
                                 ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.045..0.047 rows=1 loops=1)
                                       Index Cond: ((role)::text = 'writer'::text)
                                       Buffers: shared hit=1 read=1
                                 ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..28985.88 rows=3294940 width=12) (actual time=54.261..1171.233 rows=2728943 loops=1)
                                       Index Cond: (role_id = rt.id)
                                       Buffers: shared read=27224
               ->  Index Scan using person_id_aka_name on aka_name a1  (cost=0.01..0.01 rows=2 width=20) (actual time=0.031..0.034 rows=1 loops=1970658)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=7321615 read=12818
         ->  Index Only Scan using name_pkey on name n1  (cost=0.01..0.01 rows=1 width=4) (actual time=0.022..0.022 rows=1 loops=2487611)
               Index Cond: (id = ci.person_id)
               Heap Fetches: 0
               Buffers: shared hit=7760587 read=10270
 Planning Time: 4358.895 ms
 Execution Time: 164256.145 ms
(49 rows)

