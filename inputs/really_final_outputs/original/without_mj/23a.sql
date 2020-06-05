                                                                                             QUERY PLAN                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=2586.57..2586.57 rows=1 width=64) (actual time=143463.743..143463.744 rows=1 loops=1)
   Buffers: shared hit=242056 read=62025
   ->  Nested Loop  (cost=51.89..2586.57 rows=1 width=27) (actual time=106336.224..143463.148 rows=618 loops=1)
         Buffers: shared hit=242056 read=62025
         ->  Nested Loop  (cost=51.88..2586.55 rows=1 width=31) (actual time=106303.537..143162.110 rows=618 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=239805 read=61800
               ->  Nested Loop  (cost=51.86..2586.49 rows=1 width=43) (actual time=106246.805..143076.738 rows=6 loops=1)
                     Join Filter: (mi.info_type_id = it1.id)
                     Buffers: shared hit=239781 read=61792
                     ->  Nested Loop  (cost=51.86..2586.44 rows=1 width=47) (actual time=106221.813..143051.655 rows=6 loops=1)
                           Buffers: shared hit=239776 read=61791
                           ->  Nested Loop  (cost=51.86..2586.44 rows=1 width=51) (actual time=106221.638..143051.423 rows=6 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=239766 read=61789
                                 ->  Nested Loop  (cost=51.84..2008.30 rows=2267 width=43) (actual time=1444.702..50841.405 rows=5763 loops=1)
                                       Buffers: shared hit=95869 read=42077
                                       ->  Nested Loop  (cost=51.83..1896.46 rows=6278 width=47) (actual time=1309.342..32285.037 rows=23883 loops=1)
                                             Buffers: shared hit=2627 read=39520
                                             ->  Hash Join  (cost=51.82..1708.40 rows=2636 width=35) (actual time=1267.129..2873.315 rows=1033 loops=1)
                                                   Hash Cond: (t.id = cc.movie_id)
                                                   Buffers: shared hit=3 read=36731
                                                   ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=31) (actual time=125.070..2656.648 rows=274015 loops=1)
                                                         Hash Cond: (t.kind_id = kt.id)
                                                         Buffers: shared hit=3 read=35999
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=21.638..2202.677 rows=1381453 loops=1)
                                                               Filter: (production_year > 2000)
                                                               Rows Removed by Filter: 1146859
                                                               Buffers: shared read=35998
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=14) (actual time=21.191..21.192 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=21.167..21.173 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'movie'::text)
                                                                     Rows Removed by Filter: 6
                                                                     Buffers: shared read=1
                                                   ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=80.606..80.606 rows=24592 loops=1)
                                                         Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                                         Buffers: shared read=732
                                                         ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=19.322..72.538 rows=24592 loops=1)
                                                               Hash Cond: (cc.status_id = cct1.id)
                                                               Buffers: shared read=732
                                                               ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=19.143..38.954 rows=135086 loops=1)
                                                                     Buffers: shared read=731
                                                               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.137..0.137 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=1
                                                                     ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.121..0.123 rows=1 loops=1)
                                                                           Filter: ((kind)::text = 'complete+verified'::text)
                                                                           Rows Removed by Filter: 3
                                                                           Buffers: shared read=1
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=12) (actual time=18.351..28.445 rows=23 loops=1033)
                                                   Index Cond: (movie_id = t.id)
                                                   Buffers: shared hit=2624 read=2789
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.775..0.775 rows=0 loops=23883)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=93242 read=2557
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=15.977..15.998 rows=0 loops=5763)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                       Rows Removed by Filter: 245
                                       Buffers: shared hit=143897 read=19712
                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=6)
                                 Index Cond: (id = mc.company_type_id)
                                 Buffers: shared hit=10 read=2
                     ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=4.173..4.173 rows=1 loops=6)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 15
                           Buffers: shared hit=5 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=14.076..14.160 rows=103 loops=6)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=24 read=8
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.486..0.486 rows=1 loops=618)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=2251 read=225
 Planning Time: 8519.806 ms
 Execution Time: 143508.890 ms
(79 rows)

