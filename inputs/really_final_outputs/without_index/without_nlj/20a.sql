                                                                                       QUERY PLAN                                                                                       
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21430.56..21430.56 rows=1 width=32) (actual time=19590.783..19590.784 rows=1 loops=1)
   Buffers: shared hit=36 read=405902
   ->  Hash Join  (cost=8044.46..21430.56 rows=1 width=17) (actual time=8496.846..19590.735 rows=33 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=36 read=405902
         ->  Hash Join  (cost=5400.18..18786.29 rows=1 width=21) (actual time=5847.746..16941.615 rows=33 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=32 read=350290
               ->  Hash Join  (cost=2091.90..15477.60 rows=3513 width=8) (actual time=1730.606..13786.777 rows=556 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=7 read=289094
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=12) (actual time=0.007..7095.018 rows=36244344 loops=1)
                           Buffers: shared hit=5 read=252649
                     ->  Hash  (cost=2091.81..2091.81 rows=628 width=4) (actual time=1717.114..1717.114 rows=30 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 10kB
                           Buffers: shared hit=2 read=36445
                           ->  Seq Scan on char_name chn  (cost=0.00..2091.81 rows=628 width=4) (actual time=55.130..1717.013 rows=30 loops=1)
                                 Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                                 Rows Removed by Filter: 3140309
                                 Buffers: shared hit=2 read=36445
               ->  Hash  (cost=3308.29..3308.29 rows=1 width=29) (actual time=3154.611..3154.611 rows=6016 loops=1)
                     Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 438kB
                     Buffers: shared hit=25 read=61196
                     ->  Hash Join  (cost=1549.50..3308.29 rows=1 width=29) (actual time=2429.767..3151.536 rows=6016 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared hit=25 read=61196
                           ->  Hash Join  (cost=0.03..1720.76 rows=326753 width=21) (actual time=74.507..1641.551 rows=492483 loops=1)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared hit=3 read=35996
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=2287272 width=25) (actual time=12.064..1173.138 rows=2287271 loops=1)
                                       Filter: (production_year > 1950)
                                       Rows Removed by Filter: 241041
                                       Buffers: shared hit=2 read=35996
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.031..0.031 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.021 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared hit=1
                           ->  Hash  (cost=1549.47..1549.47 rows=5 width=8) (actual time=1425.407..1425.407 rows=8765 loops=1)
                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 471kB
                                 Buffers: shared hit=22 read=25200
                                 ->  Hash Join  (cost=100.79..1549.47 rows=5 width=8) (actual time=237.972..1422.487 rows=8765 loops=1)
                                       Hash Cond: (mk.movie_id = cc.movie_id)
                                       Buffers: shared hit=22 read=25200
                                       ->  Hash Join  (cost=49.06..1497.70 rows=270 width=4) (actual time=108.904..1282.886 rows=35548 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=18 read=24471
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.010..574.594 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=49.06..49.06 rows=8 width=4) (actual time=87.816..87.816 rows=8 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=15 read=20
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=35.535..87.772 rows=8 loops=1)
                                                         Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                         Buffers: shared hit=15 read=20
                                       ->  Hash  (cost=50.49..50.49 rows=8443 width=4) (actual time=127.493..127.493 rows=85941 loops=1)
                                             Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                             Buffers: shared hit=4 read=729
                                             ->  Hash Join  (cost=0.06..50.49 rows=8443 width=4) (actual time=26.561..106.367 rows=85941 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=4 read=729
                                                   ->  Hash Join  (cost=0.03..46.83 rows=33772 width=8) (actual time=26.500..79.422 rows=85941 loops=1)
                                                         Hash Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=3 read=729
                                                         ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=26.424..43.201 rows=135086 loops=1)
                                                               Buffers: shared hit=2 read=729
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.030..0.030 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.020 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'cast'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.030..0.030 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.018..0.021 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=1
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2639.278..2639.279 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=42.436..1355.256 rows=4167491 loops=1)
                     Buffers: shared hit=1 read=55612
 Planning Time: 5853.005 ms
 Execution Time: 19595.066 ms
(89 rows)

