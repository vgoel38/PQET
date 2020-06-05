                                                                                                                 QUERY PLAN                                                                                                                  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=36292.80..36292.80 rows=1 width=96) (actual time=33770.379..33770.380 rows=1 loops=1)
   Buffers: shared hit=6705 read=652183
   ->  Hash Join  (cost=20132.99..36292.80 rows=1 width=48) (actual time=25840.698..33765.490 rows=16308 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=6705 read=652183
         ->  Hash Join  (cost=18311.69..34471.50 rows=1 width=36) (actual time=24078.476..31998.928 rows=16740 loops=1)
               Hash Cond: (ci.role_id = rt.id)
               Buffers: shared hit=6700 read=615738
               ->  Hash Join  (cost=18311.65..34471.47 rows=1 width=40) (actual time=24078.444..31994.552 rows=16740 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6699 read=615738
                     ->  Hash Join  (cost=13030.87..29190.68 rows=1 width=29) (actual time=13998.543..26361.595 rows=8963 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6692 read=497918
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=0.019..12246.955 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=13030.87..13030.87 rows=1 width=37) (actual time=13964.890..13964.890 rows=337 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 29kB
                                 Buffers: shared hit=6687 read=245269
                                 ->  Hash Join  (cost=4571.12..13030.87 rows=1 width=37) (actual time=6937.355..13964.703 rows=337 loops=1)
                                       Hash Cond: (mi.info_type_id = it.id)
                                       Buffers: shared hit=6687 read=245269
                                       ->  Hash Join  (cost=4571.07..13030.82 rows=1 width=41) (actual time=6937.323..13964.517 rows=337 loops=1)
                                             Hash Cond: (cc.subject_id = cct.id)
                                             Buffers: shared hit=6686 read=245269
                                             ->  Hash Join  (cost=4571.04..13030.79 rows=1 width=45) (actual time=6937.297..13964.338 rows=386 loops=1)
                                                   Hash Cond: (cc.status_id = cct.id)
                                                   Buffers: shared hit=6685 read=245269
                                                   ->  Hash Join  (cost=4571.01..13030.76 rows=1 width=49) (actual time=6931.686..13964.050 rows=1082 loops=1)
                                                         Hash Cond: (t.id = cc.movie_id)
                                                         Buffers: shared hit=6684 read=245269
                                                         ->  Hash Join  (cost=4518.91..12978.66 rows=5 width=37) (actual time=6229.565..13862.259 rows=1425 loops=1)
                                                               Hash Cond: (mi.movie_id = t.id)
                                                               Buffers: shared hit=6682 read=244540
                                                               ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=689.723..9813.543 rows=451104 loops=1)
                                                                     Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                     Rows Removed by Filter: 14384616
                                                                     Buffers: shared hit=6672 read=162311
                                                               ->  Hash  (cost=4518.91..4518.91 rows=28 width=29) (actual time=3974.509..3974.509 rows=669 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 51kB
                                                                     Buffers: shared hit=10 read=82229
                                                                     ->  Hash Join  (cost=3445.26..4518.91 rows=28 width=29) (actual time=3080.443..3974.104 rows=669 loops=1)
                                                                           Hash Cond: (mc.movie_id = t.id)
                                                                           Buffers: shared hit=10 read=82229
                                                                           ->  Hash Join  (cost=1595.64..2669.28 rows=69 width=8) (actual time=1361.452..2254.487 rows=981 loops=1)
                                                                                 Hash Cond: (mc.company_id = cn.id)
                                                                                 Buffers: shared hit=8 read=46233
                                                                                 ->  Hash Join  (cost=1454.78..2528.41 rows=190 width=12) (actual time=1216.438..2108.025 rows=3218 loops=1)
                                                                                       Hash Cond: (mc.movie_id = mk.movie_id)
                                                                                       Buffers: shared hit=6 read=43241
                                                                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.012..478.450 rows=2609129 loops=1)
                                                                                             Buffers: shared hit=3 read=18786
                                                                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1198.870..1198.870 rows=414 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 23kB
                                                                                             Buffers: shared hit=3 read=24455
                                                                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=76.275..1198.615 rows=414 loops=1)
                                                                                                   Hash Cond: (mk.keyword_id = k.id)
                                                                                                   Buffers: shared hit=3 read=24455
                                                                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.009..525.226 rows=4523930 loops=1)
                                                                                                         Buffers: shared hit=3 read=24451
                                                                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=42.406..42.407 rows=1 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared read=4
                                                                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=42.390..42.393 rows=1 loops=1)
                                                                                                               Index Cond: (keyword = 'computer-animation'::text)
                                                                                                               Buffers: shared read=4
                                                                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=144.661..144.661 rows=84843 loops=1)
                                                                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                                       Buffers: shared hit=2 read=2992
                                                                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=5.559..113.745 rows=84843 loops=1)
                                                                                             Filter: ((country_code)::text = '[us]'::text)
                                                                                             Rows Removed by Filter: 150154
                                                                                             Buffers: shared hit=2 read=2992
                                                                           ->  Hash  (cost=1696.56..1696.56 rows=1042800 width=21) (actual time=1712.563..1712.563 rows=1042800 loops=1)
                                                                                 Buckets: 1048576  Batches: 1  Memory Usage: 63852kB
                                                                                 Buffers: shared hit=2 read=35996
                                                                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1042800 width=21) (actual time=4.910..1251.350 rows=1042800 loops=1)
                                                                                       Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                       Rows Removed by Filter: 1485512
                                                                                       Buffers: shared hit=2 read=35996
                                                         ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=100.507..100.507 rows=135086 loops=1)
                                                               Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                               Buffers: shared hit=2 read=729
                                                               ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=19.491..55.978 rows=135086 loops=1)
                                                                     Buffers: shared hit=2 read=729
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.008 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'cast'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.008..0.018 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=5280.77..5280.77 rows=51 width=27) (actual time=5628.315..5628.315 rows=16105 loops=1)
                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1097kB
                           Buffers: shared hit=7 read=117820
                           ->  Hash Join  (cost=3237.32..5280.77 rows=51 width=27) (actual time=3182.885..5620.164 rows=16105 loops=1)
                                 Hash Cond: (n.id = an.person_id)
                                 Buffers: shared hit=7 read=117820
                                 ->  Hash Join  (cost=2685.27..4728.01 rows=237 width=23) (actual time=2610.805..5044.229 rows=10064 loops=1)
                                       Hash Cond: (pi.info_type_id = it3.id)
                                       Buffers: shared hit=5 read=106427
                                       ->  Hash Join  (cost=2685.22..4725.75 rows=26816 width=27) (actual time=2610.692..5032.373 rows=46248 loops=1)
                                             Hash Cond: (pi.person_id = n.id)
                                             Buffers: shared hit=4 read=106427
                                             ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=2963664 width=8) (actual time=0.008..1577.168 rows=2963664 loops=1)
                                                   Buffers: shared hit=2 read=50816
                                             ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2606.838..2606.838 rows=50011 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                   Buffers: shared hit=2 read=55611
                                                   ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1098.569..2581.042 rows=50011 loops=1)
                                                         Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4117480
                                                         Buffers: shared hit=2 read=55611
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.072..0.072 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.027..0.062 rows=1 loops=1)
                                                   Filter: ((info)::text = 'trivia'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=419.75..419.75 rows=901343 width=4) (actual time=564.493..564.493 rows=901343 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                                       Buffers: shared hit=2 read=11393
                                       ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.006..310.137 rows=901343 loops=1)
                                             Buffers: shared hit=2 read=11393
               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.012 rows=1 loops=1)
                           Filter: ((role)::text = 'actress'::text)
                           Rows Removed by Filter: 11
                           Buffers: shared hit=1
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1737.555..1737.555 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=25.437..765.744 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 20484.758 ms
 Execution Time: 33797.410 ms
(155 rows)

