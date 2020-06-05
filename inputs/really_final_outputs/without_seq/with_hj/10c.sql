                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=406867.52..406867.52 rows=1 width=64) (actual time=47446.160..47446.161 rows=1 loops=1)
   Buffers: shared hit=5821853 read=471976
   ->  Hash Join  (cost=87735.44..406815.83 rows=332865 width=33) (actual time=26108.602..47446.119 rows=10 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=5821853 read=471976
         ->  Hash Join  (cost=87729.32..406779.68 rows=332865 width=37) (actual time=26102.303..47439.808 rows=10 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=5821850 read=471974
               ->  Hash Join  (cost=87723.19..406737.76 rows=332865 width=41) (actual time=26101.972..47439.467 rows=10 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=5821850 read=471972
                     ->  Hash Join  (cost=36455.87..355377.26 rows=693889 width=24) (actual time=12379.044..33716.501 rows=15 loops=1)
                           Hash Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=3100266 read=399304
                           ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..318804.85 rows=1429807 width=12) (actual time=1751.397..22939.726 rows=1435439 loops=1)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 34808905
                                 Buffers: shared hit=2 read=351686
                           ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=10616.104..10616.104 rows=3140339 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                                 Buffers: shared hit=3100264 read=47618
                                 ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=14.122..9513.015 rows=3140339 loops=1)
                                       Buffers: shared hit=3100264 read=47618
                     ->  Hash  (cost=51171.67..51171.67 rows=651653 width=29) (actual time=13720.518..13720.518 rows=596250 loops=1)
                           Buckets: 1048576  Batches: 1  Memory Usage: 46113kB
                           Buffers: shared hit=2721584 read=72668
                           ->  Hash Join  (cost=28104.74..51171.67 rows=651653 width=29) (actual time=11333.565..13488.316 rows=596250 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=2721584 read=72668
                                 ->  Hash Join  (cost=4609.67..27599.80 rows=941996 width=8) (actual time=686.496..2380.123 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=231714 read=29760
                                       ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=29.292..972.104 rows=2609129 loops=1)
                                             Buffers: shared read=25920
                                       ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=656.190..656.190 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=25.086..632.097 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231714 read=3840
                                 ->  Hash  (cost=23238.35..23238.35 rows=1749033 width=21) (actual time=10642.303..10642.303 rows=1749032 loops=1)
                                       Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                       Buffers: shared hit=2489870 read=42908
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=52.745..9953.460 rows=1749032 loops=1)
                                             Filter: (production_year > 1990)
                                             Rows Removed by Filter: 779280
                                             Buffers: shared hit=2489870 read=42908
               ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=0.299..0.299 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=2
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=0.286..0.289 rows=4 loops=1)
                           Heap Fetches: 0
                           Buffers: shared read=2
         ->  Hash  (cost=6.13..6.13 rows=12 width=4) (actual time=6.238..6.238 rows=12 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Only Scan using role_type_pkey on role_type rt  (cost=0.00..6.13 rows=12 width=4) (actual time=6.198..6.206 rows=12 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 2243.768 ms
 Execution Time: 47474.192 ms
(62 rows)

