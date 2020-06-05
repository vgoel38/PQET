                                                                        QUERY PLAN                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14108.00..14108.00 rows=1 width=32) (actual time=36777.047..36777.047 rows=1 loops=1)
   Buffers: shared hit=2195 read=61149
   ->  Hash Join  (cost=1757.09..14105.74 rows=29080 width=17) (actual time=2368.728..36773.914 rows=669 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=2195 read=61149
         ->  Nested Loop  (cost=1757.03..14103.29 rows=29080 width=21) (actual time=2368.531..36770.514 rows=669 loops=1)
               Buffers: shared hit=2191 read=61149
               ->  Hash Join  (cost=1757.02..2958.84 rows=29863 width=25) (actual time=2315.969..3405.047 rows=767 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=4 read=54784
                     ->  Hash Join  (cost=1756.98..2945.96 rows=119452 width=29) (actual time=1736.286..3391.858 rows=105501 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=3 read=54784
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=172674 width=8) (actual time=0.016..1551.606 rows=295628 loops=1)
                                 Filter: ((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))
                                 Rows Removed by Filter: 2313501
                                 Buffers: shared hit=2 read=18787
                           ->  Hash  (cost=1500.26..1500.26 rows=1749033 width=21) (actual time=1730.980..1730.980 rows=1749032 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=13.863..1060.114 rows=1749032 loops=1)
                                       Filter: (production_year > 1990)
                                       Rows Removed by Filter: 779280
                                       Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.012 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.37 rows=1 width=8) (actual time=40.237..43.495 rows=1 loops=767)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 10
                     Buffers: shared hit=2187 read=6365
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=0.151..0.151 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared hit=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=0.012..0.065 rows=113 loops=1)
                     Buffers: shared hit=1
 Planning Time: 1733.923 ms
 Execution Time: 36779.712 ms
(43 rows)

