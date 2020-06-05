                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14462.73..14462.73 rows=1 width=64) (actual time=13295.521..13295.521 rows=1 loops=1)
   Buffers: shared hit=20 read=251253
   ->  Hash Join  (cost=12758.77..14462.73 rows=10 width=59) (actual time=11600.673..13294.150 rows=2271 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=20 read=251253
         ->  Hash Join  (cost=12700.04..14403.99 rows=10 width=63) (actual time=11515.780..13207.843 rows=2271 loops=1)
               Hash Cond: (t.id = at.movie_id)
               Buffers: shared hit=15 read=250306
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=20.063..1389.452 rows=1749032 loops=1)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 779280
                     Buffers: shared hit=1 read=35997
               ->  Hash  (cost=12700.03..12700.03 rows=14 width=62) (actual time=11471.849..11471.849 rows=2271 loops=1)
                     Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 191kB
                     Buffers: shared hit=14 read=214309
                     ->  Hash Join  (cost=11093.34..12700.03 rows=14 width=62) (actual time=10198.157..11471.001 rows=2271 loops=1)
                           Hash Cond: (mk.movie_id = at.movie_id)
                           Buffers: shared hit=14 read=214309
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..718.207 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=11093.34..11093.34 rows=1 width=54) (actual time=10174.713..10174.713 rows=284 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 26kB
                                 Buffers: shared hit=11 read=189858
                                 ->  Hash Join  (cost=1533.94..11093.34 rows=1 width=54) (actual time=3283.637..10174.443 rows=284 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=11 read=189858
                                       ->  Hash Join  (cost=1533.91..11093.30 rows=1 width=58) (actual time=3283.579..10174.144 rows=284 loops=1)
                                             Hash Cond: (at.movie_id = mc.movie_id)
                                             Buffers: shared hit=10 read=189858
                                             ->  Hash Join  (cost=272.32..9831.72 rows=1 width=50) (actual time=1855.277..8745.586 rows=120 loops=1)
                                                   Hash Cond: (mi.movie_id = at.movie_id)
                                                   Buffers: shared hit=5 read=168080
                                                   ->  Hash Join  (cost=0.05..9559.43 rows=3 width=46) (actual time=1543.161..8439.703 rows=1783 loops=1)
                                                         Hash Cond: (mi.info_type_id = it1.id)
                                                         Buffers: shared hit=3 read=161890
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=328 width=50) (actual time=1543.076..8438.275 rows=1783 loops=1)
                                                               Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                               Rows Removed by Filter: 14833937
                                                               Buffers: shared hit=2 read=161890
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.041..0.041 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.025..0.035 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'release dates'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=303.231..303.231 rows=361472 loops=1)
                                                         Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                         Buffers: shared hit=2 read=6190
                                                         ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=3.825..176.988 rows=361472 loops=1)
                                                               Buffers: shared hit=2 read=6190
                                             ->  Hash  (cost=1123.32..1123.32 rows=941996 width=8) (actual time=1422.711..1422.711 rows=1153798 loops=1)
                                                   Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 61455kB
                                                   Buffers: shared hit=5 read=21778
                                                   ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=8) (actual time=140.548..1080.249 rows=1153798 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=5 read=21778
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.013..296.335 rows=2609129 loops=1)
                                                               Buffers: shared hit=3 read=18786
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=139.851..139.851 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared hit=2 read=2992
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=4.558..110.429 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.022..0.022 rows=4 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.007..0.011 rows=4 loops=1)
                                                   Buffers: shared hit=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=82.865..82.865 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared hit=2 read=947
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.177..43.064 rows=134170 loops=1)
                     Buffers: shared hit=2 read=947
 Planning Time: 9393.020 ms
 Execution Time: 13318.526 ms
(78 rows)

