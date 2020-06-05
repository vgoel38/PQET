                                                                                                     QUERY PLAN                                                                                                      
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10955.79..10955.79 rows=1 width=96) (actual time=10787.856..10787.856 rows=1 loops=1)
   Buffers: shared hit=136287 read=187941
   ->  Hash Join  (cost=3686.52..10955.79 rows=1 width=48) (actual time=9484.758..10787.781 rows=38 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=136287 read=187941
         ->  Hash Join  (cost=3686.48..10955.76 rows=1 width=52) (actual time=9484.722..10787.710 rows=38 loops=1)
               Hash Cond: (mi.movie_id = ml.movie_id)
               Buffers: shared hit=136283 read=187941
               ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=116723 width=4) (actual time=27.694..8529.995 rows=116559 loops=1)
                     Filter: (info = ANY ('{Germany,German}'::text[]))
                     Rows Removed by Filter: 14719161
                     Buffers: shared hit=2 read=161890
               ->  Hash  (cost=3686.48..3686.48 rows=1 width=68) (actual time=2237.618..2237.618 rows=92 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 18kB
                     Buffers: shared hit=136281 read=26051
                     ->  Merge Join  (cost=1954.88..3686.48 rows=1 width=68) (actual time=2237.470..2237.576 rows=92 loops=1)
                           Merge Cond: (t.id = ml.movie_id)
                           Buffers: shared hit=136281 read=26051
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1042800 width=21) (actual time=6.568..817.403 rows=67419 loops=1)
                                 Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                 Rows Removed by Filter: 71517
                                 Buffers: shared hit=135965 read=3310
                           ->  Sort  (cost=1954.87..1954.87 rows=1 width=47) (actual time=1411.912..1411.941 rows=422 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 80kB
                                 Buffers: shared hit=316 read=22741
                                 ->  Hash Join  (cost=1050.43..1954.87 rows=1 width=47) (actual time=432.409..1386.110 rows=422 loops=1)
                                       Hash Cond: (mc.movie_id = ml.movie_id)
                                       Buffers: shared hit=312 read=22741
                                       ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=167.827..1123.315 rows=240875 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=5 read=21778
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.057..734.647 rows=1271989 loops=1)
                                                   Filter: (note IS NULL)
                                                   Rows Removed by Filter: 1337140
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=161.992..161.992 rows=48302 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=26.594..143.729 rows=48302 loops=1)
                                                         Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                         Rows Removed by Filter: 186695
                                                         Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=878.32..878.32 rows=1 width=20) (actual time=236.593..236.593 rows=199 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 18kB
                                             Buffers: shared hit=307 read=963
                                             ->  Hash Join  (cost=18.76..878.32 rows=1 width=20) (actual time=98.533..236.511 rows=199 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=307 read=963
                                                   ->  Merge Join  (cost=12.62..870.82 rows=16752 width=24) (actual time=23.389..180.501 rows=17543 loops=1)
                                                         Merge Cond: (mk.movie_id = ml.movie_id)
                                                         Buffers: shared hit=307 read=959
                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.037..127.536 rows=97855 loops=1)
                                                               Buffers: shared hit=304 read=798
                                                         ->  Sort  (cost=12.61..12.74 rows=1666 width=16) (actual time=23.317..24.802 rows=18063 loops=1)
                                                               Sort Key: ml.movie_id
                                                               Sort Method: quicksort  Memory: 205kB
                                                               Buffers: shared hit=3 read=161
                                                               ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.113..22.474 rows=2315 loops=1)
                                                                     Hash Cond: (ml.link_type_id = lt.id)
                                                                     Buffers: shared hit=3 read=161
                                                                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.014..17.322 rows=29997 loops=1)
                                                                           Buffers: shared hit=2 read=161
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.033..0.033 rows=2 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.012..0.025 rows=2 loops=1)
                                                                                 Filter: ((link)::text ~~ '%follow%'::text)
                                                                                 Rows Removed by Filter: 16
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=52.988..52.988 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=52.966..52.970 rows=1 loops=1)
                                                               Index Cond: (keyword = 'sequel'::text)
                                                               Buffers: shared read=4
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
 Planning Time: 5698.846 ms
 Execution Time: 10788.379 ms
(85 rows)

