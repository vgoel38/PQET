                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1906.88..1906.88 rows=1 width=64) (actual time=14846.085..14846.086 rows=1 loops=1)
   Buffers: shared hit=27354 read=29713
   ->  Nested Loop  (cost=129.46..1906.88 rows=1 width=33) (actual time=9206.814..14846.042 rows=6 loops=1)
         Buffers: shared hit=27354 read=29713
         ->  Nested Loop  (cost=129.45..1906.87 rows=1 width=37) (actual time=9206.754..14845.931 rows=6 loops=1)
               Buffers: shared hit=27342 read=29713
               ->  Nested Loop  (cost=129.44..1906.62 rows=1 width=45) (actual time=8321.563..14342.300 rows=171 loops=1)
                     Buffers: shared hit=26741 read=29630
                     ->  Nested Loop  (cost=129.43..1906.14 rows=1 width=25) (actual time=8280.711..12986.707 rows=104 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=26422 read=29532
                           ->  Nested Loop  (cost=129.41..1834.91 rows=1 width=25) (actual time=8240.107..12082.537 rows=4 loops=1)
                                 Buffers: shared hit=26379 read=29425
                                 ->  Hash Join  (cost=129.40..1709.50 rows=21 width=4) (actual time=147.558..1400.997 rows=8495 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=8 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..1580.04 rows=720 width=8) (actual time=0.191..1240.501 rows=8569 loops=1)
                                             Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text) AND ((note ~~ '%(2006)%'::text) OR (note ~~ '%(2007)%'::text)))
                                             Rows Removed by Filter: 2600560
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=6752 width=4) (actual time=147.326..147.326 rows=6752 loops=1)
                                             Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=6752 width=4) (actual time=11.820..143.631 rows=6752 loops=1)
                                                   Filter: ((country_code)::text = '[jp]'::text)
                                                   Rows Removed by Filter: 228245
                                                   Buffers: shared hit=2 read=2992
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..5.96 rows=1 width=21) (actual time=1.256..1.256 rows=0 loops=8495)
                                       Index Cond: (id = mc.movie_id)
                                       Filter: ((production_year >= 2006) AND (production_year <= 2007) AND ((title ~~ 'One Piece%'::text) OR (title ~~ 'Dragon Ball Z%'::text)))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=26371 read=7647
                           ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..71.23 rows=1 width=12) (actual time=59.307..225.968 rows=26 loops=4)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: (note = '(voice: English version)'::text)
                                 Rows Removed by Filter: 17
                                 Buffers: shared hit=43 read=107
                     ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..0.48 rows=2 width=20) (actual time=12.006..13.027 rows=2 loops=104)
                           Index Cond: (person_id = ci.person_id)
                           Buffers: shared hit=319 read=98
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.25 rows=1 width=4) (actual time=2.942..2.942 rows=0 loops=171)
                     Index Cond: (id = an.person_id)
                     Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=601 read=83
         ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=6)
               Index Cond: (id = ci.role_id)
               Filter: ((role)::text = 'actress'::text)
               Buffers: shared hit=12
 Planning Time: 4399.099 ms
 Execution Time: 14846.511 ms
(51 rows)

