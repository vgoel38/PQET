                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4763.56..4763.56 rows=1 width=64) (actual time=476763.224..476763.225 rows=1 loops=1)
   Buffers: shared hit=191956 read=105569
   ->  Nested Loop  (cost=128.69..4763.56 rows=4 width=33) (actual time=34189.779..476762.482 rows=104 loops=1)
         Buffers: shared hit=191956 read=105569
         ->  Nested Loop  (cost=128.68..4763.54 rows=4 width=37) (actual time=34169.713..476740.678 rows=104 loops=1)
               Buffers: shared hit=191750 read=105567
               ->  Hash Join  (cost=128.67..4732.19 rows=8 width=25) (actual time=34145.671..475783.665 rows=112 loops=1)
                     Hash Cond: (ci.role_id = rt.id)
                     Buffers: shared hit=191472 read=105428
                     ->  Nested Loop  (cost=128.64..4732.15 rows=97 width=29) (actual time=34145.397..475782.723 rows=151 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=191469 read=105427
                           ->  Nested Loop  (cost=128.62..2077.78 rows=6054 width=29) (actual time=217.159..39200.163 rows=4539 loops=1)
                                 Buffers: shared hit=27847 read=29125
                                 ->  Hash Join  (cost=128.61..1111.06 rows=15111 width=8) (actual time=168.732..2587.210 rows=8790 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared read=21783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=26.150..1351.789 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=128.41..128.41 rows=1361 width=4) (actual time=138.959..138.959 rows=1361 loops=1)
                                             Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1361 width=4) (actual time=3.253..138.064 rows=1361 loops=1)
                                                   Filter: ((country_code)::text = '[ru]'::text)
                                                   Rows Removed by Filter: 233636
                                                   Buffers: shared read=2994
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=4.161..4.161 rows=1 loops=8790)
                                       Index Cond: (id = mc.movie_id)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=27847 read=7342
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=12) (actual time=90.709..96.181 rows=0 loops=4539)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: ((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))
                                 Rows Removed by Filter: 50
                                 Buffers: shared hit=163622 read=76302
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.206..0.206 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.181..0.187 rows=1 loops=1)
                                 Filter: ((role)::text = 'actor'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared read=1
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..3.92 rows=1 width=20) (actual time=8.537..8.537 rows=1 loops=112)
                     Index Cond: (id = ci.person_role_id)
                     Buffers: shared hit=278 read=139
         ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.203..0.203 rows=1 loops=104)
               Index Cond: (id = mc.company_type_id)
               Buffers: shared hit=206 read=2
 Planning Time: 2226.393 ms
 Execution Time: 476777.143 ms
(51 rows)

