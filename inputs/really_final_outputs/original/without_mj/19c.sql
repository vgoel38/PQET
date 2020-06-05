                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10972.44..10972.44 rows=1 width=64) (actual time=1281380.689..1281380.690 rows=1 loops=1)
   Buffers: shared hit=23706342 read=487869
   ->  Nested Loop  (cost=140.98..10972.44 rows=1 width=32) (actual time=83974.780..1281365.729 rows=3575 loops=1)
         Buffers: shared hit=23706342 read=487869
         ->  Nested Loop  (cost=140.96..10972.26 rows=1 width=36) (actual time=83944.628..1278375.309 rows=3744 loops=1)
               Join Filter: (n.id = an.person_id)
               Buffers: shared hit=23692428 read=487453
               ->  Nested Loop  (cost=140.95..10972.20 rows=1 width=44) (actual time=83907.004..1274181.041 rows=2830 loops=1)
                     Buffers: shared hit=23682017 read=487153
                     ->  Hash Join  (cost=140.94..10932.90 rows=149 width=25) (actual time=4896.059..1217828.414 rows=132216 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=23160633 read=478728
                           ->  Nested Loop  (cost=140.90..10932.70 rows=1788 width=29) (actual time=4081.561..1217573.390 rows=436929 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=23160630 read=478727
                                 ->  Nested Loop  (cost=140.89..9702.41 rows=2806 width=29) (actual time=1754.677..117710.870 rows=391371 loops=1)
                                       Join Filter: (mi.movie_id = t.id)
                                       Buffers: shared hit=3360011 read=228273
                                       ->  Hash Join  (cost=140.87..9373.15 rows=5135 width=8) (actual time=1701.559..21690.833 rows=424729 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=1699024 read=189270
                                             ->  Nested Loop  (cost=0.01..9231.13 rows=14224 width=12) (actual time=1562.548..20631.424 rows=890059 loops=1)
                                                   Buffers: shared hit=1699024 read=186276
                                                   ->  Nested Loop  (cost=0.00..8473.39 rows=3969 width=4) (actual time=1535.158..11121.860 rows=451039 loops=1)
                                                         Join Filter: (it.id = mi.info_type_id)
                                                         Rows Removed by Join Filter: 65
                                                         Buffers: shared hit=6670 read=162314
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=14.012..14.036 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared read=1
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=687.854..10829.403 rows=451104 loops=1)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                               Rows Removed by Filter: 14384616
                                                               Buffers: shared hit=6670 read=162313
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.19 rows=2 width=8) (actual time=0.015..0.019 rows=2 loops=451039)
                                                         Index Cond: (movie_id = mi.movie_id)
                                                         Buffers: shared hit=1692354 read=23962
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=137.960..137.960 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.186..107.849 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared read=2994
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.224..0.224 rows=1 loops=424729)
                                             Index Cond: (id = mc.movie_id)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=1660987 read=39003
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=16) (actual time=2.516..2.808 rows=1 loops=391371)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 48
                                       Buffers: shared hit=19800619 read=250454
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.079..0.079 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.071..0.073 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared read=1
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.425..0.425 rows=0 loops=132216)
                           Index Cond: (id = ci.person_id)
                           Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=521384 read=8425
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=1.413..1.479 rows=1 loops=2830)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=10411 read=300
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=4) (actual time=0.796..0.796 rows=1 loops=3744)
               Index Cond: (id = ci.person_role_id)
               Buffers: shared hit=13914 read=416
 Planning Time: 6763.065 ms
 Execution Time: 1281381.305 ms
(75 rows)

