                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22203.52..22203.52 rows=1 width=96) (actual time=21398.521..21398.521 rows=1 loops=1)
   Buffers: shared hit=44 read=414356
   ->  Hash Join  (cost=8643.20..22203.52 rows=1 width=39) (actual time=8914.679..21381.694 rows=5400 loops=1)
         Hash Cond: (cc.status_id = cct.id)
         Buffers: shared hit=44 read=414356
         ->  Hash Join  (cost=8643.17..22203.48 rows=1 width=43) (actual time=8914.636..21379.763 rows=5400 loops=1)
               Hash Cond: (cc.subject_id = cct.id)
               Buffers: shared hit=40 read=414356
               ->  Hash Join  (cost=8643.14..22203.45 rows=1 width=47) (actual time=8914.618..21377.604 rows=6359 loops=1)
                     Hash Cond: (t.id = cc.movie_id)
                     Buffers: shared hit=39 read=414356
                     ->  Hash Join  (cost=8591.04..22151.35 rows=1 width=55) (actual time=8815.959..21277.588 rows=10634 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared hit=37 read=413627
                           ->  Hash Join  (cost=5946.77..19507.08 rows=1 width=59) (actual time=6179.217..18633.543 rows=10634 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=36 read=358015
                                 ->  Hash Join  (cost=5885.44..19445.70 rows=703 width=63) (actual time=6104.387..18347.489 rows=2161343 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=16 read=357992
                                       ->  Hash Join  (cost=4141.57..17692.96 rows=393 width=55) (actual time=4125.408..15914.343 rows=60388 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=13 read=333541
                                             ->  Hash Join  (cost=4141.52..17689.25 rows=44447 width=59) (actual time=4125.358..15882.683 rows=181500 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=12 read=333541
                                                   ->  Hash Join  (cost=3578.39..17104.08 rows=81430 width=45) (actual time=3449.661..15119.909 rows=98725 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=10 read=325090
                                                         ->  Hash Join  (cost=3578.36..17049.11 rows=570007 width=49) (actual time=3449.629..15068.100 rows=296510 loops=1)
                                                               Hash Cond: (ci.movie_id = t.id)
                                                               Buffers: shared hit=9 read=325090
                                                               ->  Hash Join  (cost=1875.33..15261.03 rows=1043217 width=24) (actual time=1715.911..13038.704 rows=623586 loops=1)
                                                                     Hash Cond: (ci.person_role_id = chn.id)
                                                                     Buffers: shared hit=7 read=289094
                                                                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=12) (actual time=0.006..5886.763 rows=36244344 loops=1)
                                                                           Buffers: shared hit=5 read=252649
                                                                     ->  Hash  (cost=1847.99..1847.99 rows=186251 width=20) (actual time=1715.271..1715.271 rows=180152 loops=1)
                                                                           Buckets: 262144  Batches: 1  Memory Usage: 11979kB
                                                                           Buffers: shared hit=2 read=36445
                                                                           ->  Seq Scan on char_name chn  (cost=0.00..1847.99 rows=186251 width=20) (actual time=3.676..1631.639 rows=180152 loops=1)
                                                                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                                                 Rows Removed by Filter: 2960187
                                                                                 Buffers: shared hit=2 read=36445
                                                               ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=25) (actual time=1728.969..1728.969 rows=1381453 loops=1)
                                                                     Buckets: 2097152  Batches: 1  Memory Usage: 95777kB
                                                                     Buffers: shared hit=2 read=35996
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=21.494..1111.775 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared hit=2 read=35996
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.011 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'movie'::text)
                                                                     Rows Removed by Filter: 6
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=360.56..360.56 rows=1380035 width=14) (actual time=664.116..664.116 rows=1380035 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                         Buffers: shared hit=2 read=8451
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.007..307.008 rows=1380035 loops=1)
                                                               Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.021..0.023 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=1079.84..1079.84 rows=4523930 width=8) (actual time=1952.197..1952.197 rows=4523930 loops=1)
                                             Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                                             Buffers: shared hit=3 read=24451
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..983.274 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                 ->  Hash  (cost=61.32..61.32 rows=10 width=4) (actual time=69.705..69.705 rows=10 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=20 read=23
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=42.019..69.663 rows=10 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                             Buffers: shared hit=20 read=23
                           ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2627.113..2627.113 rows=4167491 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                                 Buffers: shared hit=1 read=55612
                                 ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=23.160..1327.308 rows=4167491 loops=1)
                                       Buffers: shared hit=1 read=55612
                     ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=93.496..93.496 rows=135086 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                           Buffers: shared hit=2 read=729
                           ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=0.080..50.695 rows=135086 loops=1)
                                 Buffers: shared hit=2 read=729
               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.003 rows=1 loops=1)
                           Filter: ((kind)::text = 'cast'::text)
                           Rows Removed by Filter: 3
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.015 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.009 rows=2 loops=1)
                     Filter: ((kind)::text ~~ '%complete%'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared hit=1
 Planning Time: 10452.655 ms
 Execution Time: 21411.512 ms
(107 rows)

