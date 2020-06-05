                                                                                                         QUERY PLAN                                                                                                         
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=533351.02..533351.02 rows=1 width=128) (actual time=63824.898..63824.898 rows=1 loops=1)
   Buffers: shared hit=10176746 read=454959
   ->  Merge Join  (cost=449212.26..533349.51 rows=4872 width=64) (actual time=61704.126..63624.222 rows=483082 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=10176746 read=454959
         ->  Merge Join  (cost=449212.19..485699.48 rows=21106 width=57) (actual time=58234.571..60142.295 rows=483198 loops=1)
               Merge Cond: (ci.person_id = an.person_id)
               Buffers: shared hit=7590835 read=409056
               ->  Sort  (cost=449212.18..449214.06 rows=24276 width=37) (actual time=58217.079..58238.784 rows=173657 loops=1)
                     Sort Key: ci.person_id
                     Sort Method: quicksort  Memory: 22467kB
                     Buffers: shared hit=7269926 read=396082
                     ->  Merge Join  (cost=412913.11..449157.27 rows=24276 width=37) (actual time=48017.068..58142.641 rows=173657 loops=1)
                           Merge Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=7269922 read=396082
                           ->  Sort  (cost=412913.09..412916.98 rows=50022 width=25) (actual time=48017.047..48043.709 rows=173658 loops=1)
                                 Sort Key: ci.person_role_id
                                 Sort Method: quicksort  Memory: 21811kB
                                 Buffers: shared hit=4170077 read=348471
                                 ->  Merge Join  (cost=389406.73..412791.84 rows=50022 width=25) (actual time=37599.064..47945.169 rows=189554 loops=1)
                                       Merge Cond: (ci.movie_id = t.id)
                                       Buffers: shared hit=4170077 read=348471
                                       ->  Merge Join  (cost=389406.70..389567.63 rows=50022 width=16) (actual time=37403.835..37800.693 rows=189554 loops=1)
                                             Merge Cond: (ci.movie_id = mc.movie_id)
                                             Buffers: shared hit=1681930 read=305611
                                             ->  Sort  (cost=321881.00..321886.60 rows=72136 width=12) (actual time=21926.546..21959.390 rows=276166 loops=1)
                                                   Sort Key: ci.movie_id
                                                   Sort Method: quicksort  Memory: 25234kB
                                                   Buffers: shared hit=5 read=275864
                                                   ->  Merge Join  (cost=0.02..321700.23 rows=72136 width=12) (actual time=9415.253..21773.462 rows=276166 loops=1)
                                                         Merge Cond: (ci.role_id = rt.id)
                                                         Buffers: shared hit=5 read=275864
                                                         ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=20.239..21527.502 rows=867127 loops=1)
                                                               Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 27955144
                                                               Buffers: shared hit=3 read=275864
                                                         ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.020..0.029 rows=1 loops=1)
                                                               Filter: ((role)::text = 'actress'::text)
                                                               Rows Removed by Filter: 11
                                                               Buffers: shared hit=2
                                             ->  Sort  (cost=67525.70..67598.84 rows=941996 width=4) (actual time=15477.271..15614.087 rows=1292694 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 103237kB
                                                   Buffers: shared hit=1681925 read=29747
                                                   ->  Merge Join  (cost=0.03..64622.87 rows=941996 width=4) (actual time=0.037..14955.099 rows=1153798 loops=1)
                                                         Merge Cond: (cn.id = mc.company_id)
                                                         Buffers: shared hit=1681925 read=29747
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.022..1559.451 rows=84843 loops=1)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 150154
                                                               Buffers: shared hit=231720 read=3834
                                                         ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.011..12806.269 rows=2609129 loops=1)
                                                               Buffers: shared hit=1450205 read=25913
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.020..9764.871 rows=2525702 loops=1)
                                             Buffers: shared hit=2488147 read=42860
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.016..9660.035 rows=3139914 loops=1)
                                 Buffers: shared hit=3099845 read=47611
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=20) (actual time=0.015..1591.227 rows=1052243 loops=1)
                     Buffers: shared hit=320909 read=12974
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=961996 width=19) (actual time=1991.299..3266.731 rows=960885 loops=1)
               Filter: ((gender)::text = 'f'::text)
               Rows Removed by Filter: 1739579
               Buffers: shared hit=2585911 read=45903
 Planning Time: 4523.738 ms
 Execution Time: 63859.230 ms
(65 rows)

