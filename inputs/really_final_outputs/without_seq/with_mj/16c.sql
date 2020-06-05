                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1060597.66..1060597.66 rows=1 width=64) (actual time=144917.417..144917.417 rows=1 loops=1)
   Buffers: shared hit=10796887 read=543518
   ->  Merge Join  (cost=1032239.79..1060597.62 rows=257 width=33) (actual time=124877.651..144834.476 rows=319932 loops=1)
         Merge Cond: (t.id = ci.movie_id)
         Buffers: shared hit=10796887 read=543518
         ->  Merge Join  (cost=67525.71..90984.57 rows=352797 width=25) (actual time=15045.030..25100.785 rows=370122 loops=1)
               Merge Cond: (mc.movie_id = t.id)
               Buffers: shared hit=4170079 read=72607
               ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14886.650..15001.734 rows=1153798 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 103237kB
                     Buffers: shared hit=1681929 read=29747
                     ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.101..14335.081 rows=1153798 loops=1)
                           Merge Cond: (cn.id = mc.company_id)
                           Buffers: shared hit=1681925 read=29747
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.065..1531.986 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231720 read=3834
                           ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.030..12192.845 rows=2609129 loops=1)
                                 Buffers: shared hit=1450205 read=25913
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=946906 width=21) (actual time=30.002..9794.739 rows=946012 loops=1)
                     Filter: (episode_nr < 100)
                     Rows Removed by Filter: 1579736
                     Buffers: shared hit=2488150 read=42860
         ->  Materialize  (cost=964714.07..969607.28 rows=989 width=24) (actual time=109108.701..119489.742 rows=1478501 loops=1)
               Buffers: shared hit=6626808 read=470911
               ->  Merge Join  (cost=964714.07..969607.20 rows=989 width=24) (actual time=109108.694..119215.962 rows=1294864 loops=1)
                     Merge Cond: (mk.movie_id = ci.movie_id)
                     Buffers: shared hit=6626808 read=470911
                     ->  Sort  (cost=55525.51..55525.52 rows=34 width=4) (actual time=4124.052..4130.122 rows=41839 loops=1)
                           Sort Key: mk.movie_id
                           Sort Method: quicksort  Memory: 3498kB
                           Buffers: shared hit=21643 read=36814
                           ->  Merge Join  (cost=54823.01..55525.49 rows=34 width=4) (actual time=4098.295..4111.065 rows=41840 loops=1)
                                 Merge Cond: (k.id = mk.keyword_id)
                                 Buffers: shared hit=21643 read=36814
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=43.423..43.424 rows=1 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=43.408..43.412 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                 ->  Sort  (cost=54816.88..55168.11 rows=4523930 width=8) (actual time=4020.177..4045.132 rows=163762 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 408668kB
                                       Buffers: shared hit=21643 read=36810
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.036..2276.058 rows=4523930 loops=1)
                                             Buffers: shared hit=21643 read=36810
                     ->  Sort  (cost=909188.53..911635.07 rows=31511509 width=20) (actual time=104983.770..109633.818 rows=36417195 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 4206071kB
                           Buffers: shared hit=6605165 read=434097
                           ->  Merge Join  (cost=0.35..787304.76 rows=31511509 width=20) (actual time=22.757..83000.342 rows=36417493 loops=1)
                                 Merge Cond: (an.person_id = ci.person_id)
                                 Buffers: shared hit=6605165 read=434097
                                 ->  Merge Join  (cost=0.06..91435.96 rows=901343 width=24) (actual time=22.709..11944.364 rows=772582 loops=1)
                                       Merge Cond: (an.person_id = n.id)
                                       Buffers: shared hit=4132118 read=82420
                                       ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.023..828.260 rows=772582 loops=1)
                                             Buffers: shared hit=278770 read=13503
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=4) (actual time=0.014..9696.686 rows=4061927 loops=1)
                                             Buffers: shared hit=3853348 read=68917
                                 ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.034..53587.223 rows=56379091 loops=1)
                                       Buffers: shared hit=2473047 read=351677
 Planning Time: 7172.497 ms
 Execution Time: 145141.978 ms
(68 rows)

