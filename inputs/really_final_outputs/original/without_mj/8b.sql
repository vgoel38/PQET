                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1906.87..1906.87 rows=1 width=64) (actual time=14690.836..14690.836 rows=1 loops=1)
   Buffers: shared hit=27339 read=29728
   ->  Nested Loop  (cost=129.46..1906.87 rows=1 width=33) (actual time=9184.133..14690.796 rows=6 loops=1)
         Buffers: shared hit=27339 read=29728
         ->  Nested Loop  (cost=129.45..1906.86 rows=1 width=37) (actual time=9160.317..14666.933 rows=6 loops=1)
               Buffers: shared hit=27329 read=29726
               ->  Nested Loop  (cost=129.44..1906.61 rows=1 width=45) (actual time=8491.776..14189.151 rows=171 loops=1)
                     Buffers: shared hit=26729 read=29642
                     ->  Nested Loop  (cost=129.43..1906.14 rows=1 width=25) (actual time=8450.933..13319.731 rows=104 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=26412 read=29542
                           ->  Nested Loop  (cost=129.41..1834.91 rows=1 width=25) (actual time=8386.581..12476.063 rows=4 loops=1)
                                 Buffers: shared hit=26372 read=29432
                                 ->  Hash Join  (cost=129.40..1709.50 rows=21 width=4) (actual time=160.160..1428.948 rows=8495 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=3 read=21783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..1580.04 rows=720 width=8) (actual time=21.084..1276.550 rows=8569 loops=1)
                                             Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))
                                             Rows Removed by Filter: 2600560
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=128.41..128.41 rows=6752 width=4) (actual time=139.006..139.006 rows=6752 loops=1)
                                             Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=6752 width=4) (actual time=2.776..135.554 rows=6752 loops=1)
                                                   Filter: ((country_code)::text = '[jp]'::text)
                                                   Rows Removed by Filter: 228245
                                                   Buffers: shared read=2994
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..5.96 rows=1 width=21) (actual time=1.299..1.299 rows=0 loops=8495)
                                       Index Cond: (id = mc.movie_id)
                                       Filter: ((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=26369 read=7649
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..71.23 rows=1 width=12) (actual time=61.691..210.846 rows=26 loops=4)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: (note = '(voice: English version)'::text)
                                 Rows Removed by Filter: 17
                                 Buffers: shared hit=40 read=110
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.47 rows=2 width=20) (actual time=7.330..8.352 rows=2 loops=104)
                           Index Cond: (person_id = ci.person_id)
                           Buffers: shared hit=317 read=100
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=4) (actual time=2.791..2.791 rows=0 loops=171)
                     Index Cond: (id = an.person_id)
                     Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=600 read=84
         ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=3.972..3.972 rows=1 loops=6)
               Index Cond: (id = ci.role_id)
               Filter: ((role)::text = 'actress'::text)
               Buffers: shared hit=10 read=2
 Planning Time: 3420.560 ms
 Execution Time: 14691.434 ms
(51 rows)

