                                                                                       QUERY PLAN                                                                                        
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12161.25..12161.25 rows=1 width=64) (actual time=13353.400..13353.400 rows=1 loops=1)
   Buffers: shared hit=20 read=251253
   ->  Hash Join  (cost=10457.17..12161.19 rows=405 width=38) (actual time=11633.782..13337.594 rows=11347 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=20 read=251253
         ->  Hash Join  (cost=10398.44..12102.42 rows=405 width=42) (actual time=11544.070..13243.436 rows=11347 loops=1)
               Hash Cond: (t.id = at.movie_id)
               Buffers: shared hit=15 read=250306
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=23.548..1419.003 rows=1749032 loops=1)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 779280
                     Buffers: shared hit=1 read=35997
               ->  Hash  (cost=10398.35..10398.35 rows=585 width=41) (actual time=11496.623..11496.623 rows=11557 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 980kB
                     Buffers: shared hit=14 read=214309
                     ->  Hash Join  (cost=8791.61..10398.35 rows=585 width=41) (actual time=10157.901..11492.592 rows=11557 loops=1)
                           Hash Cond: (mk.movie_id = at.movie_id)
                           Buffers: shared hit=14 read=214309
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..718.476 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=8791.61..8791.61 rows=43 width=33) (actual time=10132.748..10132.748 rows=896 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 68kB
                                 Buffers: shared hit=11 read=189858
                                 ->  Hash Join  (cost=1533.89..8791.61 rows=43 width=33) (actual time=3280.320..10132.021 rows=896 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=11 read=189858
                                       ->  Hash Join  (cost=1533.86..8791.57 rows=43 width=37) (actual time=3280.266..10131.305 rows=896 loops=1)
                                             Hash Cond: (at.movie_id = mc.movie_id)
                                             Buffers: shared hit=10 read=189858
                                             ->  Hash Join  (cost=272.27..7529.93 rows=38 width=29) (actual time=1818.725..8680.243 rows=591 loops=1)
                                                   Hash Cond: (mi.movie_id = at.movie_id)
                                                   Buffers: shared hit=5 read=168080
                                                   ->  Nested Loop  (cost=0.00..7257.30 rows=95 width=4) (actual time=1510.490..8365.462 rows=10679 loops=1)
                                                         Join Filter: (it1.id = mi.info_type_id)
                                                         Rows Removed by Join Filter: 131
                                                         Buffers: shared hit=3 read=161890
                                                         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.034 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=10746 width=8) (actual time=113.839..8361.572 rows=10810 loops=1)
                                                               Filter: (note ~~ '%internet%'::text)
                                                               Rows Removed by Filter: 14824910
                                                               Buffers: shared hit=2 read=161890
                                                   ->  Hash  (cost=219.22..219.22 rows=361472 width=25) (actual time=305.946..305.947 rows=361472 loops=1)
                                                         Buckets: 524288  Batches: 1  Memory Usage: 25054kB
                                                         Buffers: shared hit=2 read=6190
                                                         ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=25) (actual time=10.794..175.081 rows=361472 loops=1)
                                                               Buffers: shared hit=2 read=6190
                                             ->  Hash  (cost=1123.32..1123.32 rows=941996 width=8) (actual time=1447.721..1447.721 rows=1153798 loops=1)
                                                   Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 61455kB
                                                   Buffers: shared hit=5 read=21778
                                                   ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=8) (actual time=146.875..1103.162 rows=1153798 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=5 read=21778
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.007..293.680 rows=2609129 loops=1)
                                                               Buffers: shared hit=3 read=18786
                                                         ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=146.554..146.554 rows=84843 loops=1)
                                                               Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                               Buffers: shared hit=2 read=2992
                                                               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=11.158..119.671 rows=84843 loops=1)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Rows Removed by Filter: 150154
                                                                     Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.022..0.023 rows=4 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.007..0.011 rows=4 loops=1)
                                                   Buffers: shared hit=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=89.048..89.048 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared hit=2 read=947
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.085..51.277 rows=134170 loops=1)
                     Buffers: shared hit=2 read=947
 Planning Time: 8706.182 ms
 Execution Time: 13355.164 ms
(76 rows)

