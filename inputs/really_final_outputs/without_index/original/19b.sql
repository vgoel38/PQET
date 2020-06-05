                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=30248.40..30248.40 rows=1 width=64) (actual time=359695.222..359695.222 rows=1 loops=1)
   Buffers: shared hit=21682514 read=573905
   ->  Nested Loop  (cost=0.00..30248.40 rows=1 width=32) (actual time=209994.041..359695.155 rows=15 loops=1)
         Join Filter: (ci.role_id = rt.id)
         Buffers: shared hit=21682514 read=573905
         ->  Nested Loop  (cost=0.00..30248.36 rows=1 width=36) (actual time=209994.030..359695.056 rows=15 loops=1)
               Join Filter: (ci.person_id = n.id)
               Rows Removed by Join Filter: 1448685
               Buffers: shared hit=21682499 read=573905
               ->  Nested Loop  (cost=0.00..27568.08 rows=1 width=29) (actual time=25315.338..164851.911 rows=275 loops=1)
                     Join Filter: (mc.company_id = cn.id)
                     Rows Removed by Join Filter: 4373166
                     Buffers: shared hit=6845335 read=518294
                     ->  Nested Loop  (cost=0.00..27427.22 rows=1 width=33) (actual time=25284.616..162767.660 rows=275 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Rows Removed by Join Filter: 31961284
                           Buffers: shared hit=6694286 read=517581
                           ->  Nested Loop  (cost=0.00..26035.60 rows=1 width=41) (actual time=24763.434..80828.036 rows=161 loops=1)
                                 Join Filter: (ci.person_role_id = chn.id)
                                 Rows Removed by Join Filter: 145243222
                                 Buffers: shared hit=3688043 read=498795
                                 ->  Nested Loop  (cost=0.00..24214.29 rows=1 width=45) (actual time=24621.928..54994.297 rows=170 loops=1)
                                       Join Filter: (ci.person_id = an.person_id)
                                       Rows Removed by Join Filter: 62192497
                                       Buffers: shared hit=2044811 read=462350
                                       ->  Nested Loop  (cost=0.00..23662.24 rows=1 width=41) (actual time=24579.272..43274.826 rows=69 loops=1)
                                             Join Filter: (t.id = ci.movie_id)
                                             Rows Removed by Join Filter: 4282899
                                             Buffers: shared hit=1269949 read=450957
                                             ->  Nested Loop  (cost=0.00..10312.79 rows=1 width=25) (actual time=3333.874..10866.114 rows=6 loops=1)
                                                   Join Filter: (mi.movie_id = t.id)
                                                   Rows Removed by Join Filter: 486324
                                                   Buffers: shared hit=6674 read=198308
                                                   ->  Nested Loop  (cost=0.00..8417.51 rows=600 width=4) (actual time=1533.297..9037.899 rows=69478 loops=1)
                                                         Join Filter: (it.id = mi.info_type_id)
                                                         Buffers: shared hit=6673 read=162311
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.031 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                                         ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=67756 width=8) (actual time=1533.271..9023.618 rows=69478 loops=1)
                                                               Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%2007%'::text) OR (info ~~ 'USA:%2008%'::text)))
                                                               Rows Removed by Filter: 14766242
                                                               Buffers: shared hit=6672 read=162311
                                                   ->  Materialize  (cost=0.00..1892.86 rows=18 width=21) (actual time=0.002..0.025 rows=7 loops=69478)
                                                         Buffers: shared hit=1 read=35997
                                                         ->  Seq Scan on title t  (cost=0.00..1892.85 rows=18 width=21) (actual time=146.946..1714.597 rows=7 loops=1)
                                                               Filter: ((production_year >= 2007) AND (production_year <= 2008) AND (title ~~ '%Kung%Fu%Panda%'::text))
                                                               Rows Removed by Filter: 2528305
                                                               Buffers: shared hit=1 read=35997
                                             ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=711633 width=16) (actual time=0.007..5335.465 rows=713828 loops=6)
                                                   Filter: (note = '(voice)'::text)
                                                   Rows Removed by Filter: 35530516
                                                   Buffers: shared hit=1263275 read=252649
                                       ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.002..69.644 rows=901343 loops=69)
                                             Buffers: shared hit=774862 read=11393
                                 ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=0.023..65.719 rows=854373 loops=170)
                                       Buffers: shared hit=1643232 read=36445
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1377.47 rows=96436 width=8) (actual time=0.004..492.645 rows=198519 loops=161)
                                 Filter: ((note ~~ '%(200%)%'::text) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                 Rows Removed by Filter: 2410610
                                 Buffers: shared hit=3006243 read=18786
                     ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=0.047..6.308 rows=15903 loops=275)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 27601
                           Buffers: shared hit=151049 read=713
               ->  Seq Scan on name n  (cost=0.00..2679.69 rows=4063 width=19) (actual time=304.683..708.011 rows=5268 loops=275)
                     Filter: ((name ~~ '%Angel%'::text) AND ((gender)::text = 'f'::text))
                     Rows Removed by Filter: 4052422
                     Buffers: shared hit=14837164 read=55611
         ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=15)
               Filter: ((role)::text = 'actress'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=15
 Planning Time: 7179.366 ms
 Execution Time: 359695.695 ms
(76 rows)

