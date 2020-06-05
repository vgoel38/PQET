                                                                                                                                         QUERY PLAN                                                                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=24325.67..24325.67 rows=1 width=96) (actual time=11512.180..11512.180 rows=1 loops=1)
   Buffers: shared hit=552608 read=17398
   ->  Merge Join  (cost=22589.19..24325.67 rows=1 width=48) (actual time=11398.600..11488.667 rows=743 loops=1)
         Merge Cond: (ml.movie_id = t.id)
         Buffers: shared hit=552608 read=17398
         ->  Sort  (cost=22589.17..22589.17 rows=1 width=51) (actual time=10641.980..10642.064 rows=743 loops=1)
               Sort Key: mk.movie_id
               Sort Method: quicksort  Memory: 129kB
               Buffers: shared hit=416644 read=14088
               ->  Merge Join  (cost=17951.67..22589.17 rows=1 width=51) (actual time=10524.824..10636.930 rows=743 loops=1)
                     Merge Cond: (cn.id = mc.company_id)
                     Buffers: shared hit=416640 read=14088
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=40.495..449.586 rows=14128 loops=1)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                           Rows Removed by Filter: 59511
                           Buffers: shared hit=72292 read=1541
                     ->  Sort  (cost=17951.66..17951.66 rows=1 width=36) (actual time=10185.211..10185.361 rows=1808 loops=1)
                           Sort Key: mc.company_id
                           Sort Method: quicksort  Memory: 190kB
                           Buffers: shared hit=344348 read=12547
                           ->  Merge Join  (cost=17951.66..17951.66 rows=1 width=36) (actual time=10181.236..10183.130 rows=1808 loops=1)
                                 Merge Cond: (ct.id = mc.company_type_id)
                                 Buffers: shared hit=344348 read=12547
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.072..0.073 rows=1 loops=1)
                                       Sort Key: ct.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.045..0.047 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=17945.53..17945.53 rows=2 width=40) (actual time=10181.084..10181.395 rows=1913 loops=1)
                                       Sort Key: mc.company_type_id
                                       Sort Method: quicksort  Memory: 198kB
                                       Buffers: shared hit=344347 read=12546
                                       ->  Merge Join  (cost=15340.87..17945.53 rows=2 width=40) (actual time=9927.916..10179.567 rows=1913 loops=1)
                                             Merge Cond: (mc.movie_id = ml.movie_id)
                                             Buffers: shared hit=344347 read=12546
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1271989 width=12) (actual time=5.748..339.564 rows=40785 loops=1)
                                                   Filter: (note IS NULL)
                                                   Rows Removed by Filter: 41338
                                                   Buffers: shared hit=37499 read=810
                                             ->  Sort  (cost=15340.85..15340.85 rows=1 width=28) (actual time=9826.926..9827.138 rows=1919 loops=1)
                                                   Sort Key: mk.movie_id
                                                   Sort Method: quicksort  Memory: 44kB
                                                   Buffers: shared hit=306848 read=11736
                                                   ->  Merge Join  (cost=15331.67..15340.85 rows=1 width=28) (actual time=9826.392..9826.671 rows=251 loops=1)
                                                         Merge Cond: (cc.status_id = cct.id)
                                                         Buffers: shared hit=306848 read=11736
                                                         ->  Sort  (cost=15331.67..15331.67 rows=1 width=32) (actual time=9826.369..9826.411 rows=251 loops=1)
                                                               Sort Key: cc.status_id
                                                               Sort Method: quicksort  Memory: 44kB
                                                               Buffers: shared hit=306846 read=11736
                                                               ->  Merge Join  (cost=15331.67..15331.67 rows=1 width=32) (actual time=9825.807..9826.102 rows=251 loops=1)
                                                                     Merge Cond: (cc.subject_id = cct.id)
                                                                     Buffers: shared hit=306846 read=11736
                                                                     ->  Sort  (cost=15325.54..15325.54 rows=1 width=36) (actual time=9825.762..9825.806 rows=252 loops=1)
                                                                           Sort Key: cc.subject_id
                                                                           Sort Method: quicksort  Memory: 52kB
                                                                           Buffers: shared hit=306844 read=11736
                                                                           ->  Merge Join  (cost=15323.62..15325.54 rows=1 width=36) (actual time=9824.947..9825.399 rows=346 loops=1)
                                                                                 Merge Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=306844 read=11736
                                                                                 ->  Sort  (cost=15317.48..15318.44 rows=12380 width=40) (actual time=9780.195..9780.649 rows=1850 loops=1)
                                                                                       Sort Key: mk.keyword_id
                                                                                       Sort Method: quicksort  Memory: 821kB
                                                                                       Buffers: shared hit=306844 read=11732
                                                                                       ->  Merge Join  (cost=15246.70..15291.35 rows=12380 width=40) (actual time=9764.735..9772.130 rows=8040 loops=1)
                                                                                             Merge Cond: (lt.id = ml.link_type_id)
                                                                                             Buffers: shared hit=306844 read=11732
                                                                                             ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.023..0.047 rows=2 loops=1)
                                                                                                   Filter: ((link)::text ~~ '%follow%'::text)
                                                                                                   Rows Removed by Filter: 16
                                                                                                   Buffers: shared hit=2
                                                                                             ->  Sort  (cost=15246.70..15264.00 rows=222849 width=32) (actual time=9764.701..9765.948 rows=8041 loops=1)
                                                                                                   Sort Key: ml.link_type_id
                                                                                                   Sort Method: quicksort  Memory: 12436kB
                                                                                                   Buffers: shared hit=306842 read=11732
                                                                                                   ->  Merge Join  (cost=4.69..14631.94 rows=222849 width=32) (actual time=234.781..9698.745 rows=119859 loops=1)
                                                                                                         Merge Cond: (ml.movie_id = mk.movie_id)
                                                                                                         Buffers: shared hit=306842 read=11732
                                                                                                         ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.030..57.771 rows=29997 loops=1)
                                                                                                               Buffers: shared hit=81 read=241
                                                                                                         ->  Materialize  (cost=4.68..664686.54 rows=3342448 width=24) (actual time=229.876..9573.015 rows=132610 loops=1)
                                                                                                               Buffers: shared hit=306761 read=11491
                                                                                                               ->  Merge Join  (cost=4.68..664427.03 rows=3342448 width=24) (actual time=229.868..9551.682 rows=18162 loops=1)
                                                                                                                     Merge Cond: (mi.movie_id = mk.movie_id)
                                                                                                                     Buffers: shared hit=306761 read=11491
                                                                                                                     ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..620679.99 rows=936891 width=4) (actual time=99.264..9249.728 rows=33989 loops=1)
                                                                                                                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                                                                                                                           Rows Removed by Filter: 481274
                                                                                                                           Buffers: shared hit=302125 read=10592
                                                                                                                     ->  Materialize  (cost=1.36..43067.59 rows=1369129 width=20) (actual time=20.710..278.337 rows=19202 loops=1)
                                                                                                                           Buffers: shared hit=4636 read=899
                                                                                                                           ->  Merge Join  (cost=1.36..42961.29 rows=1369129 width=20) (actual time=20.698..266.438 rows=18534 loops=1)
                                                                                                                                 Merge Cond: (cc.movie_id = mk.movie_id)
                                                                                                                                 Buffers: shared hit=4636 read=899
                                                                                                                                 ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.032..156.232 rows=5993 loops=1)
                                                                                                                                       Buffers: shared hit=4240 read=100
                                                                                                                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.028..75.331 rows=104281 loops=1)
                                                                                                                                       Buffers: shared hit=396 read=799
                                                                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=43.697..43.698 rows=1 loops=1)
                                                                                       Sort Key: k.id
                                                                                       Sort Method: quicksort  Memory: 25kB
                                                                                       Buffers: shared read=4
                                                                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=43.675..43.679 rows=1 loops=1)
                                                                                             Index Cond: (keyword = 'sequel'::text)
                                                                                             Buffers: shared read=4
                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.038..0.038 rows=1 loops=1)
                                                                           Sort Key: cct.id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared hit=2
                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.025..0.027 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'cast'::text)
                                                                                 Buffers: shared hit=2
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.016..0.018 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ 'complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=2
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1900368 width=21) (actual time=0.019..834.944 rows=107953 loops=1)
               Filter: ((production_year >= 1950) AND (production_year <= 2010))
               Rows Removed by Filter: 30982
               Buffers: shared hit=135964 read=3310
 Planning Time: 10802.184 ms
 Execution Time: 11523.328 ms
(124 rows)

