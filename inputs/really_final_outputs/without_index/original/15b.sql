                                                                                QUERY PLAN                                                                                
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13571.90..13571.90 rows=1 width=64) (actual time=122681.407..122681.407 rows=1 loops=1)
   Buffers: shared hit=5170229 read=251253
   ->  Nested Loop  (cost=1596.41..13571.89 rows=4 width=59) (actual time=121926.849..122681.359 rows=37 loops=1)
         Join Filter: (mk.keyword_id = k.id)
         Rows Removed by Join Filter: 4964253
         Buffers: shared hit=5170229 read=251253
         ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.078..19.786 rows=134170 loops=1)
               Buffers: shared hit=2 read=947
         ->  Materialize  (cost=1596.41..13412.41 rows=4 width=63) (actual time=0.607..0.910 rows=37 loops=134170)
               Buffers: shared hit=5170227 read=250306
               ->  Nested Loop  (cost=1596.41..13412.41 rows=4 width=63) (actual time=81459.206..121926.421 rows=37 loops=1)
                     Join Filter: (t.id = mk.movie_id)
                     Rows Removed by Join Filter: 45281
                     Buffers: shared hit=5170227 read=250306
                     ->  Nested Loop  (cost=272.27..10481.58 rows=1 width=71) (actual time=1846.429..43884.279 rows=91 loops=1)
                           Join Filter: (at.movie_id = t.id)
                           Rows Removed by Join Filter: 61418603
                           Buffers: shared hit=2969081 read=204077
                           ->  Hash Join  (cost=272.27..8679.89 rows=1 width=50) (actual time=1821.676..8175.466 rows=116 loops=1)
                                 Hash Cond: (mi.movie_id = at.movie_id)
                                 Buffers: shared hit=8 read=168080
                                 ->  Nested Loop  (cost=0.00..8407.60 rows=2 width=46) (actual time=1509.734..7871.298 rows=1771 loops=1)
                                       Join Filter: (it1.id = mi.info_type_id)
                                       Buffers: shared hit=3 read=161890
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.014..0.028 rows=1 loops=1)
                                             Filter: ((info)::text = 'release dates'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=251 width=50) (actual time=1509.713..7870.688 rows=1771 loops=1)
                                             Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                             Rows Removed by Filter: 14833949
                                             Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=219.22..219.22 rows=361472 width=4) (actual time=301.107..301.108 rows=361472 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                       Buffers: shared hit=2 read=6190
                                       ->  Seq Scan on aka_title at  (cost=0.00..219.22 rows=361472 width=4) (actual time=3.597..180.598 rows=361472 loops=1)
                                             Buffers: shared hit=2 read=6190
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=716259 width=21) (actual time=0.102..264.124 rows=529472 loops=116)
                                 Filter: ((production_year >= 2005) AND (production_year <= 2010))
                                 Rows Removed by Filter: 1277571
                                 Buffers: shared hit=2969073 read=35997
                     ->  Hash Join  (cost=1324.13..2930.83 rows=10 width=12) (actual time=12.804..857.548 rows=498 loops=91)
                           Hash Cond: (mk.movie_id = mc.movie_id)
                           Buffers: shared hit=2201146 read=46229
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.003..303.691 rows=4523930 loops=91)
                                 Buffers: shared hit=2200863 read=24451
                           ->  Hash  (cost=1324.13..1324.13 rows=1 width=4) (actual time=1046.968..1046.968 rows=278 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 18kB
                                 Buffers: shared hit=283 read=21778
                                 ->  Nested Loop  (cost=0.00..1324.13 rows=1 width=4) (actual time=46.726..1046.737 rows=278 loops=1)
                                       Join Filter: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=283 read=21778
                                       ->  Nested Loop  (cost=0.00..1324.10 rows=1 width=8) (actual time=46.712..1046.007 rows=278 loops=1)
                                             Join Filter: (cn.id = mc.company_id)
                                             Rows Removed by Join Filter: 61386
                                             Buffers: shared hit=5 read=21778
                                             ->  Seq Scan on company_name cn  (cost=0.00..146.65 rows=1 width=4) (actual time=31.351..148.810 rows=1 loops=1)
                                                   Filter: (((country_code)::text = '[us]'::text) AND (name = 'YouTube'::text))
                                                   Rows Removed by Filter: 234996
                                                   Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=17389 width=12) (actual time=0.010..890.104 rows=61664 loops=1)
                                                   Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                   Rows Removed by Filter: 2547465
                                                   Buffers: shared hit=3 read=18786
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=278)
                                             Buffers: shared hit=278
 Planning Time: 9186.026 ms
 Execution Time: 122682.322 ms
(68 rows)

