                                                                               QUERY PLAN                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3124.01..3124.01 rows=1 width=64) (actual time=177726.053..177726.054 rows=1 loops=1)
   Buffers: shared hit=64188 read=54214
   ->  Hash Join  (cost=128.72..3123.99 rows=100 width=33) (actual time=177726.043..177726.044 rows=0 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=64188 read=54214
         ->  Nested Loop  (cost=128.68..3123.95 rows=100 width=37) (actual time=177725.790..177725.790 rows=0 loops=1)
               Buffers: shared hit=64185 read=54213
               ->  Hash Join  (cost=128.67..3100.26 rows=205 width=25) (actual time=177725.789..177725.789 rows=0 loops=1)
                     Hash Cond: (ci.role_id = rt.id)
                     Buffers: shared hit=64185 read=54213
                     ->  Nested Loop  (cost=128.64..3100.01 rows=2464 width=29) (actual time=744.222..177720.985 rows=2614 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=64185 read=54212
                           ->  Nested Loop  (cost=128.62..2077.78 rows=2341 width=29) (actual time=231.292..31752.132 rows=1259 loops=1)
                                 Buffers: shared hit=27857 read=29126
                                 ->  Hash Join  (cost=128.61..1111.06 rows=15111 width=8) (actual time=168.524..2594.753 rows=8790 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared read=21783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=26.017..1430.536 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=128.41..128.41 rows=1361 width=4) (actual time=138.349..138.350 rows=1361 loops=1)
                                             Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=1361 width=4) (actual time=3.228..137.517 rows=1361 loops=1)
                                                   Filter: ((country_code)::text = '[ru]'::text)
                                                   Rows Removed by Filter: 233636
                                                   Buffers: shared read=2994
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=3.314..3.314 rows=0 loops=8790)
                                       Index Cond: (id = mc.movie_id)
                                       Filter: (production_year > 2010)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=27857 read=7343
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=12) (actual time=65.920..115.932 rows=2 loops=1259)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 44
                                 Buffers: shared hit=36328 read=25086
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.118..0.119 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.106..0.113 rows=1 loops=1)
                                 Filter: ((role)::text = 'actor'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared read=1
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.12 rows=1 width=20) (never executed)
                     Index Cond: (id = ci.person_role_id)
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.190..0.190 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.166..0.170 rows=4 loops=1)
                     Buffers: shared read=1
 Planning Time: 2279.624 ms
 Execution Time: 177736.774 ms
(53 rows)

