                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=11768.46..11768.46 rows=1 width=96) (actual time=715386.013..715386.014 rows=1 loops=1)
   Buffers: shared hit=45495213 read=245224
   ->  Nested Loop  (cost=49.53..11768.46 rows=1 width=48) (actual time=98501.345..715385.829 rows=38 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Rows Removed by Join Filter: 284893882
         Buffers: shared hit=45495213 read=245224
         ->  Nested Loop  (cost=49.53..9918.84 rows=1 width=47) (actual time=40966.239..590303.362 rows=308 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 23320358
               Buffers: shared hit=35711050 read=209227
               ->  Nested Loop  (cost=49.53..9746.73 rows=1 width=32) (actual time=40903.889..558488.815 rows=730 loops=1)
                     Join Filter: (mc.movie_id = ml.movie_id)
                     Rows Removed by Join Filter: 140882774
                     Buffers: shared hit=34252946 read=206235
                     ->  Nested Loop  (cost=49.50..8793.47 rows=1 width=24) (actual time=40344.435..478128.422 rows=118 loops=1)
                           Join Filter: (ml.movie_id = mi.movie_id)
                           Rows Removed by Join Filter: 23195123
                           Buffers: shared hit=32054629 read=187449
                           ->  Nested Loop  (cost=49.50..1520.66 rows=1 width=20) (actual time=1294.421..4648.343 rows=199 loops=1)
                                 Join Filter: (mk.movie_id = ml.movie_id)
                                 Rows Removed by Join Filter: 24409161
                                 Buffers: shared hit=11 read=25559
                                 ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=0.150..22.367 rows=2315 loops=1)
                                       Hash Cond: (ml.link_type_id = lt.id)
                                       Buffers: shared hit=6 read=161
                                       ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.014..17.200 rows=29997 loops=1)
                                             Buffers: shared hit=2 read=161
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.045..0.045 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.017..0.031 rows=2 loops=1)
                                                   Filter: ((link)::text ~~ '%follow%'::text)
                                                   Rows Removed by Filter: 16
                                                   Buffers: shared hit=1
                                 ->  Materialize  (cost=49.46..1498.11 rows=34 width=4) (actual time=0.044..1.004 rows=10544 loops=2315)
                                       Buffers: shared hit=5 read=25398
                                       ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=101.388..1256.401 rows=10544 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=5 read=25398
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.010..551.245 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=101.130..101.130 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2 read=947
                                                   ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=41.441..101.111 rows=1 loops=1)
                                                         Filter: (keyword = 'sequel'::text)
                                                         Rows Removed by Filter: 134169
                                                         Buffers: shared hit=2 read=947
                           ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=116747 width=4) (actual time=0.946..2369.283 rows=116559 loops=199)
                                 Filter: (info = ANY ('{Germany,German}'::text[]))
                                 Rows Removed by Filter: 14719161
                                 Buffers: shared hit=32054618 read=161890
                     ->  Hash Join  (cost=0.03..906.58 rows=317997 width=8) (actual time=147.274..587.875 rows=1193928 loops=118)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=2198317 read=18786
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.014..319.214 rows=1271989 loops=118)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 1337140
                                 Buffers: shared hit=2198316 read=18786
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=0.014..40.965 rows=31946 loops=730)
                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                     Rows Removed by Filter: 125212
                     Buffers: shared hit=1458104 read=2992
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1042800 width=21) (actual time=0.042..331.702 rows=924980 loops=308)
               Filter: ((production_year >= 2000) AND (production_year <= 2010))
               Rows Removed by Filter: 1313699
               Buffers: shared hit=9784163 read=35997
 Planning Time: 5615.835 ms
 Execution Time: 715386.994 ms
(76 rows)

