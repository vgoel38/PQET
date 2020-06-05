                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20228.08..20228.08 rows=1 width=64) (actual time=18153.477..18153.477 rows=1 loops=1)
   Buffers: shared hit=3 read=377444
   ->  Hash Join  (cost=6975.47..20228.08 rows=1 width=33) (actual time=12450.367..18153.446 rows=6 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=3 read=377444
         ->  Hash Join  (cost=6975.44..20228.05 rows=1 width=37) (actual time=12450.084..18153.158 rows=6 loops=1)
               Hash Cond: (ci.person_id = an.person_id)
               Buffers: shared read=377443
               ->  Hash Join  (cost=3798.66..17051.26 rows=1 width=25) (actual time=2992.904..14836.812 rows=104 loops=1)
                     Hash Cond: (ci.movie_id = mc.movie_id)
                     Buffers: shared read=310435
                     ->  Hash Join  (cost=2089.16..15341.76 rows=1 width=33) (actual time=1895.357..13796.091 rows=226 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared read=288652
                           ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=93269 width=12) (actual time=47.598..12059.231 rows=93095 loops=1)
                                 Filter: (note = '(voice: English version)'::text)
                                 Rows Removed by Filter: 36151249
                                 Buffers: shared read=252654
                           ->  Hash  (cost=2089.15..2089.15 rows=34 width=21) (actual time=1716.334..1716.335 rows=7 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..2089.15 rows=34 width=21) (actual time=1261.499..1716.282 rows=7 loops=1)
                                       Filter: ((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))
                                       Rows Removed by Filter: 2528305
                                       Buffers: shared read=35998
                     ->  Hash  (cost=1709.50..1709.50 rows=21 width=4) (actual time=1040.480..1040.480 rows=8495 loops=1)
                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 427kB
                           Buffers: shared read=21783
                           ->  Hash Join  (cost=129.40..1709.50 rows=21 width=4) (actual time=148.474..1037.655 rows=8495 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=21783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1580.04 rows=720 width=8) (actual time=10.126..895.511 rows=8569 loops=1)
                                       Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))
                                       Rows Removed by Filter: 2600560
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=128.41..128.41 rows=6752 width=4) (actual time=138.248..138.248 rows=6752 loops=1)
                                       Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=6752 width=4) (actual time=2.688..134.537 rows=6752 loops=1)
                                             Filter: ((country_code)::text = '[jp]'::text)
                                             Rows Removed by Filter: 228245
                                             Buffers: shared read=2994
               ->  Hash  (cost=3176.10..3176.10 rows=4689 width=24) (actual time=3316.263..3316.263 rows=4031 loops=1)
                     Buckets: 8192  Batches: 1  Memory Usage: 293kB
                     Buffers: shared read=67008
                     ->  Hash Join  (cost=2682.87..3176.10 rows=4689 width=24) (actual time=2767.023..3313.860 rows=4031 loops=1)
                           Hash Cond: (an.person_id = n.id)
                           Buffers: shared read=67008
                           ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=25.186..334.697 rows=901343 loops=1)
                                 Buffers: shared read=11395
                           ->  Hash  (cost=2679.69..2679.69 rows=21680 width=4) (actual time=2736.041..2736.041 rows=20911 loops=1)
                                 Buckets: 32768  Batches: 1  Memory Usage: 992kB
                                 Buffers: shared read=55613
                                 ->  Seq Scan on name n  (cost=0.00..2679.69 rows=21680 width=4) (actual time=39.533..2724.009 rows=20911 loops=1)
                                       Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                                       Rows Removed by Filter: 4146580
                                       Buffers: shared read=55613
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.226..0.226 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.207..0.213 rows=1 loops=1)
                     Filter: ((role)::text = 'actress'::text)
                     Rows Removed by Filter: 11
                     Buffers: shared read=1
 Planning Time: 3986.814 ms
 Execution Time: 18173.664 ms
(66 rows)

