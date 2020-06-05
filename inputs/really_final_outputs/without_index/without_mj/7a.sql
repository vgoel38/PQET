                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21895.71..21895.71 rows=1 width=64) (actual time=680709.286..680709.287 rows=1 loops=1)
   Buffers: shared hit=16128748 read=406642
   ->  Nested Loop  (cost=5466.27..21895.71 rows=1 width=32) (actual time=39722.601..680709.196 rows=32 loops=1)
         Join Filter: (n.id = an.person_id)
         Rows Removed by Join Filter: 9445656
         Buffers: shared hit=16128748 read=406642
         ->  Nested Loop  (cost=5466.27..21307.35 rows=1 width=44) (actual time=39685.413..677345.211 rows=14 loops=1)
               Join Filter: (ml.linked_movie_id = t.id)
               Rows Removed by Join Filter: 2022526
               Buffers: shared hit=15980613 read=395247
               ->  Nested Loop  (cost=5466.24..21297.27 rows=1 width=52) (actual time=28917.751..674637.217 rows=390 loops=1)
                     Join Filter: (pi.person_id = n.id)
                     Rows Removed by Join Filter: 54284602
                     Buffers: shared hit=15917206 read=395083
                     ->  Nested Loop  (cost=0.00..2029.08 rows=1 width=4) (actual time=67.104..2103.955 rows=64 loops=1)
                           Join Filter: (it.id = pi.info_type_id)
                           Buffers: shared read=50819
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=18.384..18.399 rows=1 loops=1)
                                 Filter: ((info)::text = 'mini biography'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
                           ->  Seq Scan on person_info pi  (cost=0.00..2029.02 rows=64 width=8) (actual time=48.710..2085.421 rows=64 loops=1)
                                 Filter: (note = 'Volker Boehm'::text)
                                 Rows Removed by Filter: 2963600
                                 Buffers: shared read=50818
                     ->  Hash Join  (cost=5466.24..19187.01 rows=553043 width=48) (actual time=68.110..10434.331 rows=848203 loops=64)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=15917206 read=344264
                           ->  Hash Join  (cost=3719.75..17105.44 rows=4110294 width=27) (actual time=41.218..9195.648 rows=5504872 loops=64)
                                 Hash Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=15917203 read=308266
                                 ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.094..2571.733 rows=36244344 loops=64)
                                       Buffers: shared hit=15917202 read=252654
                                 ->  Hash  (cost=3650.38..3650.38 rows=472615 width=19) (actual time=2630.016..2630.016 rows=543291 loops=1)
                                       Buckets: 1048576 (originally 524288)  Batches: 1 (originally 1)  Memory Usage: 36304kB
                                       Buffers: shared hit=1 read=55612
                                       ->  Seq Scan on name n  (cost=0.00..3650.38 rows=472615 width=19) (actual time=11.543..2446.127 rows=543291 loops=1)
                                             Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'B%'::text))))
                                             Rows Removed by Filter: 3624200
                                             Buffers: shared hit=1 read=55612
                           ->  Hash  (cost=1696.56..1696.56 rows=340186 width=21) (actual time=1717.124..1717.124 rows=340186 loops=1)
                                 Buckets: 524288  Batches: 1  Memory Usage: 22393kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=340186 width=21) (actual time=9.468..1514.022 rows=340186 loops=1)
                                       Filter: ((production_year >= 1980) AND (production_year <= 1995))
                                       Rows Removed by Filter: 2188126
                                       Buffers: shared read=35998
               ->  Hash Join  (cost=0.03..9.84 rows=1666 width=4) (actual time=0.080..6.517 rows=5186 loops=390)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=63407 read=164
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.059..2.041 rows=29997 loops=390)
                           Buffers: shared hit=63407 read=163
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.356..0.356 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.341..0.346 rows=1 loops=1)
                                 Filter: ((link)::text = 'features'::text)
                                 Rows Removed by Filter: 17
                                 Buffers: shared read=1
         ->  Seq Scan on aka_name an  (cost=0.00..489.73 rows=671965 width=4) (actual time=1.433..183.923 rows=674692 loops=14)
               Filter: (name ~~ '%a%'::text)
               Rows Removed by Filter: 226651
               Buffers: shared hit=148135 read=11395
 Planning Time: 5982.784 ms
 Execution Time: 680711.024 ms
(65 rows)

