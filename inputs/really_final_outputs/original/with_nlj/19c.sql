 Aggregate  (cost=11083.92..11083.92 rows=1 width=64) (actual time=1311408.275..1311408.275 rows=1 loops=1)
   Buffers: shared hit=27269496 read=488717
   ->  Nested Loop  (cost=0.10..11083.92 rows=1 width=32) (actual time=89265.400..1311393.271 rows=3575 loops=1)
         Buffers: shared hit=27269496 read=488717
         ->  Nested Loop  (cost=0.08..11083.74 rows=1 width=36) (actual time=89235.273..1308398.303 rows=3744 loops=1)
               Join Filter: (n.id = an.person_id)
               Buffers: shared hit=27255582 read=488301
               ->  Nested Loop  (cost=0.07..11083.68 rows=1 width=44) (actual time=89197.666..1304148.234 rows=2830 loops=1)
                     Buffers: shared hit=27245171 read=488001
                     ->  Nested Loop  (cost=0.06..11044.37 rows=149 width=25) (actual time=5361.937..1247981.385 rows=132216 loops=1)
                           Join Filter: (ci.role_id = rt.id)
                           Rows Removed by Join Filter: 304713
                           Buffers: shared hit=26723787 read=479576
                           ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=9.291..9.293 rows=1 loops=1)
                                 Filter: ((role)::text = 'actress'::text)
                                 Rows Removed by Filter: 11
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.06..11044.08 rows=1788 width=29) (actual time=4396.604..1247796.171 rows=436929 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=26723787 read=479575
                                 ->  Nested Loop  (cost=0.04..9813.79 rows=2806 width=29) (actual time=1761.418..148505.623 rows=391371 loops=1)
                                       Join Filter: (mi.movie_id = t.id)
                                       Buffers: shared hit=6923168 read=229121
                                       ->  Nested Loop  (cost=0.03..9484.53 rows=5135 width=8) (actual time=1707.545..52158.674 rows=424729 loops=1)
                                             Buffers: shared hit=5262181 read=190118
                                             ->  Nested Loop  (cost=0.01..9231.13 rows=14224 width=12) (actual time=1660.946..20580.478 rows=890059 loops=1)
                                                   Buffers: shared hit=1699024 read=186276
                                                   ->  Nested Loop  (cost=0.00..8473.39 rows=3969 width=4) (actual time=1633.495..10965.749 rows=451039 loops=1)
                                                         Join Filter: (it.id = mi.info_type_id)
                                                         Rows Removed by Join Filter: 65
                                                         Buffers: shared hit=6670 read=162314
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=4.107..4.121 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared read=1
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=796.672..10681.393 rows=451104 loops=1)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                               Rows Removed by Filter: 14384616
                                                               Buffers: shared hit=6670 read=162313
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.19 rows=2 width=8) (actual time=0.015..0.019 rows=2 loops=451039)
                                                         Index Cond: (movie_id = mi.movie_id)
                                                         Buffers: shared hit=1692354 read=23962
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.034..0.034 rows=0 loops=890059)
                                                   Index Cond: (id = mc.company_id)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=3563157 read=3842
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.225..0.225 rows=1 loops=424729)
                                             Index Cond: (id = mc.movie_id)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=1660987 read=39003
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=16) (actual time=2.518..2.807 rows=1 loops=391371)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 48
                                       Buffers: shared hit=19800619 read=250454
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.424..0.424 rows=0 loops=132216)
                           Index Cond: (id = ci.person_id)
                           Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=521384 read=8425
               ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=1.433..1.499 rows=1 loops=2830)
                     Index Cond: (person_id = ci.person_id)
                     Buffers: shared hit=10411 read=300
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=4) (actual time=0.798..0.798 rows=1 loops=3744)
               Index Cond: (id = ci.person_role_id)
               Buffers: shared hit=13914 read=416
 Planning Time: 4565.185 ms
 Execution Time: 1311432.461 ms
