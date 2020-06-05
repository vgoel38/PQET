                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32714.92..32714.92 rows=1 width=64) (actual time=29247.699..29247.700 rows=1 loops=1)
   Buffers: shared hit=6673 read=576205
   ->  Hash Join  (cost=16569.44..32714.92 rows=1 width=32) (actual time=21172.892..29247.557 rows=184 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6673 read=576205
         ->  Hash Join  (cost=14748.14..30893.61 rows=1 width=36) (actual time=19415.474..27490.036 rows=189 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=6670 read=539758
               ->  Hash Join  (cost=11574.55..27720.02 rows=7 width=25) (actual time=16141.356..24288.518 rows=40272 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=6670 read=472750
                     ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=4058.869..12113.906 rows=276166 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared read=252655
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=2.050..11875.468 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared read=252654
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.957..21.957 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.939..21.946 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared read=1
                     ->  Hash  (cost=11574.49..11574.49 rows=131 width=29) (actual time=12082.295..12082.295 rows=116277 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8369kB
                           Buffers: shared hit=6670 read=220095
                           ->  Hash Join  (cost=3129.54..11574.49 rows=131 width=29) (actual time=4565.606..12043.160 rows=116277 loops=1)
                                 Hash Cond: (mi.movie_id = t.id)
                                 Buffers: shared hit=6670 read=220095
                                 ->  Hash Join  (cost=0.05..8444.54 rows=3969 width=4) (actual time=1547.278..8891.230 rows=451039 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6670 read=162314
                                       ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=673.751..8757.934 rows=451104 loops=1)
                                             Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                             Rows Removed by Filter: 14384616
                                             Buffers: shared hit=6670 read=162313
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.230..20.230 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=20.184..20.218 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                                 ->  Hash  (cost=3125.96..3125.96 rows=24038 width=25) (actual time=3018.227..3018.228 rows=86979 loops=1)
                                       Buckets: 131072 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 6240kB
                                       Buffers: shared read=57781
                                       ->  Hash Join  (cost=1921.75..3125.96 rows=24038 width=25) (actual time=1864.526..2986.448 rows=86979 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared read=57781
                                             ->  Hash Join  (cost=1780.89..2979.67 rows=66579 width=29) (actual time=1722.471..2807.940 rows=100350 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared read=54787
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=292980 width=8) (actual time=3.082..925.928 rows=590994 loops=1)
                                                         Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                         Rows Removed by Filter: 2018135
                                                         Buffers: shared read=18789
                                                   ->  Hash  (cost=1696.56..1696.56 rows=574556 width=21) (actual time=1716.212..1716.212 rows=574556 loops=1)
                                                         Buckets: 1048576  Batches: 1  Memory Usage: 38813kB
                                                         Buffers: shared read=35998
                                                         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=574556 width=21) (actual time=8.649..1427.778 rows=574556 loops=1)
                                                               Filter: ((production_year >= 2005) AND (production_year <= 2009))
                                                               Rows Removed by Filter: 1953756
                                                               Buffers: shared read=35998
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=141.736..141.736 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=6.412..111.113 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared read=2994
               ->  Hash  (cost=3173.47..3173.47 rows=819 width=23) (actual time=3195.059..3195.059 rows=1558 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 104kB
                     Buffers: shared read=67008
                     ->  Hash Join  (cost=2680.24..3173.47 rows=819 width=23) (actual time=2647.929..3194.067 rows=1558 loops=1)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared read=67008
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=4.355..330.582 rows=901343 loops=1)
                                 Buffers: shared read=11395
                           ->  Hash  (cost=2679.69..2679.69 rows=3787 width=19) (actual time=2636.515..2636.515 rows=6768 loops=1)
                                 Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 420kB
                                 Buffers: shared read=55613
                                 ->  Seq Scan on name n  (cost=0.00..2679.69 rows=3787 width=19) (actual time=1128.041..2632.069 rows=6768 loops=1)
                                       Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                       Rows Removed by Filter: 4160723
                                       Buffers: shared read=55613
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1747.037..1747.037 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared read=36447
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=34.498..832.812 rows=3140339 loops=1)
                     Buffers: shared read=36447
 Planning Time: 6628.317 ms
 Execution Time: 29251.513 ms
(94 rows)

