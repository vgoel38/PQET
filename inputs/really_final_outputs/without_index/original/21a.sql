                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=15209.98..15209.98 rows=1 width=96) (actual time=1642922.052..1642922.052 rows=1 loops=1)
   Buffers: shared hit=70397287 read=245224
   ->  Nested Loop  (cost=49.53..15209.98 rows=1 width=48) (actual time=60774.362..1642909.933 rows=1410 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Rows Removed by Join Filter: 427949902
         Buffers: shared hit=70397287 read=245224
         ->  Nested Loop  (cost=49.53..13379.77 rows=1 width=47) (actual time=60704.117..1431030.804 rows=1816 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 131991958
               Buffers: shared hit=53158542 read=209227
               ->  Nested Loop  (cost=49.53..13207.66 rows=1 width=32) (actual time=60646.775..1252048.730 rows=4198 loops=1)
                     Join Filter: (mc.movie_id = ml.movie_id)
                     Rows Removed by Join Filter: 816642554
                     Buffers: shared hit=44887520 read=206235
                     ->  Nested Loop  (cost=49.50..12254.40 rows=1 width=24) (actual time=60093.279..786601.163 rows=684 loops=1)
                           Join Filter: (ml.movie_id = mi.movie_id)
                           Rows Removed by Join Filter: 30624819
                           Buffers: shared hit=32054629 read=187449
                           ->  Nested Loop  (cost=49.50..1520.66 rows=1 width=20) (actual time=1277.309..4607.609 rows=199 loops=1)
                                 Join Filter: (mk.movie_id = ml.movie_id)
                                 Rows Removed by Join Filter: 24409161
                                 Buffers: shared hit=11 read=25559
                                 ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.157..14.628 rows=2315 loops=1)
                                       Hash Cond: (ml.link_type_id = lt.id)
                                       Buffers: shared hit=6 read=161
                                       ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.014..9.662 rows=29997 loops=1)
                                             Buffers: shared hit=2 read=161
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.048..0.049 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.017..0.032 rows=2 loops=1)
                                                   Filter: ((link)::text ~~ '%follow%'::text)
                                                   Rows Removed by Filter: 16
                                                   Buffers: shared hit=1
                                 ->  Materialize  (cost=49.46..1498.11 rows=34 width=4) (actual time=0.039..0.999 rows=10544 loops=2315)
                                       Buffers: shared hit=5 read=25398
                                       ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=90.077..1239.455 rows=10544 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=5 read=25398
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.010..540.768 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=89.825..89.825 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2 read=947
                                                   ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=30.473..89.814 rows=1 loops=1)
                                                         Filter: (keyword = 'sequel'::text)
                                                         Rows Removed by Filter: 134169
                                                         Buffers: shared hit=2 read=947
                           ->  Seq Scan on movie_info mi  (cost=0.00..10711.20 rows=153585 width=4) (actual time=1.607..3916.229 rows=153897 loops=199)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                                 Rows Removed by Filter: 14681823
                                 Buffers: shared hit=32054618 read=161890
                     ->  Hash Join  (cost=0.03..906.58 rows=317997 width=8) (actual time=146.276..585.605 rows=1193928 loops=684)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=12832891 read=18786
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.014..318.377 rows=1271989 loops=684)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 1337140
                                 Buffers: shared hit=12832890 read=18786
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.006 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=0.004..40.034 rows=31442 loops=4198)
                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                     Rows Removed by Filter: 123316
                     Buffers: shared hit=8271022 read=2992
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=910581 width=21) (actual time=0.009..97.576 rows=235656 loops=1816)
               Filter: ((production_year >= 1950) AND (production_year <= 2000))
               Rows Removed by Filter: 429491
               Buffers: shared hit=17238745 read=35997
 Planning Time: 5599.853 ms
 Execution Time: 1642923.323 ms
(76 rows)

