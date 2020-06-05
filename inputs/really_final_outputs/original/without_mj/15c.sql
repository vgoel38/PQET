                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=9578.03..9578.03 rows=1 width=64) (actual time=32912.002..32912.002 rows=1 loops=1)
   Buffers: shared hit=20423 read=166727
   ->  Nested Loop  (cost=0.08..9578.03 rows=10 width=59) (actual time=1814.308..32908.301 rows=2271 loops=1)
         Buffers: shared hit=20423 read=166727
         ->  Nested Loop  (cost=0.07..9577.89 rows=10 width=63) (actual time=1777.779..31147.465 rows=2271 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=11786 read=166278
               ->  Nested Loop  (cost=0.05..9577.83 rows=1 width=75) (actual time=1741.595..29428.550 rows=284 loops=1)
                     Join Filter: (mc.company_type_id = ct.id)
                     Rows Removed by Join Filter: 119
                     Buffers: shared hit=10861 read=166109
                     ->  Nested Loop  (cost=0.05..9577.80 rows=1 width=79) (actual time=1715.974..29399.497 rows=284 loops=1)
                           Buffers: shared hit=10578 read=166108
                           ->  Nested Loop  (cost=0.04..9577.75 rows=3 width=83) (actual time=1661.117..25509.544 rows=400 loops=1)
                                 Buffers: shared hit=9246 read=165831
                                 ->  Nested Loop  (cost=0.03..9577.69 rows=1 width=71) (actual time=1631.686..23181.694 rows=120 loops=1)
                                       Buffers: shared hit=8910 read=165589
                                       ->  Nested Loop  (cost=0.01..9577.63 rows=2 width=67) (actual time=1576.527..21988.179 rows=1782 loops=1)
                                             Buffers: shared hit=4170 read=164860
                                             ->  Nested Loop  (cost=0.00..9559.46 rows=3 width=46) (actual time=1523.223..10488.384 rows=1783 loops=1)
                                                   Join Filter: (it.id = mi.info_type_id)
                                                   Buffers: shared read=161893
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.805..2.820 rows=1 loops=1)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=328 width=50) (actual time=1520.408..10483.264 rows=1783 loops=1)
                                                         Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                         Rows Removed by Filter: 14833937
                                                         Buffers: shared read=161892
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..6.06 rows=1 width=21) (actual time=6.446..6.446 rows=1 loops=1783)
                                                   Index Cond: (id = mi.movie_id)
                                                   Filter: (production_year > 1990)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=4170 read=2967
                                       ->  Index Scan using movie_id_aka_title on aka_title at  (cost=0.01..0.03 rows=2 width=4) (actual time=0.504..0.665 rows=0 loops=1782)
                                             Index Cond: (movie_id = t.id)
                                             Buffers: shared hit=4740 read=729
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.06 rows=2 width=12) (actual time=14.572..19.386 rows=3 loops=120)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=336 read=242
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=9.720..9.720 rows=1 loops=400)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=1332 read=277
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.094..0.094 rows=1 loops=284)
                           Buffers: shared hit=283 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=6.031..6.041 rows=8 loops=284)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=925 read=169
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.773..0.773 rows=1 loops=2271)
               Index Cond: (id = mk.keyword_id)
               Buffers: shared hit=8637 read=449
 Planning Time: 7755.305 ms
 Execution Time: 32930.060 ms
(56 rows)

