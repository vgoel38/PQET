                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=189562.48..189562.48 rows=1 width=64) (actual time=85696.253..85696.253 rows=1 loops=1)
   Buffers: shared hit=6193459 read=82176
   ->  Nested Loop  (cost=106841.42..189279.73 rows=1820954 width=33) (actual time=15082.520..85416.645 rows=323005 loops=1)
         Join Filter: (an1.person_id = n1.id)
         Buffers: shared hit=6193459 read=82176
         ->  Nested Loop  (cost=106841.41..162031.10 rows=1820954 width=41) (actual time=15048.082..71046.284 rows=323005 loops=1)
               Buffers: shared hit=5209107 read=80481
               ->  Merge Join  (cost=106841.40..130865.73 rows=2094450 width=21) (actual time=14808.995..30418.916 rows=285538 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=4170078 read=74945
                     ->  Merge Join  (cost=67525.72..90951.87 rows=941996 width=25) (actual time=14417.677..29303.357 rows=1153798 loops=1)
                           Merge Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=4170077 read=72608
                           ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14412.435..14720.365 rows=1153798 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 103237kB
                                 Buffers: shared hit=1681929 read=29747
                                 ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.105..13869.157 rows=1153798 loops=1)
                                       Merge Cond: (cn.id = mc.company_id)
                                       Buffers: shared hit=1681925 read=29747
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.068..1290.689 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=231720 read=3834
                                       ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.029..11966.907 rows=2609129 loops=1)
                                             Buffers: shared hit=1450205 read=25913
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.022..12742.051 rows=2525744 loops=1)
                                 Buffers: shared hit=2488148 read=42861
                     ->  Sort  (cost=39315.65..39550.15 rows=3020362 width=8) (actual time=391.308..501.742 rows=461760 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 25245kB
                           Buffers: shared hit=1 read=2337
                           ->  Nested Loop  (cost=0.02..29219.82 rows=3020362 width=8) (actual time=47.493..261.672 rows=276403 loops=1)
                                 Buffers: shared hit=1 read=2337
                                 ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.045..0.046 rows=1 loops=1)
                                       Index Cond: ((role)::text = 'costume designer'::text)
                                       Buffers: shared hit=1 read=1
                                 ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..28985.88 rows=3294940 width=12) (actual time=47.438..203.703 rows=276403 loops=1)
                                       Index Cond: (role_id = rt.id)
                                       Buffers: shared read=2336
               ->  Index Scan using person_id_aka_name on aka_name an1  (cost=0.01..0.01 rows=2 width=20) (actual time=0.132..0.141 rows=1 loops=285538)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=1039029 read=5536
         ->  Index Only Scan using name_pkey on name n1  (cost=0.01..0.01 rows=1 width=4) (actual time=0.043..0.043 rows=1 loops=323005)
               Index Cond: (id = ci.person_id)
               Heap Fetches: 0
               Buffers: shared hit=984352 read=1695
 Planning Time: 4487.598 ms
 Execution Time: 85740.487 ms
(49 rows)

