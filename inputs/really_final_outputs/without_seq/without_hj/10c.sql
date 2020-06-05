                                                                                                             QUERY PLAN                                                                                                              
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=387014.41..387014.41 rows=1 width=64) (actual time=1126292.520..1126292.520 rows=1 loops=1)
   Buffers: shared hit=25209984 read=351212
   ->  Nested Loop  (cost=349549.86..386962.72 rows=332865 width=33) (actual time=1126292.395..1126292.446 rows=10 loops=1)
         Join Filter: (ci.role_id = rt.id)
         Buffers: shared hit=25209984 read=351212
         ->  Nested Loop  (cost=349549.86..386123.38 rows=332865 width=37) (actual time=1126290.868..1126290.908 rows=10 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 4
               Buffers: shared hit=25209983 read=351211
               ->  Merge Join  (cost=349549.86..385863.27 rows=332865 width=41) (actual time=1126268.232..1126268.251 rows=10 loops=1)
                     Merge Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=25209982 read=351210
                     ->  Sort  (cost=349549.84..349603.10 rows=685892 width=29) (actual time=1126268.208..1126268.213 rows=11 loops=1)
                           Sort Key: ci.person_role_id
                           Sort Method: quicksort  Memory: 85616kB
                           Buffers: shared hit=25209978 read=351210
                           ->  Nested Loop  (cost=39390.09..347484.97 rows=685892 width=29) (actual time=4737.920..1125499.317 rows=782104 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=25209974 read=351210
                                 ->  Merge Join  (cost=39390.07..62931.79 rows=651653 width=29) (actual time=4599.183..29856.915 rows=596250 loops=1)
                                       Merge Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=2719871 read=72612
                                       ->  Sort  (cost=39390.04..39463.18 rows=941996 width=8) (actual time=4588.803..4981.556 rows=1153798 loops=1)
                                             Sort Key: mc.movie_id
                                             Sort Method: quicksort  Memory: 103237kB
                                             Buffers: shared hit=231723 read=29751
                                             ->  Merge Join  (cost=31413.16..36487.21 rows=941996 width=8) (actual time=2463.875..4113.625 rows=1153798 loops=1)
                                                   Merge Cond: (cn.id = mc.company_id)
                                                   Buffers: shared hit=231723 read=29751
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.070..802.053 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=231720 read=3834
                                                   ->  Sort  (cost=31413.15..31615.72 rows=2609129 width=12) (actual time=2463.795..2811.538 rows=2609129 loops=1)
                                                         Sort Key: mc.company_id
                                                         Sort Method: quicksort  Memory: 220607kB
                                                         Buffers: shared hit=3 read=25917
                                                         ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=25.181..1433.263 rows=2609129 loops=1)
                                                               Buffers: shared hit=3 read=25917
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.026..23324.783 rows=1748441 loops=1)
                                             Filter: (production_year > 1990)
                                             Rows Removed by Filter: 777303
                                             Buffers: shared hit=2488148 read=42861
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=12) (actual time=1.300..1.835 rows=1 loops=596250)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: (note ~~ '%(producer)%'::text)
                                       Rows Removed by Filter: 34
                                       Buffers: shared hit=22490103 read=278598
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.018..0.018 rows=1 loops=1)
                           Buffers: shared hit=4
               ->  Materialize  (cost=0.00..6.13 rows=4 width=4) (actual time=2.263..2.264 rows=1 loops=10)
                     Buffers: shared hit=1 read=1
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=22.628..22.631 rows=2 loops=1)
                           Heap Fetches: 0
                           Buffers: shared hit=1 read=1
         ->  Materialize  (cost=0.00..6.13 rows=12 width=4) (actual time=0.152..0.152 rows=1 loops=10)
               Buffers: shared hit=1 read=1
               ->  Index Only Scan using role_type_pkey on role_type rt  (cost=0.00..6.13 rows=12 width=4) (actual time=1.514..1.514 rows=1 loops=1)
                     Heap Fetches: 0
                     Buffers: shared hit=1 read=1
 Planning Time: 2676.194 ms
 Execution Time: 1126357.154 ms
(62 rows)

