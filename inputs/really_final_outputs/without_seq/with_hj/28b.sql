                                                                                                                      QUERY PLAN                                                                                                                       
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=722868.62..722868.62 rows=1 width=96) (actual time=35943.500..35943.500 rows=1 loops=1)
   Buffers: shared hit=2931301 read=325262
   ->  Hash Join  (cost=106413.75..722868.62 rows=1 width=42) (actual time=24190.586..35943.386 rows=148 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=2931301 read=325262
         ->  Hash Join  (cost=106407.62..722862.50 rows=1 width=46) (actual time=21873.041..35922.657 rows=149 loops=1)
               Hash Cond: (mc.company_id = cn.id)
               Buffers: shared hit=2931298 read=325260
               ->  Hash Join  (cost=101791.90..718246.77 rows=1 width=31) (actual time=21146.216..35195.728 rows=151 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2699584 read=321420
                     ->  Hash Join  (cost=101785.77..718240.64 rows=1 width=35) (actual time=21120.992..35170.446 rows=151 loops=1)
                           Hash Cond: (t.id = mc.movie_id)
                           Buffers: shared hit=2699584 read=321418
                           ->  Hash Join  (cost=78582.15..695037.02 rows=1 width=47) (actual time=18847.222..33430.016 rows=20 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=2699584 read=295498
                                 ->  Hash Join  (cost=78576.03..695030.89 rows=1 width=51) (actual time=18847.163..33429.925 rows=22 loops=1)
                                       Hash Cond: (cc.subject_id = cct.id)
                                       Buffers: shared hit=2699582 read=295498
                                       ->  Hash Join  (cost=78569.90..695024.77 rows=1 width=55) (actual time=18823.986..33406.672 rows=136 loops=1)
                                             Hash Cond: (cc.status_id = cct.id)
                                             Buffers: shared hit=2699582 read=295496
                                             ->  Hash Join  (cost=78560.72..695015.58 rows=1 width=59) (actual time=18823.878..33406.417 rows=224 loops=1)
                                                   Hash Cond: (t.id = cc.movie_id)
                                                   Buffers: shared hit=2699581 read=295495
                                                   ->  Hash Join  (cost=75257.38..691712.25 rows=1 width=47) (actual time=18380.992..32963.186 rows=483 loops=1)
                                                         Hash Cond: (t.id = mi_idx.movie_id)
                                                         Buffers: shared hit=2612661 read=294392
                                                         ->  Hash Join  (cost=63075.37..679530.24 rows=1 width=33) (actual time=16761.400..31342.842 rows=982 loops=1)
                                                               Hash Cond: (t.kind_id = kt.id)
                                                               Buffers: shared hit=2599096 read=282166
                                                               ->  Hash Join  (cost=63066.19..679521.05 rows=3 width=37) (actual time=16749.726..31330.519 rows=1175 loops=1)
                                                                     Hash Cond: (mi.movie_id = t.id)
                                                                     Buffers: shared hit=2599096 read=282164
                                                                     ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=134293 width=8) (actual time=3680.384..18295.809 rows=134239 loops=1)
                                                                           Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                                           Rows Removed by Filter: 14701481
                                                                           Buffers: shared hit=87582 read=202429
                                                                     ->  Hash  (cost=63066.17..63066.17 rows=54 width=29) (actual time=12994.042..12994.042 rows=9739 loops=1)
                                                                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 717kB
                                                                           Buffers: shared hit=2511514 read=79735
                                                                           ->  Hash Join  (cost=23411.57..63066.17 rows=54 width=29) (actual time=10189.629..12988.795 rows=9739 loops=1)
                                                                                 Hash Cond: (mk.movie_id = t.id)
                                                                                 Buffers: shared hit=2511514 read=79735
                                                                                 ->  Hash Join  (cost=24.54..39679.13 rows=135 width=4) (actual time=99.785..2880.362 rows=37091 loops=1)
                                                                                       Hash Cond: (mk.keyword_id = k.id)
                                                                                       Buffers: shared hit=21644 read=36827
                                                                                       ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=35.774..2018.653 rows=4523930 loops=1)
                                                                                             Buffers: shared hit=21636 read=36817
                                                                                       ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=63.490..63.490 rows=3 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=8 read=10
                                                                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=38.541..63.464 rows=3 loops=1)
                                                                                                   Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                   Buffers: shared hit=8 read=10
                                                                                 ->  Hash  (cost=23238.35..23238.35 rows=1012920 width=25) (actual time=10081.994..10081.994 rows=1012920 loops=1)
                                                                                       Buckets: 1048576  Batches: 1  Memory Usage: 66484kB
                                                                                       Buffers: shared hit=2489870 read=42908
                                                                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=37.359..9655.576 rows=1012920 loops=1)
                                                                                             Filter: (production_year > 2005)
                                                                                             Rows Removed by Filter: 1515392
                                                                                             Buffers: shared hit=2489870 read=42908
                                                               ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=11.649..11.649 rows=2 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=2
                                                                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=11.625..11.636 rows=2 loops=1)
                                                                           Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                                           Rows Removed by Filter: 5
                                                                           Buffers: shared read=2
                                                         ->  Hash  (cost=12138.14..12138.14 rows=298853 width=14) (actual time=1615.567..1615.568 rows=298857 loops=1)
                                                               Buckets: 524288  Batches: 1  Memory Usage: 16968kB
                                                               Buffers: shared hit=13565 read=12226
                                                               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=298853 width=14) (actual time=29.721..1448.996 rows=298857 loops=1)
                                                                     Filter: (info > '6.5'::text)
                                                                     Rows Removed by Filter: 1081178
                                                                     Buffers: shared hit=13565 read=12226
                                                   ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=440.858..440.858 rows=135086 loops=1)
                                                         Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                         Buffers: shared hit=86920 read=1103
                                                         ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=49.800..379.938 rows=135086 loops=1)
                                                               Buffers: shared hit=86920 read=1103
                                             ->  Hash  (cost=9.19..9.19 rows=3 width=4) (actual time=0.068..0.068 rows=3 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=3 width=4) (actual time=0.047..0.053 rows=3 loops=1)
                                                         Filter: ((kind)::text <> 'complete+verified'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=1 read=1
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=23.159..23.159 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=23.144..23.147 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'crew'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'rating'::text)
                                             Buffers: shared hit=2
                           ->  Hash  (cost=23182.59..23182.59 rows=143259 width=12) (actual time=1739.283..1739.284 rows=303271 loops=1)
                                 Buckets: 524288 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 17128kB
                                 Buffers: shared read=25920
                                 ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=24.795..1621.912 rows=303271 loops=1)
                                       Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                       Rows Removed by Filter: 2305858
                                       Buffers: shared read=25920
                     ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=25.206..25.206 rows=4 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=25.186..25.191 rows=4 loops=1)
                                 Heap Fetches: 0
                                 Buffers: shared read=2
               ->  Hash  (cost=4597.20..4597.20 rows=126230 width=23) (actual time=725.817..725.817 rows=126230 loops=1)
                     Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                     Buffers: shared hit=231714 read=3840
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=83.763..685.230 rows=126230 loops=1)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 108767
                           Buffers: shared hit=231714 read=3840
         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=20.648..20.648 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=20.626..20.629 rows=1 loops=1)
                     Index Cond: ((info)::text = 'countries'::text)
                     Buffers: shared read=2
 Planning Time: 14179.652 ms
 Execution Time: 35946.035 ms
(129 rows)

