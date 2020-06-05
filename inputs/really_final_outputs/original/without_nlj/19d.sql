                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31298.85..31298.85 rows=1 width=64) (actual time=34574.306..34574.306 rows=1 loops=1)
   Buffers: shared hit=24 read=575763
   ->  Hash Join  (cost=15151.00..31298.77 rows=480 width=32) (actual time=24848.361..34163.719 rows=1760645 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=24 read=575763
         ->  Hash Join  (cost=13329.70..29477.39 rows=989 width=36) (actual time=23105.553..32004.185 rows=1909379 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=19 read=539318
               ->  Hash Join  (cost=10308.61..26455.70 rows=4929 width=25) (actual time=19943.611..28443.983 rows=881478 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=15 read=472314
                     ->  Hash Join  (cost=10167.75..26313.73 rows=13652 width=29) (actual time=19802.760..27780.306 rows=3674526 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=13 read=469322
                           ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=4019.942..11237.365 rows=276166 loops=1)
                                 Hash Cond: (ci.role_id = rt.id)
                                 Buffers: shared hit=6 read=252649
                                 ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=0.018..11041.956 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared hit=5 read=252649
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.009 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared hit=1
                           ->  Hash  (cost=10129.98..10129.98 rows=257094 width=33) (actual time=15782.031..15782.031 rows=6621484 loops=1)
                                 Buckets: 8388608 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 494357kB
                                 Buffers: shared hit=7 read=216673
                                 ->  Hash Join  (cost=9051.25..10129.98 rows=257094 width=33) (actual time=11612.279..13929.759 rows=6621484 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=7 read=216673
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..381.525 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=9040.72..9040.72 rows=71736 width=25) (actual time=11611.961..11611.962 rows=1798330 loops=1)
                                             Buckets: 2097152 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 119425kB
                                             Buffers: shared hit=4 read=197887
                                             ->  Hash Join  (cost=1703.08..9040.72 rows=71736 width=25) (actual time=3233.852..11055.724 rows=1798330 loops=1)
                                                   Hash Cond: (mi.movie_id = t.id)
                                                   Buffers: shared hit=4 read=197887
                                                   ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1506.565..8238.250 rows=3036719 loops=1)
                                                         Hash Cond: (mi.info_type_id = it.id)
                                                         Buffers: shared hit=3 read=161890
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=4.762..5038.903 rows=14835720 loops=1)
                                                               Buffers: shared hit=2 read=161890
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.074..0.074 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.028..0.063 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'release dates'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1719.905..1719.905 rows=1381453 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                                         Buffers: shared hit=1 read=35997
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=4.021..1133.968 rows=1381453 loops=1)
                                                               Filter: (production_year > 2000)
                                                               Rows Removed by Filter: 1146859
                                                               Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=140.524..140.524 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=4.375..109.517 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=2 read=2992
               ->  Hash  (cost=2990.55..2990.55 rows=208060 width=23) (actual time=3161.325..3161.325 rows=193486 loops=1)
                     Buckets: 262144  Batches: 1  Memory Usage: 12877kB
                     Buffers: shared hit=4 read=67004
                     ->  Hash Join  (cost=2497.33..2990.55 rows=208060 width=23) (actual time=2606.636..3096.335 rows=193486 loops=1)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared hit=4 read=67004
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.007..175.972 rows=901343 loops=1)
                                 Buffers: shared hit=2 read=11393
                           ->  Hash  (cost=2356.12..2356.12 rows=961996 width=19) (actual time=2604.223..2604.223 rows=961555 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 58170kB
                                 Buffers: shared hit=2 read=55611
                                 ->  Seq Scan on name n  (cost=0.00..2356.12 rows=961996 width=19) (actual time=1095.761..2311.856 rows=961555 loops=1)
                                       Filter: ((gender)::text = 'f'::text)
                                       Rows Removed by Filter: 3205936
                                       Buffers: shared hit=2 read=55611
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1733.256..1733.256 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=20.667..833.825 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 7151.220 ms
 Execution Time: 34587.385 ms
(90 rows)

