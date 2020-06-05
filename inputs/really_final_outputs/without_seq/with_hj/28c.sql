                                                                                                                      QUERY PLAN                                                                                                                       
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=726542.07..726542.07 rows=1 width=96) (actual time=36296.223..36296.223 rows=1 loops=1)
   Buffers: shared hit=2931302 read=325261
   ->  Hash Join  (cost=106564.04..726542.07 rows=1 width=42) (actual time=25279.693..36279.517 rows=8373 loops=1)
         Hash Cond: (mi_idx.info_type_id = it.id)
         Buffers: shared hit=2931302 read=325261
         ->  Hash Join  (cost=106557.91..726535.94 rows=1 width=46) (actual time=25262.911..36257.926 rows=24852 loops=1)
               Hash Cond: (t.id = mi_idx.movie_id)
               Buffers: shared hit=2931299 read=325259
               ->  Hash Join  (cost=94222.56..714200.60 rows=1 width=56) (actual time=23546.041..34534.125 rows=8493 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=2917734 read=313033
                     ->  Hash Join  (cost=94216.44..714194.47 rows=1 width=60) (actual time=20488.135..34531.002 rows=9609 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=2917732 read=313033
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..619894.76 rows=715132 width=8) (actual time=3256.118..17432.230 rows=716210 loops=1)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                 Rows Removed by Filter: 14119510
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=94216.42..94216.42 rows=1 width=52) (actual time=16980.800..16980.800 rows=8286 loops=1)
                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 820kB
                                 Buffers: shared hit=2830150 read=110604
                                 ->  Hash Join  (cost=54561.81..94216.42 rows=1 width=52) (actual time=14200.113..16975.862 rows=8286 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=2830150 read=110604
                                       ->  Hash Join  (cost=54552.63..94207.24 rows=1 width=56) (actual time=14175.007..16946.875 rows=8621 loops=1)
                                             Hash Cond: (cc.status_id = cct.id)
                                             Buffers: shared hit=2830150 read=110602
                                             ->  Hash Join  (cost=54546.50..94201.11 rows=1 width=60) (actual time=14166.056..16933.456 rows=14312 loops=1)
                                                   Hash Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=2830150 read=110600
                                                   ->  Hash Join  (cost=49930.77..89585.38 rows=1 width=45) (actual time=13379.329..16137.569 rows=14998 loops=1)
                                                         Hash Cond: (mc.company_type_id = ct.id)
                                                         Buffers: shared hit=2598436 read=106760
                                                         ->  Hash Join  (cost=49924.65..89579.26 rows=1 width=49) (actual time=13354.753..16107.147 rows=14998 loops=1)
                                                               Hash Cond: (t.id = mc.movie_id)
                                                               Buffers: shared hit=2598436 read=106758
                                                               ->  Hash Join  (cost=26721.03..66375.63 rows=1 width=37) (actual time=11425.875..14172.681 rows=1394 loops=1)
                                                                     Hash Cond: (cc.subject_id = cct.id)
                                                                     Buffers: shared hit=2598436 read=80838
                                                                     ->  Hash Join  (cost=26714.90..66369.51 rows=3 width=41) (actual time=11425.816..14171.726 rows=1723 loops=1)
                                                                           Hash Cond: (t.id = cc.movie_id)
                                                                           Buffers: shared hit=2598434 read=80838
                                                                           ->  Hash Join  (cost=23411.57..63066.17 rows=54 width=29) (actual time=10886.625..13759.027 rows=9739 loops=1)
                                                                                 Hash Cond: (mk.movie_id = t.id)
                                                                                 Buffers: shared hit=2511514 read=79735
                                                                                 ->  Hash Join  (cost=24.54..39679.13 rows=135 width=4) (actual time=89.304..2942.849 rows=37091 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=21644 read=36827
                                                                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=25.284..2073.623 rows=4523930 loops=1)
                                                                                             Buffers: shared hit=21636 read=36817
                                                                                       ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=63.513..63.513 rows=3 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=8 read=10
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=38.553..63.476 rows=3 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                   Buffers: shared hit=8 read=10
                                                                                 ->  Hash  (cost=23238.35..23238.35 rows=1012920 width=25) (actual time=10788.888..10788.888 rows=1012920 loops=1)
                                                                                       Buckets: 1048576  Batches: 1  Memory Usage: 66484kB
                                                                                       Buffers: shared hit=2489870 read=42908
                                                                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=36.774..10332.587 rows=1012920 loops=1)
                                                                                             Filter: (production_year > 2005)
                                                                                             Rows Removed by Filter: 1515392
                                                                                             Buffers: shared hit=2489870 read=42908
                                                                           ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=407.661..407.661 rows=135086 loops=1)
                                                                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                 Buffers: shared hit=86920 read=1103
                                                                                 ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=44.137..335.613 rows=135086 loops=1)
                                                                                       Buffers: shared hit=86920 read=1103
                                                                     ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=2
                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.023..0.024 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'cast'::text)
                                                                                 Buffers: shared hit=2
                                                               ->  Hash  (cost=23182.59..23182.59 rows=143259 width=12) (actual time=1927.591..1927.591 rows=303271 loops=1)
                                                                     Buckets: 524288 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 17128kB
                                                                     Buffers: shared read=25920
                                                                     ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=24.687..1794.656 rows=303271 loops=1)
                                                                           Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                           Rows Removed by Filter: 2305858
                                                                           Buffers: shared read=25920
                                                         ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=24.557..24.557 rows=4 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2
                                                               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=24.537..24.542 rows=4 loops=1)
                                                                     Heap Fetches: 0
                                                                     Buffers: shared read=2
                                                   ->  Hash  (cost=4597.20..4597.20 rows=126230 width=23) (actual time=785.675..785.675 rows=126230 loops=1)
                                                         Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                                         Buffers: shared hit=231714 read=3840
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=43.040..742.368 rows=126230 loops=1)
                                                               Filter: ((country_code)::text <> '[us]'::text)
                                                               Rows Removed by Filter: 108767
                                                               Buffers: shared hit=231714 read=3840
                                             ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=8.917..8.917 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=8.901..8.904 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'complete'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=25.067..25.067 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=25.040..25.052 rows=2 loops=1)
                                                   Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                   Rows Removed by Filter: 5
                                                   Buffers: shared read=2
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=2
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'countries'::text)
                                 Buffers: shared hit=2
               ->  Hash  (cost=12138.14..12138.14 rows=1343551 width=14) (actual time=1701.248..1701.248 rows=1343555 loops=1)
                     Buckets: 2097152  Batches: 1  Memory Usage: 77785kB
                     Buffers: shared hit=13565 read=12226
                     ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1343551 width=14) (actual time=60.205..1179.272 rows=1343555 loops=1)
                           Filter: (info < '8.5'::text)
                           Rows Removed by Filter: 36480
                           Buffers: shared hit=13565 read=12226
         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=16.756..16.756 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=16.734..16.737 rows=1 loops=1)
                     Index Cond: ((info)::text = 'rating'::text)
                     Buffers: shared read=2
 Planning Time: 14108.574 ms
 Execution Time: 36300.051 ms
(128 rows)

