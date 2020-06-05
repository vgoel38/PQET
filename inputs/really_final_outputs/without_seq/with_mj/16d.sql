                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1049036.39..1049036.39 rows=1 width=64) (actual time=140133.541..140133.541 rows=1 loops=1)
   Buffers: shared hit=10796927 read=543522
   ->  Merge Join  (cost=1043996.98..1049036.36 rows=188 width=33) (actual time=134936.076..140072.721 rows=249455 loops=1)
         Merge Cond: (t.id = ci.movie_id)
         Buffers: shared hit=10796927 read=543522
         ->  Merge Join  (cost=134808.45..134954.72 rows=19 width=29) (actual time=29522.467..29610.056 rows=6766 loops=1)
               Merge Cond: (mc.movie_id = t.id)
               Buffers: shared hit=4191762 read=109425
               ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14948.759..14982.778 rows=480247 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 103237kB
                     Buffers: shared hit=1681929 read=29747
                     ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.103..14403.445 rows=1153798 loops=1)
                           Merge Cond: (cn.id = mc.company_id)
                           Buffers: shared hit=1681925 read=29747
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.067..1403.849 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231720 read=3834
                           ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.029..12404.581 rows=2609129 loops=1)
                                 Buffers: shared hit=1450205 read=25913
               ->  Sort  (cost=67282.75..67282.75 rows=9 width=25) (actual time=14573.126..14573.957 rows=9069 loops=1)
                     Sort Key: mk.movie_id
                     Sort Method: quicksort  Memory: 627kB
                     Buffers: shared hit=2509833 read=79678
                     ->  Merge Join  (cost=67090.32..67282.75 rows=9 width=25) (actual time=14562.016..14567.675 rows=5385 loops=1)
                           Merge Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=2509833 read=79678
                           ->  Sort  (cost=67084.19..67180.40 rows=1239196 width=29) (actual time=14517.518..14521.293 rows=14833 loops=1)
                                 Sort Key: mk.keyword_id
                                 Sort Method: quicksort  Memory: 42780kB
                                 Buffers: shared hit=2509833 read=79674
                                 ->  Merge Join  (cost=0.23..63189.39 rows=1239196 width=29) (actual time=325.741..14316.943 rows=376293 loops=1)
                                       Merge Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=2509833 read=79674
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.019..2871.992 rows=4523930 loops=1)
                                             Buffers: shared hit=21643 read=36810
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=692556 width=21) (actual time=26.300..10493.914 rows=692042 loops=1)
                                             Filter: ((episode_nr >= 5) AND (episode_nr < 100))
                                             Rows Removed by Filter: 1833930
                                             Buffers: shared hit=2488190 read=42864
                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=38.026..38.027 rows=1 loops=1)
                                 Sort Key: k.id
                                 Sort Method: quicksort  Memory: 25kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=38.008..38.011 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
         ->  Sort  (cost=909188.53..911635.07 rows=31511509 width=20) (actual time=105389.035..107489.810 rows=21295020 loops=1)
               Sort Key: ci.movie_id
               Sort Method: quicksort  Memory: 4206071kB
               Buffers: shared hit=6605165 read=434097
               ->  Merge Join  (cost=0.35..787304.76 rows=31511509 width=20) (actual time=27.149..83358.486 rows=36417493 loops=1)
                     Merge Cond: (an.person_id = ci.person_id)
                     Buffers: shared hit=6605165 read=434097
                     ->  Merge Join  (cost=0.06..91435.96 rows=901343 width=24) (actual time=27.083..12347.928 rows=772582 loops=1)
                           Merge Cond: (an.person_id = n.id)
                           Buffers: shared hit=4132118 read=82420
                           ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.024..814.506 rows=772582 loops=1)
                                 Buffers: shared hit=278770 read=13503
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=4) (actual time=0.017..10149.444 rows=4061927 loops=1)
                                 Buffers: shared hit=3853348 read=68917
                     ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.052..53420.271 rows=56379091 loops=1)
                           Buffers: shared hit=2473047 read=351677
 Planning Time: 7211.904 ms
 Execution Time: 140287.353 ms
(66 rows)

