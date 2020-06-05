                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14462.76..14462.76 rows=1 width=64) (actual time=13280.429..13280.429 rows=1 loops=1)
   Buffers: shared hit=20 read=251253
   ->  Hash Join  (cost=12758.79..14462.76 rows=10 width=59) (actual time=11585.368..13279.311 rows=2271 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=20 read=251253
         ->  Hash Join  (cost=12700.05..14404.02 rows=10 width=63) (actual time=11498.297..13191.064 rows=2271 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=15 read=250306
               ->  Hash Join  (cost=12700.02..14403.99 rows=10 width=67) (actual time=11498.271..13190.122 rows=2271 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=14 read=250306
                     ->  Hash Join  (cost=11438.44..13142.39 rows=10 width=79) (actual time=9977.468..11668.455 rows=1150 loops=1)
                           Hash Cond: (t.id = at.movie_id)
                           Buffers: shared hit=9 read=228528
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=6.942..1375.604 rows=1749032 loops=1)
                                 Filter: (production_year > 1990)
                                 Rows Removed by Filter: 779280
                                 Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=11438.44..11438.44 rows=14 width=58) (actual time=9953.958..9953.958 rows=1150 loops=1)
                                 Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 92kB
                                 Buffers: shared hit=8 read=192531
                                 ->  Hash Join  (cost=9831.74..11438.44 rows=14 width=58) (actual time=8674.197..9953.475 rows=1150 loops=1)
                                       Hash Cond: (mk.movie_id = at.movie_id)
                                       Buffers: shared hit=8 read=192531
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.018..693.107 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=9831.74..9831.74 rows=1 width=50) (actual time=8649.884..8649.884 rows=120 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 16kB
                                             Buffers: shared hit=5 read=168080
                                             ->  Hash Join  (cost=272.27..9831.74 rows=1 width=50) (actual time=1822.785..8649.673 rows=120 loops=1)
                                                   Hash Cond: (mi.movie_id = at.movie_id)
                                                   Buffers: shared hit=5 read=168080
                                                   ->  Nested Loop  (cost=0.00..9559.45 rows=3 width=46) (actual time=1509.831..8347.832 rows=1783 loops=1)
                                                         Join Filter: (it1.id = mi.info_type_id)
                                                         Buffers: shared hit=3 read=161890
                                                         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.020..0.035 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=314 width=50) (actual time=1509.798..8346.995 rows=1783 loops=1)
                                                               Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                               Rows Removed by Filter: 14833937
                                                               Buffers: shared hit=2 read=161890
                                                   ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=298.620..298.621 rows=361472 loops=1)
                                                         Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                         Buffers: shared hit=2 read=6190
                                                         ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=3.542..176.848 rows=361472 loops=1)
                                                               Buffers: shared hit=2 read=6190
                     ->  Hash  (cost=1123.32..1123.32 rows=941996 width=8) (actual time=1518.173..1518.173 rows=1153798 loops=1)
                           Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 61455kB
                           Buffers: shared hit=5 read=21778
                           ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=8) (actual time=210.195..1170.896 rows=1153798 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.005..303.513 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=209.835..209.835 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=24.574..179.732 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=2 read=2992
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.009..0.009 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.005..0.006 rows=4 loops=1)
                           Buffers: shared hit=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=86.361..86.361 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared hit=2 read=947
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.085..52.543 rows=134170 loops=1)
                     Buffers: shared hit=2 read=947
 Planning Time: 8879.535 ms
 Execution Time: 13283.483 ms
(75 rows)

