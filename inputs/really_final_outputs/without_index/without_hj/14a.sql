 Aggregate  (cost=16179.46..16179.46 rows=1 width=64) (actual time=6708014.173..6708014.174 rows=1 loops=1)
   Buffers: shared hit=213850247 read=231736
   ->  Nested Loop  (cost=14364.19..16179.46 rows=1 width=23) (actual time=15720.643..6708011.726 rows=761 loops=1)
         Join Filter: (mk.keyword_id = k.id)
         Rows Removed by Join Filter: 225651
         Buffers: shared hit=213850247 read=231736
         ->  Nested Loop  (cost=14364.19..16119.57 rows=13 width=27) (actual time=14089.870..6707871.406 rows=75669 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Rows Removed by Join Filter: 39566216111
               Buffers: shared hit=213850245 read=230789
               ->  Merge Join  (cost=14364.19..14375.69 rows=1 width=35) (actual time=11265.280..11537.688 rows=8746 loops=1)
                     Merge Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=12 read=206338
                     ->  Merge Join  (cost=12669.38..12672.20 rows=48 width=14) (actual time=9365.906..9636.581 rows=213239 loops=1)
                           Merge Cond: (mi.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=10 read=170341
                           ->  Sort  (cost=11979.42..11979.90 rows=6273 width=4) (actual time=8681.166..8725.069 rows=614239 loops=1)
                                 Sort Key: mi.movie_id
                                 Sort Method: quicksort  Memory: 53370kB
                                 Buffers: shared hit=7 read=161890
                                 ->  Nested Loop  (cost=0.00..11967.13 rows=6273 width=4) (actual time=7153.362..8476.422 rows=614251 loops=1)
                                       Join Filter: (it1.id = mi.info_type_id)
                                       Rows Removed by Join Filter: 92423
                                       Buffers: shared hit=3 read=161890
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.026..0.040 rows=1 loops=1)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=708808 width=8) (actual time=29.614..8369.303 rows=706674 loops=1)
                                             Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                                             Rows Removed by Filter: 14129046
                                             Buffers: shared hit=2 read=161890
                           ->  Sort  (cost=689.96..690.88 rows=11890 width=10) (actual time=684.729..719.819 rows=457677 loops=1)
                                 Sort Key: mi_idx.movie_id
                                 Sort Method: quicksort  Memory: 33581kB
                                 Buffers: shared hit=3 read=8451
                                 ->  Nested Loop  (cost=0.00..664.97 rows=11890 width=10) (actual time=0.038..516.900 rows=454230 loops=1)
                                       Join Filter: (it2.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 889325
                                       Buffers: shared hit=3 read=8451
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.026..0.029 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=0.008..359.165 rows=1343555 loops=1)
                                             Filter: (info < '8.5'::text)
                                             Rows Removed by Filter: 36480
                                             Buffers: shared hit=2 read=8451
                     ->  Sort  (cost=1694.81..1699.15 rows=55952 width=21) (actual time=1825.625..1850.465 rows=99172 loops=1)
                           Sort Key: t.id
                           Sort Method: quicksort  Memory: 9799kB
                           Buffers: shared hit=2 read=35997
                           ->  Nested Loop  (cost=0.00..1557.78 rows=55952 width=21) (actual time=160.563..1760.701 rows=98992 loops=1)
                                 Join Filter: (kt.id = t.kind_id)
                                 Rows Removed by Join Filter: 292674
                                 Buffers: shared hit=2 read=35997
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.016..0.019 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=25) (actual time=99.219..1670.837 rows=391666 loops=1)
                                       Filter: (production_year > 2010)
                                       Rows Removed by Filter: 2136646
                                       Buffers: shared hit=1 read=35997
               ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.003..300.511 rows=4523930 loops=8746)
                     Buffers: shared hit=213850233 read=24451
         ->  Materialize  (cost=0.00..59.88 rows=4 width=4) (actual time=0.000..0.001 rows=3 loops=75669)
               Buffers: shared hit=2 read=947
               ->  Seq Scan on keyword k  (cost=0.00..59.88 rows=4 width=4) (actual time=27.559..88.529 rows=3 loops=1)
                     Filter: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                     Rows Removed by Filter: 134167
                     Buffers: shared hit=2 read=947
 Planning Time: 4943.636 ms
 Execution Time: 6708048.171 ms
