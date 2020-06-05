                                                                                                                      QUERY PLAN                                                                                                                       
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=726599.23..726599.23 rows=1 width=96) (actual time=34872.905..34872.905 rows=1 loops=1)
   Buffers: shared hit=2931301 read=325262
   ->  Hash Join  (cost=106621.19..726599.23 rows=1 width=42) (actual time=23839.032..34871.080 rows=4803 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2931301 read=325262
         ->  Hash Join  (cost=102005.46..721983.50 rows=1 width=27) (actual time=23111.204..34141.069 rows=4955 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=2699584 read=321422
               ->  Hash Join  (cost=101999.34..721977.38 rows=1 width=31) (actual time=23092.254..34120.738 rows=4955 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=2699584 read=321420
                     ->  Hash Join  (cost=78795.72..698773.75 rows=1 width=43) (actual time=21361.749..32388.935 rows=432 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=2699584 read=295500
                           ->  Hash Join  (cost=78786.53..698764.57 rows=1 width=47) (actual time=21337.640..32364.633 rows=484 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=2699584 read=295498
                                 ->  Hash Join  (cost=78780.41..698758.44 rows=1 width=51) (actual time=21327.740..32354.389 rows=1524 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=2699584 read=295496
                                       ->  Hash Join  (cost=78774.28..698752.32 rows=1 width=55) (actual time=18414.811..32353.677 rows=1736 loops=1)
                                             Hash Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=2699582 read=295496
                                             ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..619894.76 rows=715132 width=8) (actual time=3122.834..17026.846 rows=716210 loops=1)
                                                   Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                   Rows Removed by Filter: 14119510
                                                   Buffers: shared hit=87582 read=202429
                                             ->  Hash  (cost=78774.27..78774.27 rows=1 width=47) (actual time=15221.773..15221.773 rows=1650 loops=1)
                                                   Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 146kB
                                                   Buffers: shared hit=2612000 read=93067
                                                   ->  Hash Join  (cost=39119.66..78774.27 rows=1 width=47) (actual time=12276.758..15220.422 rows=1650 loops=1)
                                                         Hash Cond: (cc.subject_id = cct.id)
                                                         Buffers: shared hit=2612000 read=93067
                                                         ->  Hash Join  (cost=39113.53..78768.14 rows=2 width=51) (actual time=12174.253..15192.689 rows=7081 loops=1)
                                                               Hash Cond: (t.id = mi_idx.movie_id)
                                                               Buffers: shared hit=2612000 read=93065
                                                               ->  Hash Join  (cost=26778.18..66432.79 rows=3 width=37) (actual time=10464.452..13479.283 rows=2513 loops=1)
                                                                     Hash Cond: (cc.status_id = cct.id)
                                                                     Buffers: shared hit=2598435 read=80839
                                                                     ->  Hash Join  (cost=26769.00..66423.61 rows=4 width=41) (actual time=10464.410..13477.764 rows=3518 loops=1)
                                                                           Hash Cond: (t.id = cc.movie_id)
                                                                           Buffers: shared hit=2598434 read=80838
                                                                           ->  Hash Join  (cost=23465.66..63120.26 rows=74 width=29) (actual time=9908.798..12965.441 rows=14771 loops=1)
                                                                                 Hash Cond: (mk.movie_id = t.id)
                                                                                 Buffers: shared hit=2511514 read=79735
                                                                                 ->  Hash Join  (cost=24.54..39679.13 rows=135 width=4) (actual time=97.177..3134.097 rows=37091 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=21644 read=36827
                                                                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=24.874..2257.593 rows=4523930 loops=1)
                                                                                             Buffers: shared hit=21636 read=36817
                                                                                       ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=71.834..71.834 rows=3 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=8 read=10
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=46.871..71.810 rows=3 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                   Buffers: shared hit=8 read=10
                                                                                 ->  Hash  (cost=23238.35..23238.35 rows=1381453 width=25) (actual time=9798.862..9798.862 rows=1381453 loops=1)
                                                                                       Buckets: 2097152  Batches: 1  Memory Usage: 95777kB
                                                                                       Buffers: shared hit=2489870 read=42908
                                                                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=40.815..9207.527 rows=1381453 loops=1)
                                                                                             Filter: (production_year > 2000)
                                                                                             Rows Removed by Filter: 1146859
                                                                                             Buffers: shared hit=2489870 read=42908
                                                                           ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=505.331..505.331 rows=135086 loops=1)
                                                                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                 Buffers: shared hit=86920 read=1103
                                                                                 ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=49.708..435.060 rows=135086 loops=1)
                                                                                       Buffers: shared hit=86920 read=1103
                                                                     ->  Hash  (cost=9.19..9.19 rows=3 width=4) (actual time=0.022..0.022 rows=3 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=3 width=4) (actual time=0.017..0.019 rows=3 loops=1)
                                                                                 Filter: ((kind)::text <> 'complete+verified'::text)
                                                                                 Rows Removed by Filter: 1
                                                                                 Buffers: shared hit=1 read=1
                                                               ->  Hash  (cost=12138.14..12138.14 rows=1343551 width=14) (actual time=1693.972..1693.972 rows=1343555 loops=1)
                                                                     Buckets: 2097152  Batches: 1  Memory Usage: 77785kB
                                                                     Buffers: shared hit=13565 read=12226
                                                                     ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1343551 width=14) (actual time=44.275..1176.013 rows=1343555 loops=1)
                                                                           Filter: (info < '8.5'::text)
                                                                           Rows Removed by Filter: 36480
                                                                           Buffers: shared hit=13565 read=12226
                                                         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=25.878..25.878 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2
                                                               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=25.861..25.864 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'crew'::text)
                                                                     Buffers: shared read=2
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.054..0.054 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=2
                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.046..0.047 rows=1 loops=1)
                                                   Index Cond: ((info)::text = 'countries'::text)
                                                   Buffers: shared hit=2
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=9.863..9.863 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=9.835..9.838 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'rating'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=24.081..24.082 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=24.056..24.067 rows=2 loops=1)
                                       Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                       Rows Removed by Filter: 5
                                       Buffers: shared read=2
                     ->  Hash  (cost=23182.59..23182.59 rows=143259 width=12) (actual time=1728.534..1728.534 rows=303271 loops=1)
                           Buckets: 524288 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 17128kB
                           Buffers: shared read=25920
                           ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=23.879..1604.573 rows=303271 loops=1)
                                 Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                 Rows Removed by Filter: 2305858
                                 Buffers: shared read=25920
               ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=18.930..18.930 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=18.904..18.909 rows=4 loops=1)
                           Heap Fetches: 0
                           Buffers: shared read=2
         ->  Hash  (cost=4597.20..4597.20 rows=126230 width=23) (actual time=727.496..727.497 rows=126230 loops=1)
               Buckets: 131072  Batches: 1  Memory Usage: 7967kB
               Buffers: shared hit=231714 read=3840
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=79.201..685.097 rows=126230 loops=1)
                     Filter: ((country_code)::text <> '[us]'::text)
                     Rows Removed by Filter: 108767
                     Buffers: shared hit=231714 read=3840
 Planning Time: 14097.293 ms
 Execution Time: 34875.870 ms
(129 rows)

