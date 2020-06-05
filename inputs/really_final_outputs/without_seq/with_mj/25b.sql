                                                                                                             QUERY PLAN                                                                                                             
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1457787.92..1457787.92 rows=1 width=128) (actual time=115073.008..115073.008 rows=1 loops=1)
   Buffers: shared hit=5950932 read=642035
   ->  Merge Join  (cost=1410081.05..1457787.92 rows=1 width=80) (actual time=113481.250..115072.950 rows=6 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=5950932 read=642035
         ->  Sort  (cost=1410081.01..1410081.01 rows=1 width=69) (actual time=113146.148..113146.150 rows=6 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=4391737 read=614368
               ->  Merge Join  (cost=1386451.02..1410081.01 rows=1 width=69) (actual time=113089.833..113141.501 rows=6 loops=1)
                     Merge Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=4391733 read=614368
                     ->  Merge Join  (cost=1386451.01..1386646.36 rows=1 width=68) (actual time=103330.739..103642.572 rows=6745 loops=1)
                           Merge Cond: (mi.movie_id = ci.movie_id)
                           Buffers: shared hit=1901859 read=571464
                           ->  Merge Join  (cost=671622.54..671624.43 rows=1 width=60) (actual time=24406.955..24484.261 rows=10783 loops=1)
                                 Merge Cond: (mi_idx.movie_id = mi.movie_id)
                                 Buffers: shared hit=50093 read=219787
                                 ->  Sort  (cost=16648.74..16649.69 rows=12213 width=10) (actual time=1686.502..1710.149 rows=443115 loops=1)
                                       Sort Key: mi_idx.movie_id
                                       Sort Method: quicksort  Memory: 33847kB
                                       Buffers: shared hit=13572 read=12221
                                       ->  Merge Join  (cost=16407.86..16622.99 rows=12213 width=10) (actual time=1480.292..1584.738 rows=459925 loops=1)
                                             Merge Cond: (it.id = mi_idx.info_type_id)
                                             Buffers: shared hit=13572 read=12221
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.050..0.050 rows=1 loops=1)
                                                   Sort Key: it.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.035..0.035 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'votes'::text)
                                                         Buffers: shared hit=1 read=1
                                             ->  Sort  (cost=16401.73..16508.88 rows=1380035 width=14) (actual time=1408.012..1454.274 rows=919851 loops=1)
                                                   Sort Key: mi_idx.info_type_id
                                                   Sort Method: quicksort  Memory: 128214kB
                                                   Buffers: shared hit=13571 read=12220
                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.018..934.664 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                 ->  Sort  (cost=654973.79..654973.79 rows=1 width=50) (actual time=22720.360..22722.134 rows=11767 loops=1)
                                       Sort Key: mi.movie_id
                                       Sort Method: quicksort  Memory: 968kB
                                       Buffers: shared hit=36521 read=207566
                                       ->  Merge Join  (cost=654973.29..654973.79 rows=1 width=50) (actual time=22685.709..22713.557 rows=12438 loops=1)
                                             Merge Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=36521 read=207566
                                             ->  Sort  (cost=654942.62..654942.88 rows=3265 width=54) (actual time=22614.434..22626.756 rows=58304 loops=1)
                                                   Sort Key: mk.keyword_id
                                                   Sort Method: quicksort  Memory: 38761kB
                                                   Buffers: shared hit=36511 read=207553
                                                   ->  Merge Join  (cost=615299.42..654936.70 rows=3265 width=54) (actual time=19186.343..22454.546 rows=338846 loops=1)
                                                         Merge Cond: (mi.movie_id = mk.movie_id)
                                                         Buffers: shared hit=36511 read=207553
                                                         ->  Sort  (cost=615299.40..615299.42 rows=277 width=46) (actual time=19158.999..19162.241 rows=30413 loops=1)
                                                               Sort Key: mi.movie_id
                                                               Sort Method: quicksort  Memory: 2194kB
                                                               Buffers: shared hit=14840 read=170743
                                                               ->  Merge Join  (cost=0.02..615299.05 rows=277 width=46) (actual time=2318.697..19139.809 rows=30413 loops=1)
                                                                     Merge Cond: (it.id = mi.info_type_id)
                                                                     Buffers: shared hit=14840 read=170743
                                                                     ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.019..0.047 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'genres'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=2
                                                                     ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..615287.40 rows=31269 width=50) (actual time=2318.654..19127.365 rows=30414 loops=1)
                                                                           Filter: (info = 'Horror'::text)
                                                                           Rows Removed by Filter: 13677096
                                                                           Buffers: shared hit=14838 read=170743
                                                         ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.019..2521.732 rows=4525420 loops=1)
                                                               Buffers: shared hit=21671 read=36810
                                             ->  Sort  (cost=30.66..30.67 rows=5 width=4) (actual time=66.657..66.658 rows=5 loops=1)
                                                   Sort Key: k.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=26.454..66.628 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                           ->  Sort  (cost=714828.48..714925.20 rows=1245851 width=8) (actual time=78906.547..79020.566 rows=1233396 loops=1)
                                 Sort Key: ci.movie_id
                                 Sort Method: quicksort  Memory: 107499kB
                                 Buffers: shared hit=1851766 read=351677
                                 ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=47.077..78132.446 rows=1244716 loops=1)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 34999628
                                       Buffers: shared hit=1851766 read=351677
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=59 width=21) (actual time=642.681..9498.277 rows=73 loops=1)
                           Filter: ((production_year > 2010) AND (title ~~ 'Vampire%'::text))
                           Rows Removed by Filter: 2528239
                           Buffers: shared hit=2489874 read=42904
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=0.019..1761.705 rows=1626510 loops=1)
               Filter: ((gender)::text = 'm'::text)
               Buffers: shared hit=1559195 read=27667
 Planning Time: 9539.429 ms
 Execution Time: 115115.093 ms
(93 rows)

