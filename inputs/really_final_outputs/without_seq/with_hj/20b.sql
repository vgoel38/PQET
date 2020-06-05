                                                                                                   QUERY PLAN                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=858792.78..858792.78 rows=1 width=32) (actual time=84300.820..84300.821 rows=1 loops=1)
   Buffers: shared hit=11489064 read=550843
   ->  Hash Join  (cost=151961.55..858792.78 rows=1 width=17) (actual time=38652.353..84300.783 rows=17 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=11489064 read=550843
         ->  Hash Join  (cost=85538.89..792370.12 rows=1 width=4) (actual time=24379.535..70027.944 rows=16 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=8890619 read=469990
               ->  Hash Join  (cost=48812.44..755643.39 rows=3479 width=8) (actual time=14709.048..60357.398 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5790355 read=422372
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=12) (actual time=72.783..46606.985 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=48812.37..48812.37 rows=400 width=4) (actual time=4305.630..4305.630 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=3938598 read=70686
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=4) (actual time=504.779..4305.620 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=3938598 read=70686
               ->  Hash  (cost=36726.35..36726.35 rows=628 width=4) (actual time=9670.325..9670.325 rows=30 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 10kB
                     Buffers: shared hit=3100264 read=47618
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36726.35 rows=628 width=4) (actual time=369.809..9670.203 rows=30 loops=1)
                           Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                           Rows Removed by Filter: 3140309
                           Buffers: shared hit=3100264 read=47618
         ->  Hash  (cost=66422.66..66422.66 rows=1 width=29) (actual time=14272.790..14272.790 rows=1472 loops=1)
               Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 106kB
               Buffers: shared hit=2598442 read=80853
               ->  Hash Join  (cost=26768.05..66422.66 rows=1 width=29) (actual time=12162.497..14271.777 rows=1472 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=2598442 read=80853
                     ->  Hash Join  (cost=49.07..39703.66 rows=270 width=4) (actual time=129.837..2845.128 rows=35548 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=21651 read=36837
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=33.095..1936.675 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=49.06..49.06 rows=8 width=4) (actual time=95.852..95.852 rows=8 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=15 read=20
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=43.614..95.801 rows=8 loops=1)
                                       Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                       Buffers: shared hit=15 read=20
                     ->  Hash  (cost=26718.88..26718.88 rows=659 width=25) (actual time=11416.250..11416.250 rows=4696 loops=1)
                           Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 329kB
                           Buffers: shared hit=2576791 read=44016
                           ->  Hash Join  (cost=3324.35..26718.88 rows=659 width=25) (actual time=7819.968..11414.105 rows=4696 loops=1)
                                 Hash Cond: (t.id = cc.movie_id)
                                 Buffers: shared hit=2576791 read=44016
                                 ->  Hash Join  (cost=6.14..23377.63 rows=197350 width=21) (actual time=1662.459..10612.422 rows=274015 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=2489870 read=42910
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=29.081..10359.882 rows=1381453 loops=1)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 1146859
                                             Buffers: shared hit=2489870 read=42908
                                       ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=24.328..24.328 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=24.312..24.316 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'movie'::text)
                                                   Buffers: shared read=2
                                 ->  Hash  (cost=3316.98..3316.98 rows=8443 width=4) (actual time=718.045..718.045 rows=85941 loops=1)
                                       Buckets: 131072 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 4046kB
                                       Buffers: shared hit=86921 read=1106
                                       ->  Hash Join  (cost=15.32..3316.98 rows=8443 width=4) (actual time=99.946..685.167 rows=85941 loops=1)
                                             Hash Cond: (cc.status_id = cct.id)
                                             Buffers: shared hit=86921 read=1106
                                             ->  Hash Join  (cost=6.14..3304.16 rows=33772 width=8) (actual time=99.838..643.772 rows=85941 loops=1)
                                                   Hash Cond: (cc.subject_id = cct.id)
                                                   Buffers: shared hit=86920 read=1105
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=51.744..534.707 rows=135086 loops=1)
                                                         Buffers: shared hit=86920 read=1103
                                                   ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=48.042..48.042 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=2
                                                         ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=48.026..48.029 rows=1 loops=1)
                                                               Index Cond: ((kind)::text = 'cast'::text)
                                                               Buffers: shared read=2
                                             ->  Hash  (cost=9.19..9.19 rows=1 width=4) (actual time=0.066..0.066 rows=2 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.049..0.052 rows=2 loops=1)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=1 read=1
 Planning Time: 5182.639 ms
 Execution Time: 84301.316 ms
(89 rows)

