                                                                                       QUERY PLAN                                                                                       
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32869.14..32869.14 rows=1 width=64) (actual time=406018.448..406018.449 rows=1 loops=1)
   Buffers: shared hit=20782833 read=576184
   ->  Nested Loop  (cost=2680.43..32869.14 rows=1 width=32) (actual time=36161.753..406017.771 rows=184 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Rows Removed by Join Filter: 160944768
         Buffers: shared hit=20782833 read=576184
         ->  Nested Loop  (cost=2680.43..31088.24 rows=1 width=27) (actual time=35868.091..295760.980 rows=311 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 4592422
               Buffers: shared hit=10930780 read=540187
               ->  Nested Loop  (cost=2680.43..30947.39 rows=1 width=31) (actual time=35846.864..293548.786 rows=321 loops=1)
                     Join Filter: (mi.movie_id = mc.movie_id)
                     Rows Removed by Join Filter: 121153449
                     Buffers: shared hit=10773768 read=537195
                     ->  Nested Loop  (cost=2680.43..29729.48 rows=1 width=23) (actual time=21170.048..174713.254 rows=205 loops=1)
                           Join Filter: (ci.person_role_id = chn.id)
                           Rows Removed by Join Filter: 386084222
                           Buffers: shared hit=6940809 read=518409
                           ->  Nested Loop  (cost=2680.43..27908.18 rows=1 width=27) (actual time=19812.309..106371.142 rows=224 loops=1)
                                 Join Filter: (n.id = an.person_id)
                                 Rows Removed by Join Filter: 198295236
                                 Buffers: shared hit=2502191 read=481964
                                 ->  Nested Loop  (cost=2680.43..27356.13 rows=1 width=35) (actual time=17671.679..69779.564 rows=220 loops=1)
                                       Join Filter: (mi.movie_id = ci.movie_id)
                                       Rows Removed by Join Filter: 327905133
                                       Buffers: shared hit=6684 read=470571
                                       ->  Nested Loop  (cost=0.00..8472.87 rows=3937 width=4) (actual time=1506.184..8848.462 rows=451039 loops=1)
                                             Join Filter: (it.id = mi.info_type_id)
                                             Rows Removed by Join Filter: 65
                                             Buffers: shared hit=6673 read=162311
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.026 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                             ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=444887 width=8) (actual time=679.559..8777.837 rows=451104 loops=1)
                                                   Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                   Rows Removed by Filter: 14384616
                                                   Buffers: shared hit=6672 read=162311
                                       ->  Materialize  (cost=2680.43..18809.93 rows=83 width=31) (actual time=0.015..0.065 rows=727 loops=451039)
                                             Buffers: shared hit=11 read=308260
                                             ->  Hash Join  (cost=2680.43..18809.92 rows=83 width=31) (actual time=6773.022..15255.399 rows=727 loops=1)
                                                   Hash Cond: (ci.role_id = rt.id)
                                                   Buffers: shared hit=11 read=308260
                                                   ->  Hash Join  (cost=2680.39..18809.80 rows=996 width=35) (actual time=6772.954..15254.875 rows=728 loops=1)
                                                         Hash Cond: (ci.person_id = n.id)
                                                         Buffers: shared hit=7 read=308260
                                                         ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=0.011..12483.924 rows=867477 loops=1)
                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 35376867
                                                               Buffers: shared hit=5 read=252649
                                                         ->  Hash  (cost=2679.69..2679.69 rows=4808 width=19) (actual time=2605.639..2605.639 rows=6768 loops=1)
                                                               Buckets: 8192  Batches: 1  Memory Usage: 420kB
                                                               Buffers: shared hit=2 read=55611
                                                               ->  Seq Scan on name n  (cost=0.00..2679.69 rows=4808 width=19) (actual time=1097.785..2600.936 rows=6768 loops=1)
                                                                     Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                                                     Rows Removed by Filter: 4160723
                                                                     Buffers: shared hit=2 read=55611
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.016 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.011 rows=1 loops=1)
                                                               Filter: ((role)::text = 'actress'::text)
                                                               Rows Removed by Filter: 11
                                                               Buffers: shared hit=1
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.002..66.636 rows=901343 loops=220)
                                       Buffers: shared hit=2495507 read=11393
                           ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=0.204..127.625 rows=1723591 loops=224)
                                 Buffers: shared hit=4438618 read=36445
                     ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=292980 width=8) (actual time=0.004..531.095 rows=590994 loops=205)
                           Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                           Rows Removed by Filter: 2018135
                           Buffers: shared hit=3832959 read=18786
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=0.021..5.732 rows=14308 loops=321)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 24940
                     Buffers: shared hit=157012 read=2992
         ->  Seq Scan on title t  (cost=0.00..1696.56 rows=574556 width=21) (actual time=0.035..311.575 rows=517508 loops=311)
               Filter: ((production_year >= 2005) AND (production_year <= 2009))
               Rows Removed by Filter: 1705311
               Buffers: shared hit=9852053 read=35997
 Planning Time: 7397.744 ms
 Execution Time: 406018.970 ms
(82 rows)

