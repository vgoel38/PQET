                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=579.72..579.72 rows=1 width=128) (actual time=14925.686..14925.686 rows=1 loops=1)
   Buffers: shared hit=84427 read=23850
   ->  Nested Loop  (cost=52.30..579.72 rows=1 width=80) (actual time=10127.272..14925.568 rows=28 loops=1)
         Buffers: shared hit=84427 read=23850
         ->  Nested Loop  (cost=52.29..579.69 rows=2 width=84) (actual time=10078.101..14672.715 rows=1060 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=80435 read=23595
               ->  Nested Loop  (cost=52.27..579.59 rows=1 width=100) (actual time=10028.284..14570.291 rows=7 loops=1)
                     Buffers: shared hit=80408 read=23587
                     ->  Nested Loop  (cost=52.26..579.41 rows=1 width=89) (actual time=10012.625..14501.233 rows=7 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=80392 read=23575
                           ->  Nested Loop  (cost=52.24..578.60 rows=1 width=81) (actual time=9663.248..13274.937 rows=3 loops=1)
                                 Buffers: shared hit=80255 read=23380
                                 ->  Nested Loop  (cost=52.24..578.59 rows=1 width=85) (actual time=9663.206..13274.840 rows=3 loops=1)
                                       Join Filter: (t.id = mi.movie_id)
                                       Buffers: shared hit=80249 read=23380
                                       ->  Nested Loop  (cost=52.22..578.13 rows=1 width=35) (actual time=9479.207..12825.254 rows=2 loops=1)
                                             Buffers: shared hit=80247 read=23298
                                             ->  Hash Join  (cost=52.21..529.27 rows=448 width=14) (actual time=95.628..1142.758 rows=23558 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=10 read=9180
                                                   ->  Hash Join  (cost=52.18..529.05 rows=1794 width=18) (actual time=95.273..1117.331 rows=95399 loops=1)
                                                         Hash Cond: (cc.subject_id = cct1.id)
                                                         Buffers: shared hit=6 read=9180
                                                         ->  Hash Join  (cost=52.15..528.63 rows=3587 width=22) (actual time=95.251..1072.325 rows=95399 loops=1)
                                                               Hash Cond: (mi_idx.movie_id = cc.movie_id)
                                                               Buffers: shared hit=5 read=9180
                                                               ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.031..750.714 rows=459925 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.003..309.876 rows=1380035 loops=1)
                                                                           Buffers: shared hit=2 read=8451
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.014..0.017 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'votes'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=94.516..94.516 rows=135086 loops=1)
                                                                     Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                     Buffers: shared hit=2 read=729
                                                                     ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=0.078..55.135 rows=135086 loops=1)
                                                                           Buffers: shared hit=2 read=729
                                                         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.006..0.006 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.003..0.004 rows=2 loops=1)
                                                                     Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                                     Rows Removed by Filter: 2
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.031..0.032 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.010 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=21) (actual time=0.495..0.495 rows=0 loops=23558)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=80237 read=14118
                                       ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.47 rows=1 width=50) (actual time=224.775..224.781 rows=2 loops=2)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                             Rows Removed by Filter: 452
                                             Buffers: shared hit=2 read=82
                                 ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.022..0.022 rows=1 loops=3)
                                       Index Cond: (id = mi.info_type_id)
                                       Filter: ((info)::text = 'genres'::text)
                                       Buffers: shared hit=6
                           ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.81 rows=1 width=8) (actual time=188.928..408.753 rows=2 loops=3)
                                 Index Cond: (movie_id = mi_idx.movie_id)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 107
                                 Buffers: shared hit=137 read=195
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.19 rows=1 width=19) (actual time=9.858..9.858 rows=1 loops=7)
                           Index Cond: (id = ci.person_id)
                           Filter: ((gender)::text = 'm'::text)
                           Buffers: shared hit=16 read=12
               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=14.404..14.507 rows=151 loops=7)
                     Index Cond: (movie_id = mi_idx.movie_id)
                     Buffers: shared hit=27 read=8
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.238..0.238 rows=0 loops=1060)
               Index Cond: (id = mk.keyword_id)
               Filter: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
               Rows Removed by Filter: 1
               Buffers: shared hit=3992 read=255
 Planning Time: 15519.377 ms
 Execution Time: 14926.596 ms
(92 rows)

