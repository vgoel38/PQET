                                                                                                      QUERY PLAN                                                                                                      
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33853.13..33853.13 rows=1 width=96) (actual time=30419.904..30419.904 rows=1 loops=1)
   Buffers: shared hit=6703 read=597657
   ->  Hash Join  (cost=17693.32..33853.13 rows=1 width=48) (actual time=23425.831..30419.855 rows=45 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6703 read=597657
         ->  Hash Join  (cost=15872.01..32031.83 rows=1 width=36) (actual time=21656.759..28650.769 rows=45 loops=1)
               Hash Cond: (ci.role_id = rt.id)
               Buffers: shared hit=6698 read=561212
               ->  Hash Join  (cost=15871.98..32031.79 rows=1 width=40) (actual time=21656.726..28650.722 rows=45 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6697 read=561212
                     ->  Hash Join  (cost=12692.34..28852.15 rows=1 width=29) (actual time=13552.954..25401.204 rows=244 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6693 read=494208
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=0.030..12018.130 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=12692.34..12692.34 rows=1 width=33) (actual time=13235.615..13235.615 rows=9 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=6688 read=241559
                                 ->  Hash Join  (cost=4249.53..12692.34 rows=1 width=33) (actual time=6568.213..13235.597 rows=9 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6688 read=241559
                                       ->  Hash Join  (cost=4249.48..12692.29 rows=1 width=37) (actual time=6568.154..13235.530 rows=9 loops=1)
                                             Hash Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=6687 read=241559
                                             ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=302987 width=8) (actual time=734.206..9019.618 rows=301247 loops=1)
                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%201%'::text) OR (info ~~ 'USA:%201%'::text)))
                                                   Rows Removed by Filter: 14534473
                                                   Buffers: shared hit=6672 read=162311
                                             ->  Hash  (cost=4249.48..4249.48 rows=1 width=29) (actual time=4170.852..4170.852 rows=6 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=15 read=79248
                                                   ->  Hash Join  (cost=3175.87..4249.48 rows=1 width=29) (actual time=3875.942..4170.838 rows=6 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared hit=15 read=79248
                                                         ->  Hash Join  (cost=3169.74..4243.35 rows=1 width=33) (actual time=3151.596..4116.167 rows=62 loops=1)
                                                               Hash Cond: (mc.movie_id = t.id)
                                                               Buffers: shared hit=15 read=79244
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.015..637.017 rows=2609129 loops=1)
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=3169.74..3169.74 rows=1 width=25) (actual time=3074.409..3074.409 rows=7 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=12 read=60458
                                                                     ->  Hash Join  (cost=1721.09..3169.74 rows=1 width=25) (actual time=1893.937..3074.397 rows=7 loops=1)
                                                                           Hash Cond: (mk.keyword_id = k.id)
                                                                           Buffers: shared hit=12 read=60458
                                                                           ->  Hash Join  (cost=1696.56..3145.20 rows=52 width=29) (actual time=1840.233..3020.678 rows=88 loops=1)
                                                                                 Hash Cond: (mk.movie_id = t.id)
                                                                                 Buffers: shared hit=4 read=60448
                                                                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.015..696.254 rows=4523930 loops=1)
                                                                                       Buffers: shared hit=3 read=24451
                                                                                 ->  Hash  (cost=1696.56..1696.56 rows=29 width=21) (actual time=1734.356..1734.356 rows=8 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=1 read=35997
                                                                                       ->  Seq Scan on title t  (cost=0.00..1696.56 rows=29 width=21) (actual time=427.167..1734.289 rows=8 loops=1)
                                                                                             Filter: ((production_year > 2010) AND (title ~~ 'Kung Fu Panda%'::text))
                                                                                             Rows Removed by Filter: 2528304
                                                                                             Buffers: shared hit=1 read=35997
                                                                           ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=53.674..53.674 rows=3 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=45.306..53.655 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{hero,martial-arts,hand-to-hand-combat,computer-animated-movie}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=54.639..54.639 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=4
                                                               ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=54.614..54.617 rows=1 loops=1)
                                                                     Index Cond: (name = 'DreamWorks Animation'::text)
                                                                     Filter: ((country_code)::text = '[us]'::text)
                                                                     Buffers: shared read=4
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.043..0.043 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.014..0.038 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=3178.45..3178.45 rows=8155 width=23) (actual time=3249.397..3249.397 rows=10525 loops=1)
                           Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 724kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2685.22..3178.45 rows=8155 width=23) (actual time=2697.981..3243.830 rows=10525 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.004..294.937 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2692.676..2692.676 rows=50011 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1092.437..2664.981 rows=50011 loops=1)
                                             Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4117480
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.012 rows=1 loops=1)
                           Filter: ((role)::text = 'actress'::text)
                           Rows Removed by Filter: 11
                           Buffers: shared hit=1
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1744.410..1744.410 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=25.457..757.535 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 11252.590 ms
 Execution Time: 30510.845 ms
(109 rows)

