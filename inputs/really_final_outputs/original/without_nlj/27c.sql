                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=15142.52..15142.52 rows=1 width=96) (actual time=11309.760..11309.761 rows=1 loops=1)
   Buffers: shared hit=136250 read=188475
   ->  Merge Join  (cost=13406.04..15142.52 rows=1 width=48) (actual time=11192.584..11287.862 rows=743 loops=1)
         Merge Cond: (t.id = ml.movie_id)
         Buffers: shared hit=136250 read=188475
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1900368 width=21) (actual time=0.010..724.763 rows=107954 loops=1)
               Filter: ((production_year >= 1950) AND (production_year <= 2010))
               Rows Removed by Filter: 30982
               Buffers: shared hit=135965 read=3310
         ->  Sort  (cost=13406.02..13406.02 rows=1 width=51) (actual time=10550.166..10550.248 rows=743 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 129kB
               Buffers: shared hit=285 read=185165
               ->  Hash Join  (cost=2009.79..13406.02 rows=1 width=51) (actual time=9079.140..10497.460 rows=743 loops=1)
                     Hash Cond: (cc.status_id = cct.id)
                     Buffers: shared hit=281 read=185165
                     ->  Hash Join  (cost=2009.75..13405.98 rows=2 width=55) (actual time=9079.040..10497.158 rows=743 loops=1)
                           Hash Cond: (mi.movie_id = ml.movie_id)
                           Buffers: shared hit=277 read=185165
                           ->  Seq Scan on movie_info mi  (cost=0.00..11287.12 rows=936891 width=4) (actual time=22.349..8847.197 rows=936223 loops=1)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                                 Rows Removed by Filter: 13899497
                                 Buffers: shared hit=2 read=161890
                           ->  Hash  (cost=2009.75..2009.75 rows=1 width=51) (actual time=1547.446..1547.446 rows=172 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 24kB
                                 Buffers: shared hit=275 read=23275
                                 ->  Hash Join  (cost=1155.30..2009.75 rows=1 width=51) (actual time=1487.117..1547.367 rows=172 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=275 read=23275
                                       ->  Merge Join  (cost=1149.17..2003.62 rows=60 width=55) (actual time=1427.778..1515.071 rows=3296 loops=1)
                                             Merge Cond: (mk.movie_id = ml.movie_id)
                                             Buffers: shared hit=275 read=23271
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.036..113.980 rows=73898 loops=1)
                                                   Buffers: shared hit=263 read=603
                                             ->  Sort  (cost=1149.15..1149.15 rows=6 width=47) (actual time=1382.064..1382.261 rows=3298 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 61kB
                                                   Buffers: shared hit=12 read=22668
                                                   ->  Hash Join  (cost=1138.45..1149.15 rows=6 width=47) (actual time=1364.843..1381.817 rows=277 loops=1)
                                                         Hash Cond: (ml.link_type_id = lt.id)
                                                         Buffers: shared hit=12 read=22668
                                                         ->  Hash Join  (cost=1138.42..1149.11 rows=106 width=39) (actual time=1363.088..1381.446 rows=620 loops=1)
                                                               Hash Cond: (ml.movie_id = mc.movie_id)
                                                               Buffers: shared hit=11 read=22668
                                                               ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.011..32.474 rows=29997 loops=1)
                                                                     Buffers: shared hit=2 read=161
                                                               ->  Hash  (cost=1138.12..1138.12 rows=2050 width=31) (actual time=1337.080..1337.080 rows=20031 loops=1)
                                                                     Buckets: 32768 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 1533kB
                                                                     Buffers: shared hit=9 read=22507
                                                                     ->  Hash Join  (cost=224.27..1138.12 rows=2050 width=31) (actual time=793.401..1330.086 rows=20031 loops=1)
                                                                           Hash Cond: (cc.subject_id = cct.id)
                                                                           Buffers: shared hit=9 read=22507
                                                                           ->  Hash Join  (cost=224.24..1137.21 rows=8202 width=35) (actual time=793.361..1323.451 rows=28317 loops=1)
                                                                                 Hash Cond: (mc.movie_id = cc.movie_id)
                                                                                 Buffers: shared hit=8 read=22507
                                                                                 ->  Hash Join  (cost=172.14..1074.21 rows=66524 width=23) (actual time=698.780..1170.099 rows=224256 loops=1)
                                                                                       Hash Cond: (mc.company_type_id = ct.id)
                                                                                       Buffers: shared hit=6 read=21778
                                                                                       ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=160.943..1112.482 rows=240875 loops=1)
                                                                                             Hash Cond: (mc.company_id = cn.id)
                                                                                             Buffers: shared hit=5 read=21778
                                                                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.017..722.968 rows=1271989 loops=1)
                                                                                                   Filter: (note IS NULL)
                                                                                                   Rows Removed by Filter: 1337140
                                                                                                   Buffers: shared hit=3 read=18786
                                                                                             ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=159.641..159.642 rows=48302 loops=1)
                                                                                                   Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                                                                   Buffers: shared hit=2 read=2992
                                                                                                   ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=20.237..140.002 rows=48302 loops=1)
                                                                                                         Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                                                                         Rows Removed by Filter: 186695
                                                                                                         Buffers: shared hit=2 read=2992
                                                                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=1
                                                                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=1)
                                                                                                   Filter: ((kind)::text = 'production companies'::text)
                                                                                                   Rows Removed by Filter: 3
                                                                                                   Buffers: shared hit=1
                                                                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=91.845..91.845 rows=135086 loops=1)
                                                                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                       Buffers: shared hit=2 read=729
                                                                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=0.176..46.343 rows=135086 loops=1)
                                                                                             Buffers: shared hit=2 read=729
                                                                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.010 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'cast'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared hit=1
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.034..0.034 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.013..0.026 rows=2 loops=1)
                                                                     Filter: ((link)::text ~~ '%follow%'::text)
                                                                     Rows Removed by Filter: 16
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=31.810..31.810 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=31.793..31.796 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.042..0.042 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.017..0.020 rows=2 loops=1)
                                 Filter: ((kind)::text ~~ 'complete%'::text)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=1
 Planning Time: 11414.430 ms
 Execution Time: 11310.572 ms
(113 rows)

