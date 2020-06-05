                                                                          QUERY PLAN                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=24354.66..24354.66 rows=1 width=96) (actual time=20376.039..20376.039 rows=1 loops=1)
   Buffers: shared hit=3 read=413891
   ->  Hash Join  (cost=8209.17..24354.66 rows=1 width=49) (actual time=12417.166..20375.838 rows=121 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=3 read=413891
         ->  Hash Join  (cost=6387.87..22533.35 rows=2 width=37) (actual time=10372.986..18331.565 rows=127 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared read=377444
               ->  Hash Join  (cost=3173.62..19319.10 rows=57 width=24) (actual time=7205.089..15174.812 rows=425 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=319663
                     ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=3951.290..11937.895 rows=276166 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared read=252655
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=4.227..11687.731 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared read=252654
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.796..21.797 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.774..21.781 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared read=1
                     ->  Hash  (cost=3173.47..3173.47 rows=819 width=24) (actual time=3190.980..3190.980 rows=1558 loops=1)
                           Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 103kB
                           Buffers: shared read=67008
                           ->  Hash Join  (cost=2680.24..3173.47 rows=819 width=24) (actual time=2619.902..3189.770 rows=1558 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared read=67008
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=9.613..349.250 rows=901343 loops=1)
                                       Buffers: shared read=11395
                                 ->  Hash  (cost=2679.69..2679.69 rows=3787 width=4) (actual time=2603.925..2603.925 rows=6768 loops=1)
                                       Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 302kB
                                       Buffers: shared read=55613
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=3787 width=4) (actual time=1095.303..2599.786 rows=6768 loops=1)
                                             Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4160723
                                             Buffers: shared read=55613
               ->  Hash  (cost=3207.44..3207.44 rows=46351 width=25) (actual time=3156.321..3156.321 rows=144120 loops=1)
                     Buckets: 262144 (originally 65536)  Batches: 1 (originally 1)  Memory Usage: 10692kB
                     Buffers: shared read=57781
                     ->  Hash Join  (cost=2000.03..3207.44 rows=46351 width=25) (actual time=1984.426..3103.126 rows=144120 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared read=57781
                           ->  Hash Join  (cost=140.86..1339.64 rows=105777 width=4) (actual time=145.023..1096.453 rows=542096 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=21783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=292980 width=8) (actual time=6.428..794.310 rows=590994 loops=1)
                                       Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                       Rows Removed by Filter: 2018135
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=138.066..138.066 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.713..107.320 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared read=2994
                           ->  Hash  (cost=1696.56..1696.56 rows=1107888 width=21) (actual time=1834.299..1834.299 rows=1107888 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 75795kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1107888 width=21) (actual time=9.839..1344.707 rows=1107888 loops=1)
                                       Filter: ((production_year >= 2005) AND (production_year <= 2015))
                                       Rows Removed by Filter: 1420424
                                       Buffers: shared read=35998
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=2034.045..2034.045 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared read=36447
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=28.332..1027.084 rows=3140339 loops=1)
                     Buffers: shared read=36447
 Planning Time: 4234.943 ms
 Execution Time: 20382.278 ms
(74 rows)

