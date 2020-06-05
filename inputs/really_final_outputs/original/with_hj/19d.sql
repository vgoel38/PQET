                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31298.85..31298.85 rows=1 width=64) (actual time=34623.328..34623.328 rows=1 loops=1)
   Buffers: shared hit=3 read=575784
   ->  Hash Join  (cost=15151.00..31298.77 rows=480 width=32) (actual time=25011.914..34220.209 rows=1760645 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=3 read=575784
         ->  Hash Join  (cost=13329.70..29477.39 rows=989 width=36) (actual time=23266.215..32065.632 rows=1909379 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared read=539337
               ->  Hash Join  (cost=10308.61..26455.70 rows=4929 width=25) (actual time=20094.926..28505.643 rows=881478 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared read=472329
                     ->  Hash Join  (cost=10167.75..26313.73 rows=13652 width=29) (actual time=19952.405..27846.359 rows=3674526 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared read=469335
                           ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=4102.219..11240.123 rows=276166 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared read=252655
                                 ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=51.412..11025.168 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared read=252654
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.817..21.818 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.799..21.806 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                           ->  Hash  (cost=10129.98..10129.98 rows=257094 width=33) (actual time=15848.814..15848.814 rows=6621484 loops=1)
                                 Buckets: 8388608 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 494357kB
                                 Buffers: shared read=216680
                                 ->  Hash Join  (cost=9051.25..10129.98 rows=257094 width=33) (actual time=11727.942..13979.194 rows=6621484 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared read=216680
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=5.634..323.547 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=9040.72..9040.72 rows=71736 width=25) (actual time=11721.659..11721.659 rows=1798330 loops=1)
                                             Buckets: 2097152 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 119425kB
                                             Buffers: shared read=197891
                                             ->  Hash Join  (cost=1703.08..9040.72 rows=71736 width=25) (actual time=3286.790..11162.573 rows=1798330 loops=1)
                                                   Hash Cond: (mi.movie_id = t.id)
                                                   Buffers: shared read=197891
                                                   ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1559.998..8339.501 rows=3036719 loops=1)
                                                         Hash Cond: (mi.info_type_id = it.id)
                                                         Buffers: shared read=161893
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=6.277..5138.928 rows=14835720 loops=1)
                                                               Buffers: shared read=161892
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.508..19.508 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=19.455..19.489 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'release dates'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared read=1
                                                   ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1721.081..1721.081 rows=1381453 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                                         Buffers: shared read=35998
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=3.729..1139.328 rows=1381453 loops=1)
                                                               Filter: (production_year > 2000)
                                                               Rows Removed by Filter: 1146859
                                                               Buffers: shared read=35998
                     ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=142.202..142.202 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared read=2994
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=4.737..114.669 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared read=2994
               ->  Hash  (cost=2990.55..2990.55 rows=208060 width=23) (actual time=3170.623..3170.623 rows=193486 loops=1)
                     Buckets: 262144  Batches: 1  Memory Usage: 12877kB
                     Buffers: shared read=67008
                     ->  Hash Join  (cost=2497.33..2990.55 rows=208060 width=23) (actual time=2616.783..3104.036 rows=193486 loops=1)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared read=67008
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=5.022..172.665 rows=901343 loops=1)
                                 Buffers: shared read=11395
                           ->  Hash  (cost=2356.12..2356.12 rows=961996 width=19) (actual time=2606.303..2606.303 rows=961555 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 58170kB
                                 Buffers: shared read=55613
                                 ->  Seq Scan on name n  (cost=0.00..2356.12 rows=961996 width=19) (actual time=1097.057..2318.219 rows=961555 loops=1)
                                       Filter: ((gender)::text = 'f'::text)
                                       Rows Removed by Filter: 3205936
                                       Buffers: shared read=55613
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1735.641..1735.642 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared read=36447
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=16.081..824.247 rows=3140339 loops=1)
                     Buffers: shared read=36447
 Planning Time: 6221.964 ms
 Execution Time: 34638.490 ms
(90 rows)

