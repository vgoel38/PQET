                                                                           QUERY PLAN                                                                            
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10893.19..10893.19 rows=1 width=64) (actual time=11749.115..11749.116 rows=1 loops=1)
   Buffers: shared hit=16 read=228116
   ->  Nested Loop  (cost=2510.17..10893.19 rows=1 width=59) (actual time=8133.917..11749.082 rows=10 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Rows Removed by Join Filter: 8498
         Buffers: shared hit=16 read=228116
         ->  Hash Join  (cost=476.23..7818.52 rows=1027 width=50) (actual time=5213.059..8996.913 rows=4 loops=1)
               Hash Cond: (mi.movie_id = mi_idx.movie_id)
               Buffers: shared hit=9 read=170341
               ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=46) (actual time=4380.706..8361.285 rows=121863 loops=1)
                     Hash Cond: (mi.info_type_id = it1.id)
                     Buffers: shared hit=6 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=50) (actual time=7.865..5431.228 rows=14835720 loops=1)
                           Buffers: shared hit=2 read=161890
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.105..0.105 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.090..0.094 rows=1 loops=1)
                                 Filter: ((info)::text = 'budget'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
               ->  Hash  (cost=474.39..474.39 rows=12213 width=4) (actual time=620.775..620.775 rows=10 loops=1)
                     Buckets: 16384  Batches: 1  Memory Usage: 129kB
                     Buffers: shared hit=3 read=8451
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=4) (actual time=620.760..620.764 rows=10 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it2.id)
                           Buffers: shared hit=3 read=8451
                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=8) (actual time=0.008..336.791 rows=1380035 loops=1)
                                 Buffers: shared hit=2 read=8451
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.020 rows=1 loops=1)
                                       Filter: ((info)::text = 'bottom 10 rank'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
         ->  Materialize  (cost=2033.94..3016.61 rows=252 width=25) (actual time=466.602..687.688 rows=2127 loops=4)
               Buffers: shared hit=7 read=57775
               ->  Hash Join  (cost=2033.94..3016.57 rows=252 width=25) (actual time=1866.393..2749.241 rows=2127 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=7 read=57775
                     ->  Hash Join  (cost=2033.91..3016.48 rows=505 width=29) (actual time=1866.344..2748.407 rows=2127 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=6 read=57775
                           ->  Hash Join  (cost=1893.05..2875.51 rows=1398 width=33) (actual time=1723.497..2603.425 rows=3968 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=4 read=54783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.007..443.879 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=1892.85..1892.85 rows=1355 width=21) (actual time=1714.766..1714.766 rows=2536 loops=1)
                                       Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 195kB
                                       Buffers: shared hit=1 read=35997
                                       ->  Seq Scan on title t  (cost=0.00..1892.85 rows=1355 width=21) (actual time=7.191..1712.114 rows=2536 loops=1)
                                             Filter: ((production_year > 2000) AND ((title ~~ 'Birdemic%'::text) OR (title ~~ '%Movie%'::text)))
                                             Rows Removed by Filter: 2525776
                                             Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=142.448..142.448 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=7.085..114.816 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
                     ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.017..0.017 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.010..0.012 rows=2 loops=1)
                                 Filter: ((kind IS NOT NULL) AND (((kind)::text = 'production companies'::text) OR ((kind)::text = 'distributors'::text)))
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=1
 Planning Time: 4856.803 ms
 Execution Time: 11749.830 ms
(72 rows)

