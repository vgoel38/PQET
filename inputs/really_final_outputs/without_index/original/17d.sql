                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20288.94..20288.94 rows=1 width=32) (actual time=1947098.347..1947098.347 rows=1 loops=1)
   Buffers: shared hit=89372983 read=391393
   ->  Nested Loop  (cost=3854.94..20288.94 rows=2 width=15) (actual time=1577736.078..1947094.929 rows=11538 loops=1)
         Join Filter: (mc.company_id = cn.id)
         Rows Removed by Join Filter: 2711383848
         Buffers: shared hit=89372983 read=391393
         ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=61.123..119.552 rows=234997 loops=1)
               Buffers: shared hit=2 read=2992
         ->  Materialize  (cost=3854.94..20073.30 rows=2 width=19) (actual time=0.023..7.213 rows=11538 loops=234997)
               Buffers: shared hit=89372981 read=388401
               ->  Nested Loop  (cost=3854.94..20073.30 rows=2 width=19) (actual time=5456.598..1577585.729 rows=11538 loops=1)
                     Join Filter: (ci.movie_id = mc.movie_id)
                     Rows Removed by Join Filter: 5145190850
                     Buffers: shared hit=89372981 read=388401
                     ->  Nested Loop  (cost=3854.94..18920.58 rows=1 width=27) (actual time=5171.699..674704.511 rows=1972 loops=1)
                           Join Filter: (ci.movie_id = t.id)
                           Rows Removed by Join Filter: 3642735783
                           Buffers: shared hit=52339859 read=369615
                           ->  Hash Join  (cost=3854.94..17245.51 rows=1 width=23) (actual time=3871.885..14119.540 rows=1972 loops=1)
                                 Hash Cond: (ci.movie_id = mk.movie_id)
                                 Buffers: shared hit=13 read=333660
                                 ->  Hash Join  (cost=2356.83..15742.53 rows=41806 width=19) (actual time=2609.651..12851.454 rows=48290 loops=1)
                                       Hash Cond: (ci.person_id = n.id)
                                       Buffers: shared hit=5 read=308262
                                       ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.008..5049.883 rows=36244344 loops=1)
                                             Buffers: shared hit=4 read=252650
                                       ->  Hash  (cost=2356.12..2356.12 rows=4807 width=19) (actual time=2601.347..2601.347 rows=5216 loops=1)
                                             Buckets: 8192  Batches: 1  Memory Usage: 339kB
                                             Buffers: shared hit=1 read=55612
                                             ->  Seq Scan on name n  (cost=0.00..2356.12 rows=4807 width=19) (actual time=7.986..2597.043 rows=5216 loops=1)
                                                   Filter: (name ~~ '%Bert%'::text)
                                                   Rows Removed by Filter: 4162275
                                                   Buffers: shared hit=1 read=55612
                                 ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1247.330..1247.330 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared hit=5 read=25398
                                       ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=88.048..1236.927 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=5 read=25398
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..533.804 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=87.967..87.968 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2 read=947
                                                   ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=27.082..87.957 rows=1 loops=1)
                                                         Filter: (keyword = 'character-name-in-title'::text)
                                                         Rows Removed by Filter: 134169
                                                         Buffers: shared hit=2 read=947
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=0.008..138.928 rows=1847230 loops=1972)
                                 Buffers: shared hit=52339846 read=35955
                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.002..179.752 rows=2609129 loops=1972)
                           Buffers: shared hit=37033122 read=18786
 Planning Time: 5358.184 ms
 Execution Time: 1947099.479 ms
(54 rows)

