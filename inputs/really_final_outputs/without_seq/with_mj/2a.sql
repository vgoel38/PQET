                                                                                                   QUERY PLAN                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=131212.86..131212.86 rows=1 width=32) (actual time=28638.564..28638.565 rows=1 loops=1)
   Buffers: shared hit=4206773 read=109420
   ->  Merge Join  (cost=107998.12..131212.86 rows=8 width=17) (actual time=19169.673..28611.989 rows=7834 loops=1)
         Merge Cond: (mc.movie_id = t.id)
         Buffers: shared hit=4206773 read=109420
         ->  Sort  (cost=107998.10..107998.10 rows=8 width=8) (actual time=18499.220..18500.894 rows=7834 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 560kB
               Buffers: shared hit=1718798 read=66561
               ->  Merge Join  (cost=107834.99..107998.09 rows=8 width=8) (actual time=18480.269..18484.530 rows=7834 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=1718794 read=66561
                     ->  Sort  (cost=107828.86..107910.41 rows=1050392 width=12) (actual time=18421.739..18434.921 rows=52227 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 197136kB
                           Buffers: shared hit=1718794 read=66557
                           ->  Merge Join  (cost=64841.33..104566.36 rows=1050392 width=12) (actual time=14493.695..17622.487 rows=2108405 loops=1)
                                 Merge Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=1718794 read=66557
                                 ->  Sort  (cost=64841.32..64849.74 rows=108530 width=4) (actual time=14493.650..14513.061 rows=148132 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 13088kB
                                       Buffers: shared hit=1681925 read=29747
                                       ->  Merge Join  (cost=0.03..64559.41 rows=108530 width=4) (actual time=8770.599..14428.970 rows=148132 loops=1)
                                             Merge Cond: (cn.id = mc.company_id)
                                             Buffers: shared hit=1681925 read=29747
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=9775 width=4) (actual time=83.092..1566.650 rows=9775 loops=1)
                                                   Filter: ((country_code)::text = '[de]'::text)
                                                   Rows Removed by Filter: 225222
                                                   Buffers: shared hit=231720 read=3834
                                             ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.037..12354.937 rows=2609123 loops=1)
                                                   Buffers: shared hit=1450205 read=25913
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.014..2078.124 rows=5468340 loops=1)
                                       Buffers: shared hit=36869 read=36810
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=30.705..30.705 rows=1 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.687..30.690 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.019..9739.700 rows=2525432 loops=1)
               Buffers: shared hit=2487975 read=42859
 Planning Time: 2398.567 ms
 Execution Time: 28686.724 ms
(45 rows)

