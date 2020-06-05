 Aggregate  (cost=19621.44..19621.44 rows=1 width=64) (actual time=1540394.210..1540394.210 rows=1 loops=1)
   Buffers: shared hit=103696379 read=589439
   ->  Nested Loop  (cost=0.10..19621.36 rows=480 width=32) (actual time=19632.149..1539600.663 rows=1760645 loops=1)
         Buffers: shared hit=103696379 read=589439
         ->  Nested Loop  (cost=0.08..19597.67 rows=1330 width=36) (actual time=12818.647..1490289.951 rows=6023690 loops=1)
               Join Filter: (t.id = mc.movie_id)
               Buffers: shared hit=79587648 read=586236
               ->  Nested Loop  (cost=0.07..19589.77 rows=408 width=44) (actual time=12785.772..1467528.282 rows=702993 loops=1)
                     Buffers: shared hit=76432988 read=576895
                     ->  Nested Loop  (cost=0.06..19562.65 rows=469 width=52) (actual time=3887.196..1425108.210 rows=341836 loops=1)
                           Buffers: shared hit=75133772 read=571778
                           ->  Nested Loop  (cost=0.04..19386.47 rows=968 width=56) (actual time=3861.572..1292962.769 rows=371543 loops=1)
                                 Buffers: shared hit=73788218 read=549029
                                 ->  Nested Loop  (cost=0.03..18281.03 rows=4192 width=37) (actual time=3840.057..1208430.200 rows=371852 loops=1)
                                       Join Filter: (ci.role_id = rt.id)
                                       Rows Removed by Join Filter: 799115
                                       Buffers: shared hit=72312315 read=535613
                                       ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=8.222..8.224 rows=1 loops=1)
                                             Filter: ((role)::text = 'actress'::text)
                                             Rows Removed by Filter: 11
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.03..18273.61 rows=50303 width=41) (actual time=3831.827..1207982.344 rows=1170967 loops=1)
                                             Join Filter: (t.id = ci.movie_id)
                                             Buffers: shared hit=72312315 read=535612
                                             ->  Nested Loop  (cost=0.01..11232.07 rows=71736 width=25) (actual time=1603.153..64772.348 rows=1798330 loops=1)
                                                   Buffers: shared hit=12115443 read=204786
                                                   ->  Nested Loop  (cost=0.00..8281.49 rows=131290 width=4) (actual time=1552.134..10209.829 rows=3036719 loops=1)
                                                         Join Filter: (it.id = mi.info_type_id)
                                                         Rows Removed by Join Filter: 11799001
                                                         Buffers: shared read=161893
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=20.847..20.863 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared read=1
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=30.507..6094.132 rows=14835720 loops=1)
                                                               Buffers: shared read=161892
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=21) (actual time=0.017..0.017 rows=1 loops=3036719)
                                                         Index Cond: (id = mi.movie_id)
                                                         Filter: (production_year > 2000)
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=12115443 read=42893
                                             ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.10 rows=1 width=16) (actual time=0.579..0.634 rows=1 loops=1798330)
                                                   Index Cond: (movie_id = mi.movie_id)
                                                   Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 30
                                                   Buffers: shared hit=60196872 read=330826
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.226..0.226 rows=1 loops=371852)
                                       Index Cond: (id = ci.person_id)
                                       Filter: ((gender)::text = 'f'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=1475903 read=13416
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=4) (actual time=0.354..0.354 rows=1 loops=371543)
                                 Index Cond: (id = ci.person_role_id)
                                 Buffers: shared hit=1345554 read=22749
                     ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.06 rows=2 width=4) (actual time=0.107..0.122 rows=2 loops=341836)
                           Index Cond: (person_id = n.id)
                           Buffers: shared hit=1299216 read=5117
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.021..0.028 rows=9 loops=702993)
                     Index Cond: (movie_id = mi.movie_id)
                     Buffers: shared hit=3154660 read=9341
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.008..0.008 rows=0 loops=6023690)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=24108731 read=3203
 Planning Time: 4290.725 ms
 Execution Time: 1540493.806 ms
