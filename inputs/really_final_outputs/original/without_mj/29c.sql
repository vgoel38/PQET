                                                                                                                        QUERY PLAN                                                                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=135.50..135.50 rows=1 width=96) (actual time=151041.020..151041.020 rows=1 loops=1)
   Buffers: shared hit=10239340 read=16858
   ->  Nested Loop  (cost=0.16..135.50 rows=1 width=48) (actual time=70039.451..151033.597 rows=16308 loops=1)
         Join Filter: (cct1.id = cc.subject_id)
         Buffers: shared hit=10239340 read=16858
         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.092..0.097 rows=1 loops=1)
               Filter: ((kind)::text = 'cast'::text)
               Rows Removed by Filter: 3
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.16..135.46 rows=1 width=52) (actual time=70039.351..151029.544 rows=16308 loops=1)
               Join Filter: (cct2.id = cc.status_id)
               Rows Removed by Join Filter: 11714
               Buffers: shared hit=10239340 read=16857
               ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.010 rows=1 loops=1)
                     Filter: ((kind)::text = 'complete+verified'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
               ->  Nested Loop  (cost=0.16..135.43 rows=1 width=56) (actual time=21882.255..151023.256 rows=28022 loops=1)
                     Join Filter: (t.id = cc.movie_id)
                     Buffers: shared hit=10239339 read=16857
                     ->  Nested Loop  (cost=0.15..135.42 rows=1 width=68) (actual time=18842.195..150528.702 rows=33206 loops=1)
                           Join Filter: (ci.person_id = n.id)
                           Buffers: shared hit=10111724 read=16832
                           ->  Nested Loop  (cost=0.14..135.33 rows=1 width=65) (actual time=8094.055..146349.908 rows=257349 loops=1)
                                 Buffers: shared hit=9079474 read=16356
                                 ->  Nested Loop  (cost=0.12..135.31 rows=1 width=69) (actual time=8043.020..135184.916 rows=1160310 loops=1)
                                       Join Filter: (ci.person_id = an.person_id)
                                       Buffers: shared hit=4433938 read=15692
                                       ->  Nested Loop  (cost=0.11..135.28 rows=1 width=65) (actual time=8005.244..126257.291 rows=402798 loops=1)
                                             Join Filter: (pi.info_type_id = it3.id)
                                             Rows Removed by Join Filter: 1076564
                                             Buffers: shared hit=2626079 read=15121
                                             ->  Nested Loop  (cost=0.11..135.24 rows=1 width=69) (actual time=8005.207..107610.742 rows=1479362 loops=1)
                                                   Join Filter: (t.id = mc.movie_id)
                                                   Buffers: shared hit=1146717 read=15121
                                                   ->  Nested Loop  (cost=0.10..135.20 rows=1 width=61) (actual time=6897.601..103525.191 rows=59617 loops=1)
                                                         Join Filter: (mi.info_type_id = it.id)
                                                         Buffers: shared hit=834740 read=14852
                                                         ->  Nested Loop  (cost=0.10..135.16 rows=1 width=65) (actual time=6873.639..103191.268 rows=59617 loops=1)
                                                               Join Filter: (t.id = mi.movie_id)
                                                               Buffers: shared hit=775124 read=14851
                                                               ->  Nested Loop  (cost=0.08..134.85 rows=2 width=57) (actual time=2347.982..87391.870 rows=25271 loops=1)
                                                                     Buffers: shared hit=108948 read=12767
                                                                     ->  Nested Loop  (cost=0.07..133.94 rows=5 width=45) (actual time=2330.330..81402.416 rows=26337 loops=1)
                                                                           Buffers: shared hit=8703 read=11915
                                                                           ->  Nested Loop  (cost=0.06..133.72 rows=1 width=37) (actual time=2295.382..67396.891 rows=1015 loops=1)
                                                                                 Join Filter: (rt.id = ci.role_id)
                                                                                 Rows Removed by Join Filter: 2414
                                                                                 Buffers: shared hit=5580 read=10303
                                                                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=18.848..18.858 rows=1 loops=1)
                                                                                       Filter: ((role)::text = 'actress'::text)
                                                                                       Rows Removed by Filter: 11
                                                                                       Buffers: shared read=1
                                                                                 ->  Nested Loop  (cost=0.06..133.68 rows=5 width=41) (actual time=185.828..67373.830 rows=3429 loops=1)
                                                                                       Join Filter: (t.id = ci.movie_id)
                                                                                       Buffers: shared hit=5580 read=10302
                                                                                       ->  Nested Loop  (cost=0.04..129.99 rows=14 width=25) (actual time=128.656..10538.144 rows=249 loops=1)
                                                                                             Buffers: shared hit=901 read=1122
                                                                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=65.596..1979.960 rows=414 loops=1)
                                                                                                   Buffers: shared read=366
                                                                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=20.942..20.946 rows=1 loops=1)
                                                                                                         Index Cond: (keyword = 'computer-animation'::text)
                                                                                                         Buffers: shared read=4
                                                                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=44.644..1957.820 rows=414 loops=1)
                                                                                                         Index Cond: (keyword_id = k.id)
                                                                                                         Buffers: shared read=362
                                                                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=20.663..20.663 rows=1 loops=414)
                                                                                                   Index Cond: (id = mk.movie_id)
                                                                                                   Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                   Rows Removed by Filter: 0
                                                                                                   Buffers: shared hit=901 read=756
                                                                                       ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=56.277..228.211 rows=14 loops=249)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                             Rows Removed by Filter: 41
                                                                                             Buffers: shared hit=4679 read=9180
                                                                           ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.22 rows=5 width=8) (actual time=13.548..13.780 rows=26 loops=1015)
                                                                                 Index Cond: (person_id = ci.person_id)
                                                                                 Buffers: shared hit=3123 read=1612
                                                                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=0.226..0.226 rows=1 loops=26337)
                                                                           Index Cond: (id = ci.person_role_id)
                                                                           Buffers: shared hit=100245 read=852
                                                               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=0.277..0.624 rows=2 loops=25271)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                     Rows Removed by Filter: 230
                                                                     Buffers: shared hit=666176 read=2084
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=59617)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 15
                                                               Buffers: shared hit=59616 read=1
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.042..0.058 rows=25 loops=59617)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=311977 read=269
                                             ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.004..0.012 rows=1 loops=1479362)
                                                   Filter: ((info)::text = 'trivia'::text)
                                                   Rows Removed by Filter: 86
                                                   Buffers: shared hit=1479362
                                       ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.03 rows=2 width=4) (actual time=0.018..0.020 rows=3 loops=402798)
                                             Index Cond: (person_id = pi.person_id)
                                             Buffers: shared hit=1807859 read=571
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.009..0.009 rows=0 loops=1160310)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=4645536 read=664
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.09 rows=1 width=19) (actual time=0.016..0.016 rows=0 loops=257349)
                                 Index Cond: (id = pi.person_id)
                                 Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=1032250 read=476
                     ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.014..0.014 rows=1 loops=33206)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=127615 read=25
 Planning Time: 18743.000 ms
 Execution Time: 151042.160 ms
(116 rows)

