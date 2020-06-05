                                                                                                        QUERY PLAN                                                                                                         
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1148911.53..1148911.53 rows=1 width=64) (actual time=82065.242..82065.243 rows=1 loops=1)
   Buffers: shared hit=10481322 read=602187
   ->  Merge Join  (cost=1064780.70..1148911.46 rows=480 width=32) (actual time=78812.518..81634.748 rows=1760645 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=10481322 read=602187
         ->  Merge Join  (cost=1064780.64..1101263.21 rows=2080 width=25) (actual time=75258.602..78092.878 rows=1761514 loops=1)
               Merge Cond: (ci.person_id = an.person_id)
               Buffers: shared hit=7895411 read=556284
               ->  Sort  (cost=1064780.62..1064780.81 rows=2392 width=21) (actual time=75243.141..75307.169 rows=787890 loops=1)
                     Sort Key: ci.person_id
                     Sort Method: quicksort  Memory: 79895kB
                     Buffers: shared hit=7270472 read=543310
                     ->  Merge Join  (cost=1028537.20..1064776.45 rows=2392 width=21) (actual time=63754.105..75018.886 rows=787890 loops=1)
                           Merge Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=7270468 read=543310
                           ->  Sort  (cost=1028537.19..1028537.57 rows=4929 width=25) (actual time=63754.073..63816.660 rows=787891 loops=1)
                                 Sort Key: ci.person_role_id
                                 Sort Method: quicksort  Memory: 91876kB
                                 Buffers: shared hit=4170647 read=495699
                                 ->  Merge Join  (cost=1005059.04..1028527.80 rows=4929 width=25) (actual time=52315.437..63499.571 rows=881478 loops=1)
                                       Merge Cond: (t.id = mc.movie_id)
                                       Buffers: shared hit=4170647 read=495699
                                       ->  Merge Join  (cost=937533.34..960877.67 rows=4192 width=37) (actual time=37437.552..48124.716 rows=371850 loops=1)
                                             Merge Cond: (t.id = mi.movie_id)
                                             Buffers: shared hit=2488722 read=465952
                                             ->  Merge Join  (cost=321881.03..345218.95 rows=39415 width=33) (actual time=22258.482..32318.889 rows=168407 loops=1)
                                                   Merge Cond: (ci.movie_id = t.id)
                                                   Buffers: shared hit=2488154 read=318727
                                                   ->  Sort  (cost=321881.00..321886.60 rows=72136 width=12) (actual time=22056.733..22089.921 rows=276166 loops=1)
                                                         Sort Key: ci.movie_id
                                                         Sort Method: quicksort  Memory: 25234kB
                                                         Buffers: shared hit=5 read=275864
                                                         ->  Merge Join  (cost=0.02..321700.23 rows=72136 width=12) (actual time=9759.785..21898.802 rows=276166 loops=1)
                                                               Merge Cond: (ci.role_id = rt.id)
                                                               Buffers: shared hit=5 read=275864
                                                               ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=20.306..21653.573 rows=867127 loops=1)
                                                                     Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                     Rows Removed by Filter: 27955144
                                                                     Buffers: shared hit=3 read=275864
                                                               ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.020..0.026 rows=1 loops=1)
                                                                     Filter: ((role)::text = 'actress'::text)
                                                                     Rows Removed by Filter: 11
                                                                     Buffers: shared hit=2
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=24.764..10011.639 rows=1381125 loops=1)
                                                         Filter: (production_year > 2000)
                                                         Rows Removed by Filter: 1144715
                                                         Buffers: shared hit=2488149 read=42863
                                             ->  Sort  (cost=615652.31..615662.50 rows=131290 width=4) (actual time=15179.048..15382.467 rows=3319517 loops=1)
                                                   Sort Key: mi.movie_id
                                                   Sort Method: quicksort  Memory: 240651kB
                                                   Buffers: shared hit=568 read=147225
                                                   ->  Merge Join  (cost=0.10..615305.68 rows=131290 width=4) (actual time=12341.821..14095.919 rows=3036719 loops=1)
                                                         Merge Cond: (it.id = mi.info_type_id)
                                                         Buffers: shared hit=568 read=147225
                                                         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.038..0.062 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=2
                                                         ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=8) (actual time=52.468..11536.237 rows=12601871 loops=1)
                                                               Buffers: shared hit=566 read=147225
                                       ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=14877.870..15040.245 rows=2011669 loops=1)
                                             Sort Key: mc.movie_id
                                             Sort Method: quicksort  Memory: 103237kB
                                             Buffers: shared hit=1681925 read=29747
                                             ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.037..14353.562 rows=1153798 loops=1)
                                                   Merge Cond: (cn.id = mc.company_id)
                                                   Buffers: shared hit=1681925 read=29747
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.024..1577.485 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared hit=231720 read=3834
                                                   ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.010..12187.727 rows=2609129 loops=1)
                                                         Buffers: shared hit=1450205 read=25913
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=4) (actual time=0.025..10626.425 rows=3139890 loops=1)
                                 Buffers: shared hit=3099821 read=47611
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=4) (actual time=0.027..2162.346 rows=2333827 loops=1)
                     Buffers: shared hit=624939 read=12974
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=961996 width=19) (actual time=1838.699..3102.296 rows=960885 loops=1)
               Filter: ((gender)::text = 'f'::text)
               Rows Removed by Filter: 1739579
               Buffers: shared hit=2585911 read=45903
 Planning Time: 6903.322 ms
 Execution Time: 82112.745 ms
(83 rows)

