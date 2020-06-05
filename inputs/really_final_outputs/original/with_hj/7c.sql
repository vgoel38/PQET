                                                                                                      QUERY PLAN                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21981.77..21981.77 rows=1 width=64) (actual time=22206.116..22206.116 rows=1 loops=1)
   Buffers: shared hit=71394 read=407186
   ->  Hash Join  (cost=8122.91..21981.77 rows=2 width=110) (actual time=7479.213..21553.033 rows=68185 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=4 read=406642
         ->  Hash Join  (cost=6187.03..20045.84 rows=477 width=114) (actual time=5670.296..19486.955 rows=1618304 loops=1)
               Hash Cond: (n.id = an.person_id)
               Buffers: shared hit=1 read=370480
               ->  Hash Join  (cost=3718.93..17104.63 rows=4061863 width=27) (actual time=2661.783..15508.583 rows=5178915 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=1 read=308266
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=51.277..5646.603 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=3650.38..3650.38 rows=467046 width=19) (actual time=2606.339..2606.339 rows=507621 loops=1)
                           Buckets: 524288  Batches: 1  Memory Usage: 30333kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..3650.38 rows=467046 width=19) (actual time=9.118..2454.705 rows=507621 loops=1)
                                 Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'A%'::text))))
                                 Rows Removed by Filter: 3659870
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=2467.96..2467.96 rows=958 width=103) (actual time=3001.103..3001.103 rows=72980 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 60913kB
                     Buffers: shared read=62214
                     ->  Hash Join  (cost=659.78..2467.96 rows=958 width=103) (actual time=624.694..2901.008 rows=72980 loops=1)
                           Hash Cond: (pi.person_id = an.person_id)
                           Buffers: shared read=62214
                           ->  Hash Join  (cost=0.05..1805.91 rows=745 width=99) (actual time=45.222..2235.656 rows=84183 loops=1)
                                 Hash Cond: (pi.info_type_id = it.id)
                                 Buffers: shared read=50819
                                 ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=84183 width=103) (actual time=23.614..2162.798 rows=84183 loops=1)
                                       Filter: (note IS NOT NULL)
                                       Rows Removed by Filter: 2879481
                                       Buffers: shared read=50818
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=21.567..21.567 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=21.522..21.555 rows=1 loops=1)
                                             Filter: ((info)::text = 'mini biography'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=559.71..559.71 rows=681455 width=4) (actual time=571.563..571.563 rows=686100 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 32313kB
                                 Buffers: shared read=11395
                                 ->  Seq Scan on aka_name an  (cost=0.00..559.71 rows=681455 width=4) (actual time=23.064..377.167 rows=686100 loops=1)
                                       Filter: ((name IS NOT NULL) AND ((name ~~ '%a%'::text) OR (name ~~ 'A%'::text)))
                                       Rows Removed by Filter: 215243
                                       Buffers: shared read=11395
         ->  Hash  (cost=1935.27..1935.27 rows=4101 width=8) (actual time=1808.841..1808.841 rows=14194 loops=1)
               Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 683kB
               Buffers: shared read=36162
               ->  Hash Join  (cost=1924.93..1935.27 rows=4101 width=8) (actual time=1764.238..1805.359 rows=14194 loops=1)
                     Hash Cond: (ml.linked_movie_id = t.id)
                     Buffers: shared read=36162
                     ->  Hash Join  (cost=0.04..9.84 rows=6666 width=4) (actual time=18.996..51.548 rows=21505 loops=1)
                           Hash Cond: (ml.link_type_id = lt.id)
                           Buffers: shared read=164
                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=18.803..43.522 rows=29997 loops=1)
                                 Buffers: shared read=163
                           ->  Hash  (cost=0.04..0.04 rows=4 width=4) (actual time=0.154..0.154 rows=4 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.04 rows=4 width=4) (actual time=0.125..0.137 rows=4 loops=1)
                                       Filter: ((link)::text = ANY ('{references,"referenced in",features,"featured in"}'::text[]))
                                       Rows Removed by Filter: 14
                                       Buffers: shared read=1
                     ->  Hash  (cost=1696.56..1696.56 rows=1555597 width=4) (actual time=1734.444..1734.444 rows=1555597 loops=1)
                           Buckets: 2097152  Batches: 1  Memory Usage: 71073kB
                           Buffers: shared read=35998
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1555597 width=4) (actual time=26.486..1178.705 rows=1555597 loops=1)
                                 Filter: ((production_year >= 1980) AND (production_year <= 2010))
                                 Rows Removed by Filter: 972715
                                 Buffers: shared read=35998
 Planning Time: 5905.050 ms
 Execution Time: 22210.132 ms
(74 rows)

