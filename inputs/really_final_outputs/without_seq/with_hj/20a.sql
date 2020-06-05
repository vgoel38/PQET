                                                                                                      QUERY PLAN                                                                                                      
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=857435.91..857435.91 rows=1 width=32) (actual time=80559.622..80559.622 rows=1 loops=1)
   Buffers: shared hit=7551094 read=495232
   ->  Hash Join  (cost=150604.56..857435.91 rows=1 width=17) (actual time=33659.680..80559.548 rows=33 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=7551094 read=495232
         ->  Hash Join  (cost=103251.60..810082.96 rows=1 width=21) (actual time=31865.215..78765.046 rows=33 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=7550463 read=480157
               ->  Hash Join  (cost=36726.46..743557.41 rows=3518 width=8) (actual time=9059.001..65885.871 rows=556 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=4952021 read=399304
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=12) (actual time=68.117..48735.049 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=36726.35..36726.35 rows=628 width=4) (actual time=8771.377..8771.377 rows=30 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 10kB
                           Buffers: shared hit=3100264 read=47618
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36726.35 rows=628 width=4) (actual time=352.180..8771.275 rows=30 loops=1)
                                 Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                                 Rows Removed by Filter: 3140309
                                 Buffers: shared hit=3100264 read=47618
               ->  Hash  (cost=66525.14..66525.14 rows=1 width=29) (actual time=12878.702..12878.702 rows=6016 loops=1)
                     Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 438kB
                     Buffers: shared hit=2598442 read=80853
                     ->  Hash Join  (cost=26870.52..66525.14 rows=1 width=29) (actual time=10750.582..12875.374 rows=6016 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2598442 read=80853
                           ->  Hash Join  (cost=49.07..39703.66 rows=270 width=4) (actual time=129.409..2782.108 rows=35548 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21651 read=36837
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=32.711..1907.596 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=49.06..49.06 rows=8 width=4) (actual time=95.815..95.815 rows=8 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=15 read=20
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=43.626..95.767 rows=8 loops=1)
                                             Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                             Buffers: shared hit=15 read=20
                           ->  Hash  (cost=26821.29..26821.29 rows=1091 width=25) (actual time=10079.124..10079.124 rows=28583 loops=1)
                                 Buckets: 32768 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 1898kB
                                 Buffers: shared hit=2576791 read=44016
                                 ->  Hash Join  (cost=3324.35..26821.29 rows=1091 width=25) (actual time=6788.533..10068.297 rows=28583 loops=1)
                                       Hash Cond: (t.id = cc.movie_id)
                                       Buffers: shared hit=2576791 read=44016
                                       ->  Hash Join  (cost=6.14..23464.94 rows=326753 width=21) (actual time=938.080..9521.146 rows=492483 loops=1)
                                             Hash Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=2489870 read=42910
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=2287272 width=25) (actual time=35.106..9126.354 rows=2287271 loops=1)
                                                   Filter: (production_year > 1950)
                                                   Rows Removed by Filter: 241041
                                                   Buffers: shared hit=2489870 read=42908
                                             ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=26.698..26.698 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=26.681..26.685 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'movie'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=3316.98..3316.98 rows=8443 width=4) (actual time=415.457..415.457 rows=85941 loops=1)
                                             Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                             Buffers: shared hit=86921 read=1106
                                             ->  Hash Join  (cost=15.32..3316.98 rows=8443 width=4) (actual time=57.741..387.067 rows=85941 loops=1)
                                                   Hash Cond: (cc.status_id = cct.id)
                                                   Buffers: shared hit=86921 read=1106
                                                   ->  Hash Join  (cost=6.14..3304.16 rows=33772 width=8) (actual time=57.639..351.222 rows=85941 loops=1)
                                                         Hash Cond: (cc.subject_id = cct.id)
                                                         Buffers: shared hit=86920 read=1105
                                                         ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=51.220..291.961 rows=135086 loops=1)
                                                               Buffers: shared hit=86920 read=1103
                                                         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=6.369..6.369 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=2
                                                               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=6.354..6.357 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'cast'::text)
                                                                     Buffers: shared read=2
                                                   ->  Hash  (cost=9.19..9.19 rows=1 width=4) (actual time=0.062..0.063 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.047..0.049 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=1 read=1
         ->  Hash  (cost=46741.24..46741.24 rows=4167491 width=4) (actual time=1784.872..1784.872 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
               Buffers: shared hit=628 read=15075
               ->  Index Only Scan using name_pkey on name n  (cost=0.01..46741.24 rows=4167491 width=4) (actual time=42.984..667.862 rows=4167491 loops=1)
                     Heap Fetches: 0
                     Buffers: shared hit=628 read=15075
 Planning Time: 5320.590 ms
 Execution Time: 80563.894 ms
(88 rows)

