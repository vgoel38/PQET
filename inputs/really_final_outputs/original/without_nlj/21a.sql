                                                                                                     QUERY PLAN                                                                                                      
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14414.95..14414.95 rows=1 width=96) (actual time=11860.659..11860.659 rows=1 loops=1)
   Buffers: shared hit=136321 read=187941
   ->  Hash Join  (cost=3685.76..14414.95 rows=1 width=48) (actual time=10483.739..11833.934 rows=1410 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=136321 read=187941
         ->  Hash Join  (cost=3685.73..14414.91 rows=1 width=52) (actual time=10483.705..11833.269 rows=1505 loops=1)
               Hash Cond: (mi.movie_id = ml.movie_id)
               Buffers: shared hit=136317 read=187941
               ->  Seq Scan on movie_info mi  (cost=0.00..10711.20 rows=154416 width=4) (actual time=36.584..9638.552 rows=153897 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                     Rows Removed by Filter: 14681823
                     Buffers: shared hit=2 read=161890
               ->  Hash  (cost=3685.73..3685.73 rows=1 width=68) (actual time=2172.890..2172.890 rows=330 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 43kB
                     Buffers: shared hit=136315 read=26051
                     ->  Merge Join  (cost=1954.88..3685.73 rows=1 width=68) (actual time=2090.181..2172.757 rows=330 loops=1)
                           Merge Cond: (t.id = ml.movie_id)
                           Buffers: shared hit=136315 read=26051
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=0.038..759.821 rows=44154 loops=1)
                                 Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                 Rows Removed by Filter: 94816
                                 Buffers: shared hit=135999 read=3310
                           ->  Sort  (cost=1954.87..1954.87 rows=1 width=47) (actual time=1408.074..1408.105 rows=422 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 80kB
                                 Buffers: shared hit=316 read=22741
                                 ->  Hash Join  (cost=1050.43..1954.87 rows=1 width=47) (actual time=432.436..1386.668 rows=422 loops=1)
                                       Hash Cond: (mc.movie_id = ml.movie_id)
                                       Buffers: shared hit=312 read=22741
                                       ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=167.679..1123.565 rows=240875 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=5 read=21778
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.057..736.856 rows=1271989 loops=1)
                                                   Filter: (note IS NULL)
                                                   Rows Removed by Filter: 1337140
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=161.990..161.990 rows=48302 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=26.594..143.465 rows=48302 loops=1)
                                                         Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                         Rows Removed by Filter: 186695
                                                         Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=878.32..878.32 rows=1 width=20) (actual time=236.776..236.776 rows=199 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 18kB
                                             Buffers: shared hit=307 read=963
                                             ->  Hash Join  (cost=18.76..878.32 rows=1 width=20) (actual time=98.680..236.691 rows=199 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=307 read=963
                                                   ->  Merge Join  (cost=12.62..870.82 rows=16752 width=24) (actual time=32.363..188.558 rows=17543 loops=1)
                                                         Merge Cond: (mk.movie_id = ml.movie_id)
                                                         Buffers: shared hit=307 read=959
                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.037..123.541 rows=97855 loops=1)
                                                               Buffers: shared hit=304 read=798
                                                         ->  Sort  (cost=12.61..12.74 rows=1666 width=16) (actual time=32.248..33.870 rows=18063 loops=1)
                                                               Sort Key: ml.movie_id
                                                               Sort Method: quicksort  Memory: 205kB
                                                               Buffers: shared hit=3 read=161
                                                               ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.121..30.490 rows=2315 loops=1)
                                                                     Hash Cond: (ml.link_type_id = lt.id)
                                                                     Buffers: shared hit=3 read=161
                                                                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.015..18.614 rows=29997 loops=1)
                                                                           Buffers: shared hit=2 read=161
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.042..0.042 rows=2 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.013..0.027 rows=2 loops=1)
                                                                                 Filter: ((link)::text ~~ '%follow%'::text)
                                                                                 Rows Removed by Filter: 16
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=44.789..44.789 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=44.774..44.777 rows=1 loops=1)
                                                               Index Cond: (keyword = 'sequel'::text)
                                                               Buffers: shared read=4
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.008 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
 Planning Time: 5934.219 ms
 Execution Time: 11861.143 ms
(85 rows)

