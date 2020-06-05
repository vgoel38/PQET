                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12924.01..12924.01 rows=1 width=64) (actual time=25348.089..25348.090 rows=1 loops=1)
   Buffers: shared hit=645497 read=245051
   ->  Nested Loop  (cost=59.94..12924.01 rows=1 width=27) (actual time=13559.238..25348.023 rows=16 loops=1)
         Join Filter: (mc.company_type_id = ct.id)
         Rows Removed by Join Filter: 16
         Buffers: shared hit=645497 read=245051
         ->  Nested Loop  (cost=59.94..12923.97 rows=1 width=31) (actual time=13559.228..25347.930 rows=16 loops=1)
               Join Filter: (mc.company_id = cn.id)
               Rows Removed by Join Filter: 999664
               Buffers: shared hit=645481 read=245051
               ->  Nested Loop  (cost=59.94..12783.12 rows=1 width=35) (actual time=13448.673..24796.804 rows=16 loops=1)
                     Join Filter: (t.id = mc.movie_id)
                     Rows Removed by Join Filter: 41746048
                     Buffers: shared hit=611685 read=242799
                     ->  Nested Loop  (cost=59.94..11630.39 rows=1 width=43) (actual time=12596.246..17064.169 rows=16 loops=1)
                           Join Filter: (cc.movie_id = t.id)
                           Rows Removed by Join Filter: 221312
                           Buffers: shared hit=329847 read=224013
                           ->  Nested Loop  (cost=59.91..11578.60 rows=1 width=39) (actual time=11380.655..16735.240 rows=9 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Rows Removed by Join Filter: 2740141
                                 Buffers: shared hit=323996 read=223284
                                 ->  Nested Loop  (cost=59.88..9916.19 rows=1 width=8) (actual time=1701.968..9992.467 rows=10 loops=1)
                                       Join Filter: (mi.movie_id = mk.movie_id)
                                       Rows Removed by Join Filter: 2006533
                                       Buffers: shared hit=11 read=187288
                                       ->  Hash Join  (cost=59.88..1508.52 rows=135 width=4) (actual time=88.387..1187.460 rows=1133 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=8 read=25398
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..507.504 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=59.88..59.88 rows=4 width=4) (actual time=88.177..88.177 rows=4 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2 read=947
                                                   ->  Seq Scan on keyword k  (cost=0.00..59.88 rows=4 width=4) (actual time=26.045..88.155 rows=4 loops=1)
                                                         Filter: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                                         Rows Removed by Filter: 134166
                                                         Buffers: shared hit=2 read=947
                                       ->  Materialize  (cost=0.00..8407.60 rows=2 width=4) (actual time=1.424..7.596 rows=1771 loops=1133)
                                             Buffers: shared hit=3 read=161890
                                             ->  Nested Loop  (cost=0.00..8407.60 rows=2 width=4) (actual time=1613.559..8513.134 rows=1771 loops=1)
                                                   Join Filter: (it1.id = mi.info_type_id)
                                                   Buffers: shared hit=3 read=161890
                                                   ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.047 rows=1 loops=1)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=251 width=8) (actual time=1613.542..8512.336 rows=1771 loops=1)
                                                         Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                                         Rows Removed by Filter: 14833949
                                                         Buffers: shared hit=2 read=161890
                                 ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=31) (actual time=22.824..649.963 rows=274015 loops=10)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=323985 read=35996
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=0.671..460.269 rows=1381453 loops=10)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 1146859
                                             Buffers: shared hit=323984 read=35996
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=14) (actual time=0.034..0.034 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=0.019..0.024 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'movie'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared hit=1
                           ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=1.914..34.292 rows=24592 loops=9)
                                 Hash Cond: (cc.status_id = cct1.id)
                                 Buffers: shared hit=5851 read=729
                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=1.904..12.239 rows=135086 loops=9)
                                       Buffers: shared hit=5850 read=729
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.036..0.037 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.019..0.021 rows=1 loops=1)
                                             Filter: ((kind)::text = 'complete+verified'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.002..199.359 rows=2609129 loops=16)
                           Buffers: shared hit=281838 read=18786
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=0.564..29.251 rows=62480 loops=16)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 114382
                     Buffers: shared hit=33796 read=2252
         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=2 loops=16)
               Buffers: shared hit=16
 Planning Time: 9035.783 ms
 Execution Time: 25348.655 ms
(87 rows)

