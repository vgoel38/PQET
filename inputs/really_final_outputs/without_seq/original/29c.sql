                                                                                                                        QUERY PLAN                                                                                                                        
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=134.62..134.62 rows=1 width=96) (actual time=100848.610..100848.610 rows=1 loops=1)
   Buffers: shared hit=423864 read=14607
   ->  Nested Loop  (cost=0.18..134.62 rows=1 width=48) (actual time=48491.620..100840.333 rows=16308 loops=1)
         Buffers: shared hit=423864 read=14607
         ->  Nested Loop  (cost=0.18..134.62 rows=1 width=52) (actual time=48490.827..100711.070 rows=67827 loops=1)
               Join Filter: (n.id = pi.person_id)
               Buffers: shared hit=288210 read=14607
               ->  Nested Loop  (cost=0.17..134.40 rows=1 width=60) (actual time=48445.500..100540.555 rows=189 loops=1)
                     Buffers: shared hit=285733 read=14570
                     ->  Nested Loop  (cost=0.16..134.40 rows=1 width=64) (actual time=48445.481..100540.074 rows=189 loops=1)
                           Buffers: shared hit=285355 read=14570
                           ->  Nested Loop  (cost=0.16..134.40 rows=1 width=68) (actual time=16104.056..100537.725 rows=494 loops=1)
                                 Join Filter: (t.id = cc.movie_id)
                                 Buffers: shared hit=284367 read=14570
                                 ->  Nested Loop  (cost=0.15..134.38 rows=1 width=80) (actual time=14529.244..100145.916 rows=665 loops=1)
                                       Buffers: shared hit=281901 read=14547
                                       ->  Nested Loop  (cost=0.13..134.20 rows=1 width=68) (actual time=14496.523..99703.812 rows=737 loops=1)
                                             Join Filter: (n.id = an.person_id)
                                             Buffers: shared hit=279257 read=14501
                                             ->  Nested Loop  (cost=0.12..134.18 rows=1 width=64) (actual time=14455.713..99359.763 rows=391 loops=1)
                                                   Buffers: shared hit=278109 read=14475
                                                   ->  Nested Loop  (cost=0.11..133.91 rows=1 width=45) (actual time=6862.884..92510.084 rows=10733 loops=1)
                                                         Buffers: shared hit=236192 read=13432
                                                         ->  Nested Loop  (cost=0.10..133.91 rows=1 width=49) (actual time=6862.834..92439.405 rows=10733 loops=1)
                                                               Join Filter: (t.id = mi.movie_id)
                                                               Buffers: shared hit=214726 read=13432
                                                               ->  Nested Loop  (cost=0.09..133.75 rows=1 width=41) (actual time=2291.422..78932.650 rows=4588 loops=1)
                                                                     Buffers: shared hit=95268 read=11433
                                                                     ->  Nested Loop  (cost=0.07..133.74 rows=1 width=45) (actual time=2236.215..69451.753 rows=19660 loops=1)
                                                                           Join Filter: (t.id = mc.movie_id)
                                                                           Buffers: shared hit=17337 read=10638
                                                                           ->  Nested Loop  (cost=0.06..133.70 rows=1 width=37) (actual time=2200.253..65499.493 rows=1015 loops=1)
                                                                                 Buffers: shared hit=12446 read=10294
                                                                                 ->  Nested Loop  (cost=0.06..133.68 rows=5 width=41) (actual time=142.908..65443.308 rows=3429 loops=1)
                                                                                       Join Filter: (t.id = ci.movie_id)
                                                                                       Buffers: shared hit=5588 read=10294
                                                                                       ->  Nested Loop  (cost=0.04..129.99 rows=14 width=25) (actual time=102.383..10213.872 rows=249 loops=1)
                                                                                             Buffers: shared hit=905 read=1118
                                                                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=55.952..1933.258 rows=414 loops=1)
                                                                                                   Buffers: shared hit=1 read=365
                                                                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=14.422..14.426 rows=1 loops=1)
                                                                                                         Index Cond: (keyword = 'computer-animation'::text)
                                                                                                         Buffers: shared read=4
                                                                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=41.520..1917.776 rows=414 loops=1)
                                                                                                         Index Cond: (keyword_id = k.id)
                                                                                                         Buffers: shared hit=1 read=361
                                                                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=19.993..19.993 rows=1 loops=414)
                                                                                                   Index Cond: (id = mk.movie_id)
                                                                                                   Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                   Rows Removed by Filter: 0
                                                                                                   Buffers: shared hit=904 read=753
                                                                                       ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=1 width=16) (actual time=56.084..221.760 rows=14 loops=249)
                                                                                             Index Cond: (movie_id = mk.movie_id)
                                                                                             Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                                             Rows Removed by Filter: 41
                                                                                             Buffers: shared hit=4683 read=9176
                                                                                 ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.011..0.011 rows=0 loops=3429)
                                                                                       Index Cond: (id = ci.role_id)
                                                                                       Filter: ((role)::text = 'actress'::text)
                                                                                       Rows Removed by Filter: 1
                                                                                       Buffers: shared hit=6858
                                                                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=2.820..3.871 rows=19 loops=1015)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=4891 read=344
                                                                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.481..0.481 rows=0 loops=19660)
                                                                           Index Cond: (id = mc.company_id)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 1
                                                                           Buffers: shared hit=77931 read=795
                                                               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=1.273..2.940 rows=2 loops=4588)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                     Rows Removed by Filter: 241
                                                                     Buffers: shared hit=119458 read=1999
                                                         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=10733)
                                                               Index Cond: (id = mi.info_type_id)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Buffers: shared hit=21466
                                                   ->  Index Scan using name_pkey on name n  (cost=0.01..0.26 rows=1 width=19) (actual time=0.637..0.637 rows=0 loops=10733)
                                                         Index Cond: (id = ci.person_id)
                                                         Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=41917 read=1043
                                             ->  Index Only Scan using person_id_aka_name on aka_name an  (cost=0.01..0.02 rows=2 width=4) (actual time=0.876..0.877 rows=2 loops=391)
                                                   Index Cond: (person_id = ci.person_id)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=1148 read=26
                                       ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.18 rows=1 width=20) (actual time=0.598..0.598 rows=1 loops=737)
                                             Index Cond: (id = ci.person_role_id)
                                             Buffers: shared hit=2644 read=46
                                 ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.587..0.587 rows=1 loops=665)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=2466 read=23
                           ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=494)
                                 Index Cond: (id = cc.status_id)
                                 Filter: ((kind)::text = 'complete+verified'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=988
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=189)
                           Index Cond: (id = cc.subject_id)
                           Filter: ((kind)::text = 'cast'::text)
                           Buffers: shared hit=378
               ->  Index Scan using person_id_person_info on person_info pi  (cost=0.01..0.21 rows=5 width=8) (actual time=0.665..0.781 rows=359 loops=189)
                     Index Cond: (person_id = an.person_id)
                     Buffers: shared hit=2477 read=37
         ->  Index Scan using info_type_pkey on info_type it3  (cost=0.00..0.00 rows=1 width=4) (actual time=0.001..0.001 rows=0 loops=67827)
               Index Cond: (id = pi.info_type_id)
               Filter: ((info)::text = 'trivia'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=135654
 Planning Time: 20210.871 ms
 Execution Time: 100876.945 ms
(112 rows)

