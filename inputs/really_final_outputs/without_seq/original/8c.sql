                                                                                          QUERY PLAN                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=165052.60..165052.60 rows=1 width=64) (actual time=160683.370..160683.371 rows=1 loops=1)
   Buffers: shared hit=28040728 read=122727
   ->  Hash Join  (cost=28022.87..164769.84 rows=1820954 width=33) (actual time=11850.744..159888.133 rows=2487611 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=28040728 read=122727
         ->  Nested Loop  (cost=4609.71..141208.23 rows=1820954 width=24) (actual time=991.672..148013.823 rows=2487611 loops=1)
               Join Filter: (a.person_id = n.id)
               Buffers: shared hit=25550854 read=79823
               ->  Nested Loop  (cost=4609.70..113959.60 rows=1820954 width=32) (actual time=965.253..140439.571 rows=2487611 loops=1)
                     Buffers: shared hit=18073458 read=69553
                     ->  Hash Join  (cost=4609.69..82794.24 rows=2094450 width=12) (actual time=965.232..133751.490 rows=1970658 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=10751843 read=56735
                           ->  Nested Loop  (cost=0.04..77711.66 rows=5801180 width=16) (actual time=193.475..131578.591 rows=4450853 loops=1)
                                 Buffers: shared hit=10520120 read=52901
                                 ->  Nested Loop  (cost=0.02..29219.82 rows=3020362 width=8) (actual time=56.204..1624.231 rows=2728943 loops=1)
                                       Buffers: shared hit=1 read=27225
                                       ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.037..0.039 rows=1 loops=1)
                                             Index Cond: ((role)::text = 'writer'::text)
                                             Buffers: shared hit=1 read=1
                                       ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..28985.88 rows=3294940 width=12) (actual time=56.126..1031.393 rows=2728943 loops=1)
                                             Index Cond: (role_id = rt.id)
                                             Buffers: shared read=27224
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.041..0.047 rows=2 loops=2728943)
                                       Index Cond: (movie_id = ci.movie_id)
                                       Buffers: shared hit=10520119 read=25676
                           ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=770.631..770.631 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=231720 read=3834
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.033..745.106 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=231720 read=3834
                     ->  Index Scan using person_id_aka_name on aka_name a  (cost=0.01..0.01 rows=2 width=20) (actual time=0.002..0.003 rows=1 loops=1970658)
                           Index Cond: (person_id = ci.person_id)
                           Buffers: shared hit=7321615 read=12818
               ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=2487611)
                     Index Cond: (id = ci.person_id)
                     Heap Fetches: 0
                     Buffers: shared hit=7477396 read=10270
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10832.480..10832.480 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489874 read=42904
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.042..9866.323 rows=2528312 loops=1)
                     Buffers: shared hit=2489874 read=42904
 Planning Time: 4705.134 ms
 Execution Time: 160705.689 ms
(47 rows)

