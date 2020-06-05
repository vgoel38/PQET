                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20228.08..20228.08 rows=1 width=64) (actual time=17932.505..17932.506 rows=1 loops=1)
   Buffers: shared hit=18 read=377429
   ->  Hash Join  (cost=6975.47..20228.08 rows=1 width=33) (actual time=12220.630..17932.477 rows=6 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=18 read=377429
         ->  Hash Join  (cost=6975.44..20228.05 rows=1 width=37) (actual time=12220.595..17932.440 rows=6 loops=1)
               Hash Cond: (ci.person_id = an.person_id)
               Buffers: shared hit=14 read=377429
               ->  Hash Join  (cost=3798.66..17051.26 rows=1 width=25) (actual time=2959.722..14769.796 rows=104 loops=1)
                     Hash Cond: (ci.movie_id = mc.movie_id)
                     Buffers: shared hit=10 read=310425
                     ->  Hash Join  (cost=2089.16..15341.76 rows=1 width=33) (actual time=1861.938..13729.380 rows=226 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=5 read=288647
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=93269 width=12) (actual time=14.244..11991.934 rows=93095 loops=1)
                                 Filter: (note = '(voice: English version)'::text)
                                 Rows Removed by Filter: 36151249
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=2089.15..2089.15 rows=34 width=21) (actual time=1716.467..1716.468 rows=7 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..2089.15 rows=34 width=21) (actual time=1261.309..1716.425 rows=7 loops=1)
                                       Filter: ((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))
                                       Rows Removed by Filter: 2528305
                                       Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=1709.50..1709.50 rows=21 width=4) (actual time=1040.125..1040.125 rows=8495 loops=1)
                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 427kB
                           Buffers: shared hit=5 read=21778
                           ->  Hash Join  (cost=129.40..1709.50 rows=21 width=4) (actual time=147.657..1037.187 rows=8495 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1580.04 rows=720 width=8) (actual time=9.598..894.948 rows=8569 loops=1)
                                       Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))
                                       Rows Removed by Filter: 2600560
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=6752 width=4) (actual time=137.961..137.961 rows=6752 loops=1)
                                       Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=6752 width=4) (actual time=2.827..134.423 rows=6752 loops=1)
                                             Filter: ((country_code)::text = '[jp]'::text)
                                             Rows Removed by Filter: 228245
                                             Buffers: shared hit=2 read=2992
               ->  Hash  (cost=3176.10..3176.10 rows=4689 width=24) (actual time=3162.545..3162.545 rows=4031 loops=1)
                     Buckets: 8192  Batches: 1  Memory Usage: 293kB
                     Buffers: shared hit=4 read=67004
                     ->  Hash Join  (cost=2682.87..3176.10 rows=4689 width=24) (actual time=2612.993..3160.692 rows=4031 loops=1)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared hit=4 read=67004
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.002..324.738 rows=901343 loops=1)
                                 Buffers: shared hit=2 read=11393
                           ->  Hash  (cost=2679.69..2679.69 rows=21680 width=4) (actual time=2607.237..2607.237 rows=20911 loops=1)
                                 Buckets: 32768  Batches: 1  Memory Usage: 992kB
                                 Buffers: shared hit=2 read=55611
                                 ->  Seq Scan on name n  (cost=0.00..2679.69 rows=21680 width=4) (actual time=10.757..2596.135 rows=20911 loops=1)
                                       Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                                       Rows Removed by Filter: 4146580
                                       Buffers: shared hit=2 read=55611
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.012 rows=1 loops=1)
                     Filter: ((role)::text = 'actress'::text)
                     Rows Removed by Filter: 11
                     Buffers: shared hit=1
 Planning Time: 4769.256 ms
 Execution Time: 17932.849 ms
(66 rows)

