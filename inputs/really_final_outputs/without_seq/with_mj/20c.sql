                                                                                                                    QUERY PLAN                                                                                                                    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=612302.91..612302.91 rows=1 width=64) (actual time=151025.775..151025.775 rows=1 loops=1)
   Buffers: shared hit=13453413 read=355579
   ->  Merge Join  (cost=564727.70..612302.91 rows=1 width=32) (actual time=148034.277..151014.167 rows=5406 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=13453413 read=355579
         ->  Sort  (cost=564727.65..564727.65 rows=1 width=21) (actual time=147986.639..147987.774 rows=5406 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 554kB
               Buffers: shared hit=10868170 read=309695
               ->  Merge Join  (cost=564727.36..564727.65 rows=1 width=21) (actual time=147799.777..147980.231 rows=5406 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=10868166 read=309695
                     ->  Sort  (cost=564666.03..564666.18 rows=1826 width=25) (actual time=147729.247..147828.940 rows=834896 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 135356kB
                           Buffers: shared hit=10868146 read=309672
                           ->  Merge Join  (cost=524898.67..564662.96 rows=1826 width=25) (actual time=144631.664..147306.128 rows=1146265 loops=1)
                                 Merge Cond: (t.id = ci.movie_id)
                                 Buffers: shared hit=10868146 read=309672
                                 ->  Merge Join  (cost=26893.45..66530.65 rows=6679 width=33) (actual time=11226.758..13432.183 rows=294672 loops=1)
                                       Merge Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=2598448 read=80811
                                       ->  Sort  (cost=26893.44..26893.49 rows=659 width=25) (actual time=10473.493..10474.201 rows=4590 loops=1)
                                             Sort Key: cc.movie_id
                                             Sort Method: quicksort  Memory: 545kB
                                             Buffers: shared hit=2576805 read=44001
                                             ->  Merge Join  (cost=26882.84..26892.48 rows=659 width=25) (actual time=10470.417..10471.789 rows=4696 loops=1)
                                                   Merge Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=2576805 read=44001
                                                   ->  Sort  (cost=26882.84..26883.04 rows=2636 width=29) (actual time=10470.405..10470.634 rows=4696 loops=1)
                                                         Sort Key: cc.status_id
                                                         Sort Method: quicksort  Memory: 569kB
                                                         Buffers: shared hit=2576803 read=44001
                                                         ->  Merge Join  (cost=26876.37..26878.19 rows=2636 width=29) (actual time=10467.905..10469.241 rows=4696 loops=1)
                                                               Merge Cond: (cc.subject_id = cct1.id)
                                                               Buffers: shared hit=2576803 read=44001
                                                               ->  Sort  (cost=26870.24..26871.06 rows=10544 width=33) (actual time=10467.880..10468.097 rows=4697 loops=1)
                                                                     Sort Key: cc.subject_id
                                                                     Sort Method: quicksort  Memory: 703kB
                                                                     Buffers: shared hit=2576802 read=44000
                                                                     ->  Merge Join  (cost=26836.17..26848.36 rows=10544 width=33) (actual time=10464.499..10466.401 rows=6234 loops=1)
                                                                           Merge Cond: (t.kind_id = kt.id)
                                                                           Buffers: shared hit=2576802 read=44000
                                                                           ->  Sort  (cost=26830.05..26835.78 rows=73810 width=37) (actual time=10464.461..10464.800 rows=6235 loops=1)
                                                                                 Sort Key: t.kind_id
                                                                                 Sort Method: quicksort  Memory: 4812kB
                                                                                 Buffers: shared hit=2576801 read=43999
                                                                                 ->  Merge Join  (cost=2.65..26644.70 rows=73810 width=37) (actual time=451.025..10446.500 rows=38722 loops=1)
                                                                                       Merge Cond: (cc.movie_id = t.id)
                                                                                       Buffers: shared hit=2576801 read=43999
                                                                                       ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.032..173.394 rows=135073 loops=1)
                                                                                             Buffers: shared hit=86925 read=1097
                                                                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=24.337..10061.635 rows=1381453 loops=1)
                                                                                             Filter: (production_year > 2000)
                                                                                             Rows Removed by Filter: 1146859
                                                                                             Buffers: shared hit=2489876 read=42902
                                                                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                                                                                 Sort Key: kt.id
                                                                                 Sort Method: quicksort  Memory: 25kB
                                                                                 Buffers: shared hit=1 read=1
                                                                                 ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                                                                                       Index Cond: ((kind)::text = 'movie'::text)
                                                                                       Buffers: shared hit=1 read=1
                                                               ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.021..0.022 rows=1 loops=1)
                                                                     Sort Key: cct1.id
                                                                     Sort Method: quicksort  Memory: 25kB
                                                                     Buffers: shared hit=1 read=1
                                                                     ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                                                                           Index Cond: ((kind)::text = 'cast'::text)
                                                                           Buffers: shared hit=1 read=1
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..9.19 rows=1 width=4) (actual time=0.010..0.011 rows=2 loops=1)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=2
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.011..2251.924 rows=4523930 loops=1)
                                             Buffers: shared hit=21643 read=36810
                                 ->  Sort  (cost=498005.22..498086.21 rows=1043217 width=8) (actual time=133341.465..133486.050 rows=1759396 loops=1)
                                       Sort Key: ci.movie_id
                                       Sort Method: quicksort  Memory: 53807kB
                                       Buffers: shared hit=8269698 read=228861
                                       ->  Merge Join  (cost=0.03..494766.61 rows=1043217 width=8) (actual time=15431.938..133027.459 rows=623586 loops=1)
                                             Merge Cond: (chn.id = ci.person_role_id)
                                             Buffers: shared hit=8269698 read=228861
                                             ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..36482.54 rows=186251 width=4) (actual time=80.498..19027.036 rows=180152 loops=1)
                                                   Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                                   Rows Removed by Filter: 2960187
                                                   Buffers: shared hit=3100270 read=47612
                                             ->  Index Scan using cast_info_idx_cid on cast_info ci  (cost=0.02..941334.49 rows=36244344 width=12) (actual time=0.034..109989.373 rows=17571520 loops=1)
                                                   Buffers: shared hit=5169428 read=181249
                     ->  Sort  (cost=61.33..61.33 rows=10 width=4) (actual time=49.068..49.070 rows=10 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=20 read=23
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=21.259..49.028 rows=10 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                 Buffers: shared hit=20 read=23
         ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=0.017..2668.574 rows=2699679 loops=1)
               Buffers: shared hit=2585243 read=45884
 Planning Time: 6134.770 ms
 Execution Time: 151054.690 ms
(100 rows)

