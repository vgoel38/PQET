                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1457533.46..1457533.46 rows=1 width=128) (actual time=117126.905..117126.905 rows=1 loops=1)
   Buffers: shared hit=8328612 read=685005
   ->  Merge Join  (cost=1409826.59..1457533.46 rows=1 width=80) (actual time=112618.880..117108.363 rows=4407 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=8328612 read=685005
         ->  Sort  (cost=1409826.55..1409826.55 rows=1 width=69) (actual time=112570.378..112571.158 rows=4408 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 778kB
               Buffers: shared hit=4390010 read=614323
               ->  Merge Join  (cost=1386451.03..1409826.55 rows=1 width=69) (actual time=101780.315..112561.971 rows=7112 loops=1)
                     Merge Cond: (t.id = mi.movie_id)
                     Buffers: shared hit=4390006 read=614323
                     ->  Merge Join  (cost=731477.24..754869.07 rows=9601 width=39) (actual time=76865.966..88466.399 rows=333549 loops=1)
                           Merge Cond: (t.id = ci.movie_id)
                           Buffers: shared hit=4353485 read=406757
                           ->  Merge Join  (cost=16648.76..39866.69 rows=12213 width=31) (actual time=1532.621..12864.999 rows=459905 loops=1)
                                 Merge Cond: (mi_idx.movie_id = t.id)
                                 Buffers: shared hit=2501719 read=55080
                                 ->  Sort  (cost=16648.74..16649.69 rows=12213 width=10) (actual time=1510.985..1564.839 rows=459905 loops=1)
                                       Sort Key: mi_idx.movie_id
                                       Sort Method: quicksort  Memory: 33847kB
                                       Buffers: shared hit=13572 read=12221
                                       ->  Merge Join  (cost=16407.86..16622.99 rows=12213 width=10) (actual time=1303.163..1409.823 rows=459925 loops=1)
                                             Merge Cond: (it2.id = mi_idx.info_type_id)
                                             Buffers: shared hit=13572 read=12221
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.086..0.087 rows=1 loops=1)
                                                   Sort Key: it2.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.054..0.055 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'votes'::text)
                                                         Buffers: shared hit=1 read=1
                                             ->  Sort  (cost=16401.73..16508.88 rows=1380035 width=14) (actual time=1227.842..1276.916 rows=919851 loops=1)
                                                   Sort Key: mi_idx.info_type_id
                                                   Sort Method: quicksort  Memory: 128214kB
                                                   Buffers: shared hit=13571 read=12220
                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.035..781.990 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.024..10712.067 rows=2525634 loops=1)
                                       Buffers: shared hit=2488147 read=42859
                           ->  Sort  (cost=714828.48..714925.20 rows=1245851 width=8) (actual time=75138.576..75298.546 rows=1244642 loops=1)
                                 Sort Key: ci.movie_id
                                 Sort Method: quicksort  Memory: 107499kB
                                 Buffers: shared hit=1851766 read=351677
                                 ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=30.974..74369.386 rows=1244716 loops=1)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 34999628
                                       Buffers: shared hit=1851766 read=351677
                     ->  Sort  (cost=654973.79..654973.79 rows=1 width=50) (actual time=24054.943..24057.685 rows=14686 loops=1)
                           Sort Key: mi.movie_id
                           Sort Method: quicksort  Memory: 968kB
                           Buffers: shared hit=36521 read=207566
                           ->  Merge Join  (cost=654973.29..654973.79 rows=1 width=50) (actual time=24024.805..24049.377 rows=12438 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=36521 read=207566
                                 ->  Sort  (cost=654942.62..654942.88 rows=3265 width=54) (actual time=23951.112..23962.003 rows=58304 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 38761kB
                                       Buffers: shared hit=36511 read=207553
                                       ->  Merge Join  (cost=615299.42..654936.70 rows=3265 width=54) (actual time=20744.173..23792.795 rows=338846 loops=1)
                                             Merge Cond: (mi.movie_id = mk.movie_id)
                                             Buffers: shared hit=36511 read=207553
                                             ->  Sort  (cost=615299.40..615299.42 rows=277 width=46) (actual time=20717.544..20720.711 rows=30413 loops=1)
                                                   Sort Key: mi.movie_id
                                                   Sort Method: quicksort  Memory: 2194kB
                                                   Buffers: shared hit=14840 read=170743
                                                   ->  Merge Join  (cost=0.02..615299.05 rows=277 width=46) (actual time=2084.922..20698.222 rows=30413 loops=1)
                                                         Merge Cond: (it1.id = mi.info_type_id)
                                                         Buffers: shared hit=14840 read=170743
                                                         ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.028..0.053 rows=1 loops=1)
                                                               Filter: ((info)::text = 'genres'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=2
                                                         ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..615287.40 rows=31269 width=50) (actual time=2084.881..20685.759 rows=30414 loops=1)
                                                               Filter: (info = 'Horror'::text)
                                                               Rows Removed by Filter: 13677096
                                                               Buffers: shared hit=14838 read=170743
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..2309.594 rows=4525420 loops=1)
                                                   Buffers: shared hit=21671 read=36810
                                 ->  Sort  (cost=30.66..30.67 rows=5 width=4) (actual time=71.125..71.126 rows=5 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=10 read=13
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=30.918..71.093 rows=5 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                             Buffers: shared hit=10 read=13
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=0.017..4352.635 rows=1739579 loops=1)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 2427912
               Buffers: shared hit=3938602 read=70682
 Planning Time: 10026.584 ms
 Execution Time: 117167.503 ms
(92 rows)

