                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1045162.88..1045162.88 rows=1 width=64) (actual time=138693.814..138693.814 rows=1 loops=1)
   Buffers: shared hit=10797548 read=543538
   ->  Merge Join  (cost=1040123.51..1045162.87 rows=19 width=33) (actual time=134099.432..138693.645 rows=385 loops=1)
         Merge Cond: (t.id = ci.movie_id)
         Buffers: shared hit=10797548 read=543538
         ->  Merge Join  (cost=130934.98..131081.25 rows=2 width=29) (actual time=29160.063..29232.806 rows=25 loops=1)
               Merge Cond: (mc.movie_id = t.id)
               Buffers: shared hit=4192383 read=109441
               ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=15027.958..15059.707 rows=476645 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 103237kB
                     Buffers: shared hit=1681929 read=29747
                     ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.103..14481.602 rows=1153798 loops=1)
                           Merge Cond: (cn.id = mc.company_id)
                           Buffers: shared hit=1681925 read=29747
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.067..1603.297 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231720 read=3834
                           ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.029..12258.521 rows=2609129 loops=1)
                                 Buffers: shared hit=1450205 read=25913
               ->  Sort  (cost=63409.28..63409.28 rows=1 width=25) (actual time=14118.668..14118.691 rows=154 loops=1)
                     Sort Key: mk.movie_id
                     Sort Method: quicksort  Memory: 38kB
                     Buffers: shared hit=2510454 read=79694
                     ->  Merge Join  (cost=63390.32..63409.28 rows=1 width=25) (actual time=14118.343..14118.513 rows=146 loops=1)
                           Merge Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=2510454 read=79694
                           ->  Sort  (cost=63384.19..63393.67 rows=122111 width=29) (actual time=14050.576..14050.743 rows=575 loops=1)
                                 Sort Key: mk.keyword_id
                                 Sort Method: quicksort  Memory: 1638kB
                                 Buffers: shared hit=2510454 read=79690
                                 ->  Merge Join  (cost=0.37..63063.78 rows=122111 width=29) (actual time=752.362..14040.675 rows=15655 loops=1)
                                       Merge Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=2510454 read=79690
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.021..3000.133 rows=4523930 loops=1)
                                             Buffers: shared hit=21643 read=36810
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=68245 width=21) (actual time=520.366..10234.593 rows=68188 loops=1)
                                             Filter: ((episode_nr >= 50) AND (episode_nr < 100))
                                             Rows Removed by Filter: 2458638
                                             Buffers: shared hit=2488811 read=42880
                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=67.434..67.435 rows=1 loops=1)
                                 Sort Key: k.id
                                 Sort Method: quicksort  Memory: 25kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=67.413..67.416 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
         ->  Sort  (cost=909188.53..911635.07 rows=31511509 width=20) (actual time=104636.445..106654.435 rows=20216708 loops=1)
               Sort Key: ci.movie_id
               Sort Method: quicksort  Memory: 4206071kB
               Buffers: shared hit=6605165 read=434097
               ->  Merge Join  (cost=0.35..787304.76 rows=31511509 width=20) (actual time=22.890..82840.555 rows=36417493 loops=1)
                     Merge Cond: (an.person_id = ci.person_id)
                     Buffers: shared hit=6605165 read=434097
                     ->  Merge Join  (cost=0.06..91435.96 rows=901343 width=24) (actual time=22.839..12425.143 rows=772582 loops=1)
                           Merge Cond: (an.person_id = n.id)
                           Buffers: shared hit=4132118 read=82420
                           ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.036..894.381 rows=772582 loops=1)
                                 Buffers: shared hit=278770 read=13503
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=4) (actual time=0.026..10115.059 rows=4061927 loops=1)
                                 Buffers: shared hit=3853348 read=68917
                     ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.037..53143.547 rows=56379091 loops=1)
                           Buffers: shared hit=2473047 read=351677
 Planning Time: 7197.051 ms
 Execution Time: 138882.643 ms
(66 rows)

