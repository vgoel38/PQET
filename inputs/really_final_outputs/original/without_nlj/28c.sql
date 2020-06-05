                                                                                                                  QUERY PLAN                                                                                                                  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17057.13..17057.13 rows=1 width=96) (actual time=13273.227..13273.227 rows=1 loops=1)
   Buffers: shared hit=33 read=253305
   ->  Hash Join  (cost=5110.80..17057.12 rows=1 width=42) (actual time=11906.983..13246.675 rows=8373 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=33 read=253305
         ->  Hash Join  (cost=5110.76..17057.09 rows=1 width=46) (actual time=11906.942..13244.550 rows=8373 loops=1)
               Hash Cond: (mc.company_id = cn.id)
               Buffers: shared hit=29 read=253305
               ->  Hash Join  (cost=4963.83..16910.16 rows=1 width=31) (actual time=11751.974..13086.001 rows=8771 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=27 read=250313
                     ->  Hash Join  (cost=3767.90..15714.23 rows=1 width=43) (actual time=10848.316..12183.248 rows=778 loops=1)
                           Hash Cond: (cc.subject_id = cct.id)
                           Buffers: shared hit=24 read=231527
                           ->  Hash Join  (cost=3767.87..15714.20 rows=1 width=47) (actual time=10848.274..12182.910 rows=969 loops=1)
                                 Hash Cond: (cc.status_id = cct.id)
                                 Buffers: shared hit=23 read=231527
                                 ->  Hash Join  (cost=3767.84..15714.16 rows=1 width=51) (actual time=10848.248..12182.515 rows=1368 loops=1)
                                       Hash Cond: (t.id = cc.movie_id)
                                       Buffers: shared hit=22 read=231527
                                       ->  Hash Join  (cost=3715.74..15662.07 rows=1 width=39) (actual time=10734.789..12081.888 rows=4115 loops=1)
                                             Hash Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=20 read=230798
                                             ->  Hash Join  (cost=3715.71..15662.03 rows=1 width=43) (actual time=10733.505..12080.457 rows=5131 loops=1)
                                                   Hash Cond: (mi.info_type_id = it.id)
                                                   Buffers: shared hit=19 read=230798
                                                   ->  Hash Join  (cost=3715.66..15661.99 rows=1 width=47) (actual time=3636.504..12078.741 rows=5831 loops=1)
                                                         Hash Cond: (mi.movie_id = t.id)
                                                         Buffers: shared hit=18 read=230798
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=715132 width=8) (actual time=25.658..8403.911 rows=716210 loops=1)
                                                               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                               Rows Removed by Filter: 14119510
                                                               Buffers: shared hit=2 read=161890
                                                         ->  Hash  (cost=3715.66..3715.66 rows=1 width=39) (actual time=3565.718..3565.718 rows=7271 loops=1)
                                                               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 560kB
                                                               Buffers: shared hit=16 read=68908
                                                               ->  Hash Join  (cost=3091.48..3715.66 rows=1 width=39) (actual time=2963.337..3562.676 rows=7271 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it.id)
                                                                     Buffers: shared hit=16 read=68908
                                                                     ->  Hash Join  (cost=3091.43..3715.61 rows=29 width=43) (actual time=2963.239..3558.391 rows=21917 loops=1)
                                                                           Hash Cond: (mi_idx.movie_id = t.id)
                                                                           Buffers: shared hit=15 read=68908
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=0.016..442.911 rows=1343555 loops=1)
                                                                                 Filter: (info < '8.5'::text)
                                                                                 Rows Removed by Filter: 36480
                                                                                 Buffers: shared hit=2 read=8451
                                                                           ->  Hash  (cost=3091.42..3091.42 rows=54 width=29) (actual time=2939.067..2939.067 rows=9739 loops=1)
                                                                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 717kB
                                                                                 Buffers: shared hit=13 read=60457
                                                                                 ->  Hash Join  (cost=1473.19..3091.42 rows=54 width=29) (actual time=1231.620..2931.983 rows=9739 loops=1)
                                                                                       Hash Cond: (t.id = mk.movie_id)
                                                                                       Buffers: shared hit=13 read=60457
                                                                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=6.010..1396.444 rows=1012920 loops=1)
                                                                                             Filter: (production_year > 2005)
                                                                                             Rows Removed by Filter: 1515392
                                                                                             Buffers: shared hit=2 read=35996
                                                                                       ->  Hash  (cost=1473.17..1473.17 rows=135 width=4) (actual time=1219.940..1219.940 rows=37091 loops=1)
                                                                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1816kB
                                                                                             Buffers: shared hit=11 read=24461
                                                                                             ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=58.795..1209.764 rows=37091 loops=1)
                                                                                                   Hash Cond: (mk.keyword_id = k.id)
                                                                                                   Buffers: shared hit=11 read=24461
                                                                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.015..539.536 rows=4523930 loops=1)
                                                                                                         Buffers: shared hit=3 read=24451
                                                                                                   ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=58.633..58.634 rows=3 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=8 read=10
                                                                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=30.966..58.609 rows=3 loops=1)
                                                                                                               Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                               Buffers: shared hit=8 read=10
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.062..0.062 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.048..0.054 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'rating'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.018..0.019 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.006..0.017 rows=1 loops=1)
                                                               Filter: ((info)::text = 'countries'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.014..0.014 rows=2 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.009..0.011 rows=2 loops=1)
                                                         Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                         Rows Removed by Filter: 5
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=98.370..98.370 rows=135086 loops=1)
                                             Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                             Buffers: shared hit=2 read=729
                                             ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=19.967..55.060 rows=135086 loops=1)
                                                   Buffers: shared hit=2 read=729
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.006..0.007 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.004 rows=1 loops=1)
                                             Filter: ((kind)::text = 'complete'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.014 rows=1 loops=1)
                                       Filter: ((kind)::text = 'cast'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
                     ->  Hash  (cost=1174.90..1174.90 rows=143259 width=12) (actual time=899.869..899.869 rows=303271 loops=1)
                           Buckets: 524288 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 17128kB
                           Buffers: shared hit=3 read=18786
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.012..802.349 rows=303271 loops=1)
                                 Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                 Rows Removed by Filter: 2305858
                                 Buffers: shared hit=3 read=18786
               ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=154.646..154.646 rows=126230 loops=1)
                     Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                     Buffers: shared hit=2 read=2992
                     ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=19.291..111.706 rows=126230 loops=1)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 108767
                           Buffers: shared hit=2 read=2992
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.015..0.015 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.006..0.007 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 15107.507 ms
 Execution Time: 13274.419 ms
(131 rows)

