                                                                                                      QUERY PLAN                                                                                                      
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33853.13..33853.13 rows=1 width=96) (actual time=31533.458..31533.458 rows=1 loops=1)
   Buffers: shared hit=6681 read=597679
   ->  Hash Join  (cost=17693.32..33853.13 rows=1 width=48) (actual time=24498.609..31533.418 rows=45 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6681 read=597679
         ->  Hash Join  (cost=15872.01..32031.83 rows=1 width=36) (actual time=22762.119..29796.914 rows=45 loops=1)
               Hash Cond: (ci.role_id = rt.id)
               Buffers: shared hit=6678 read=561232
               ->  Hash Join  (cost=15871.98..32031.79 rows=1 width=40) (actual time=22736.045..29770.828 rows=45 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6678 read=561231
                     ->  Hash Join  (cost=12692.34..28852.15 rows=1 width=29) (actual time=14565.390..26494.443 rows=244 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6678 read=494223
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=51.675..12153.145 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared read=252654
                           ->  Hash  (cost=12692.34..12692.34 rows=1 width=33) (actual time=14195.156..14195.156 rows=9 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=6678 read=241569
                                 ->  Hash Join  (cost=4249.53..12692.34 rows=1 width=33) (actual time=7377.109..14195.142 rows=9 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6678 read=241569
                                       ->  Hash Join  (cost=4249.48..12692.29 rows=1 width=37) (actual time=7351.107..14169.135 rows=9 loops=1)
                                             Hash Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=6678 read=241568
                                             ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=302987 width=8) (actual time=758.295..9322.053 rows=301247 loops=1)
                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                   Rows Removed by Filter: 14534473
                                                   Buffers: shared hit=6670 read=162313
                                             ->  Hash  (cost=4249.48..4249.48 rows=1 width=29) (actual time=4802.878..4802.878 rows=6 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=8 read=79255
                                                   ->  Hash Join  (cost=3175.87..4249.48 rows=1 width=29) (actual time=4514.357..4802.861 rows=6 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=8 read=79255
                                                         ->  Hash Join  (cost=3169.74..4243.35 rows=1 width=33) (actual time=3819.611..4747.883 rows=62 loops=1)
                                                               Hash Cond: (mc.movie_id = t.id)
                                                               Buffers: shared hit=8 read=79251
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=1.906..1395.654 rows=2609129 loops=1)
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=3169.74..3169.74 rows=1 width=25) (actual time=2941.064..2941.064 rows=7 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=8 read=60462
                                                                     ->  Hash Join  (cost=1721.09..3169.74 rows=1 width=25) (actual time=1896.089..2941.052 rows=7 loops=1)
                                                                           Hash Cond: (mk.keyword_id = k.id)
                                                                           Buffers: shared hit=8 read=60462
                                                                           ->  Hash Join  (cost=1696.56..3145.20 rows=52 width=29) (actual time=1844.258..2889.208 rows=88 loops=1)
                                                                                 Hash Cond: (mk.movie_id = t.id)
                                                                                 Buffers: shared read=60452
                                                                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=22.735..601.957 rows=4523930 loops=1)
                                                                                       Buffers: shared read=24454
                                                                                 ->  Hash  (cost=1696.56..1696.56 rows=29 width=21) (actual time=1720.336..1720.337 rows=8 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared read=35998
                                                                                       ->  Seq Scan on title t  (cost=0.00..1696.56 rows=29 width=21) (actual time=412.657..1720.274 rows=8 loops=1)
                                                                                             Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
                                                                                             Rows Removed by Filter: 2528304
                                                                                             Buffers: shared read=35998
                                                                           ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=51.800..51.800 rows=3 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=43.430..51.781 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=54.939..54.940 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=4
                                                               ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=54.913..54.917 rows=1 loops=1)
                                                                     Index Cond: (name = 'DreamWorks Animation'::text)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Buffers: shared read=4
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=25.969..25.969 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=25.922..25.957 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                     ->  Hash  (cost=3178.45..3178.45 rows=8155 width=23) (actual time=3276.182..3276.182 rows=10525 loops=1)
                           Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 724kB
                           Buffers: shared read=67008
                           ->  Hash Join  (cost=2685.22..3178.45 rows=8155 width=23) (actual time=2726.753..3270.371 rows=10525 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared read=67008
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=26.664..328.526 rows=901343 loops=1)
                                       Buffers: shared read=11395
                                 ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2694.630..2694.630 rows=50011 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                       Buffers: shared read=55613
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1094.319..2666.167 rows=50011 loops=1)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4117480
                                             Buffers: shared read=55613
               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=26.055..26.055 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=26.037..26.043 rows=1 loops=1)
                           Filter: ((role)::text = 'actress'::text)
                           Rows Removed by Filter: 11
                           Buffers: shared read=1
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1726.376..1726.376 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared read=36447
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=12.305..747.118 rows=3140339 loops=1)
                     Buffers: shared read=36447
 Planning Time: 10217.196 ms
 Execution Time: 31536.202 ms
(109 rows)

