                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=19485.70..19485.70 rows=1 width=64) (actual time=62349.853..62349.853 rows=1 loops=1)
   Buffers: shared hit=1918322 read=376640
   ->  Nested Loop  (cost=1305.66..19485.70 rows=1 width=33) (actual time=24783.437..62349.666 rows=62 loops=1)
         Join Filter: (ci.movie_id = t.id)
         Rows Removed by Join Filter: 106322128
         Buffers: shared hit=1918322 read=376640
         ->  Nested Loop  (cost=1305.66..17810.62 rows=1 width=24) (actual time=23180.015..42357.731 rows=62 loops=1)
               Join Filter: (n1.id = an1.person_id)
               Rows Removed by Join Filter: 34250972
               Buffers: shared hit=421618 read=341446
               ->  Nested Loop  (cost=1305.66..17258.58 rows=1 width=16) (actual time=22922.341..35736.943 rows=38 loops=1)
                     Join Filter: (ci.person_id = n1.id)
                     Rows Removed by Join Filter: 155535980
                     Buffers: shared hit=3 read=330051
                     ->  Seq Scan on name n1  (cost=0.00..2679.69 rows=19696 width=4) (actual time=33.770..1117.907 rows=20911 loops=1)
                           Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                           Rows Removed by Filter: 4146580
                           Buffers: shared read=55613
                     ->  Materialize  (cost=1305.66..14565.63 rows=3 width=12) (actual time=0.248..0.951 rows=7438 loops=20911)
                           Buffers: shared hit=3 read=274438
                           ->  Hash Join  (cost=1305.66..14565.63 rows=3 width=12) (actual time=5182.462..13191.732 rows=7438 loops=1)
                                 Hash Cond: (ci.movie_id = mc.movie_id)
                                 Buffers: shared hit=3 read=274438
                                 ->  Nested Loop  (cost=0.00..13258.49 rows=7638 width=8) (actual time=4130.132..12139.074 rows=34848 loops=1)
                                       Join Filter: (ci.role_id = rt.id)
                                       Rows Removed by Join Filter: 58247
                                       Buffers: shared read=252655
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.166..0.168 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                                       ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=91662 width=12) (actual time=14.443..12116.371 rows=93095 loops=1)
                                             Filter: (note = '(voice: English version)'::text)
                                             Rows Removed by Filter: 36151249
                                             Buffers: shared read=252654
                                 ->  Hash  (cost=1305.59..1305.59 rows=458 width=4) (actual time=1036.285..1036.285 rows=48328 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2212kB
                                       Buffers: shared read=21783
                                       ->  Hash Join  (cost=129.40..1305.59 rows=458 width=4) (actual time=144.778..1022.538 rows=48328 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared read=21783
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=15927 width=8) (actual time=6.120..864.847 rows=48897 loops=1)
                                                   Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))
                                                   Rows Removed by Filter: 2560232
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=128.41..128.41 rows=6752 width=4) (actual time=138.623..138.623 rows=6752 loops=1)
                                                   Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=6752 width=4) (actual time=2.786..134.875 rows=6752 loops=1)
                                                         Filter: ((country_code)::text = '[jp]'::text)
                                                         Rows Removed by Filter: 228245
                                                         Buffers: shared read=2994
               ->  Seq Scan on aka_name an1  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.095..73.133 rows=901343 loops=38)
                     Buffers: shared hit=421615 read=11395
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=0.143..140.761 rows=1714874 loops=62)
               Buffers: shared hit=1496704 read=35194
 Planning Time: 3688.825 ms
 Execution Time: 62350.857 ms
(58 rows)

