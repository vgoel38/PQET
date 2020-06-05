                                                                                                QUERY PLAN                                                                                                
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=666698.56..666698.56 rows=1 width=32) (actual time=29366.237..29366.237 rows=1 loops=1)
   Buffers: shared hit=2577455 read=271261
   ->  Hash Join  (cost=46716.43..666696.31 rows=28943 width=17) (actual time=16195.870..29365.908 rows=669 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=2577455 read=271261
         ->  Hash Join  (cost=46710.27..666687.77 rows=28943 width=21) (actual time=16162.640..29332.382 rows=669 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2577452 read=271259
               ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..619894.76 rows=705579 width=8) (actual time=3009.592..16430.654 rows=706674 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 14129046
                     Buffers: shared hit=87582 read=202429
               ->  Hash  (cost=46705.88..46705.88 rows=29863 width=25) (actual time=12791.921..12791.921 rows=767 loops=1)
                     Buckets: 32768  Batches: 1  Memory Usage: 301kB
                     Buffers: shared hit=2489870 read=68830
                     ->  Hash Join  (cost=23501.21..46705.88 rows=29863 width=25) (actual time=11863.648..12791.186 rows=767 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=2489870 read=68830
                           ->  Hash Join  (cost=6.14..23207.29 rows=43168 width=4) (actual time=1175.405..2101.855 rows=798 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared read=25922
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=172674 width=8) (actual time=33.506..2036.164 rows=295628 loops=1)
                                       Filter: ((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))
                                       Rows Removed by Filter: 2313501
                                       Buffers: shared read=25920
                                 ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=23.563..23.563 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=23.546..23.549 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=23238.35..23238.35 rows=1749033 width=21) (actual time=10683.356..10683.356 rows=1749032 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                 Buffers: shared hit=2489870 read=42908
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=51.227..10019.883 rows=1749032 loops=1)
                                       Filter: (production_year > 1990)
                                       Rows Removed by Filter: 779280
                                       Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=6.14..6.14 rows=113 width=4) (actual time=33.209..33.209 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared read=2
               ->  Index Only Scan using info_type_pkey on info_type it  (cost=0.00..6.14 rows=113 width=4) (actual time=33.067..33.115 rows=113 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 1698.172 ms
 Execution Time: 29368.239 ms
(46 rows)

