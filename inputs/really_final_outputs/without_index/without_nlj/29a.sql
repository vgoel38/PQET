                                                                                                                 QUERY PLAN                                                                                                                  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31223.14..31223.14 rows=1 width=96) (actual time=29402.842..29402.842 rows=1 loops=1)
   Buffers: shared hit=6701 read=579752
   ->  Hash Join  (cost=16474.12..31223.14 rows=1 width=48) (actual time=21575.243..29402.167 rows=1620 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=6701 read=579752
         ->  Hash Join  (cost=16474.08..31223.11 rows=1 width=52) (actual time=21575.140..29401.550 rows=1620 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=6697 read=579752
               ->  Hash Join  (cost=16467.95..31216.97 rows=1 width=40) (actual time=21528.356..29354.210 rows=1620 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=6697 read=579748
                     ->  Hash Join  (cost=11186.97..25936.00 rows=1 width=29) (actual time=11810.160..23685.010 rows=380 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6690 read=461928
                           ->  Seq Scan on cast_info ci  (cost=0.00..14652.00 rows=833160 width=16) (actual time=0.019..11776.940 rows=836701 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35407643
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=11186.97..11186.97 rows=1 width=37) (actual time=11763.599..11763.599 rows=10 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=6685 read=209279
                                 ->  Hash Join  (cost=2727.64..11186.97 rows=1 width=37) (actual time=4980.215..11763.589 rows=10 loops=1)
                                       Hash Cond: (cc.subject_id = cct1.id)
                                       Buffers: shared hit=6685 read=209279
                                       ->  Hash Join  (cost=2727.61..11186.94 rows=1 width=41) (actual time=4980.192..11763.564 rows=10 loops=1)
                                             Hash Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=6684 read=209279
                                             ->  Hash Join  (cost=2721.47..11180.81 rows=1 width=20) (actual time=4564.283..11698.266 rows=410 loops=1)
                                                   Hash Cond: (cc.status_id = cct2.id)
                                                   Buffers: shared hit=6684 read=209273
                                                   ->  Hash Join  (cost=2721.44..11180.77 rows=1 width=24) (actual time=4483.316..11697.925 rows=1188 loops=1)
                                                         Hash Cond: (mi.movie_id = cc.movie_id)
                                                         Buffers: shared hit=6683 read=209273
                                                         ->  Hash Join  (cost=2669.34..11128.68 rows=1 width=12) (actual time=3882.399..11595.117 rows=1511 loops=1)
                                                               Hash Cond: (mi.info_type_id = it.id)
                                                               Buffers: shared hit=6681 read=208544
                                                               ->  Hash Join  (cost=2669.29..11128.63 rows=42 width=16) (actual time=3882.353..11594.499 rows=1511 loops=1)
                                                                     Hash Cond: (mi.movie_id = mc.movie_id)
                                                                     Buffers: shared hit=6680 read=208544
                                                                     ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=444887 width=8) (actual time=693.483..9293.345 rows=451104 loops=1)
                                                                           Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                           Rows Removed by Filter: 14384616
                                                                           Buffers: shared hit=6672 read=162311
                                                                     ->  Hash  (cost=2669.28..2669.28 rows=69 width=8) (actual time=2228.752..2228.752 rows=981 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 47kB
                                                                           Buffers: shared hit=8 read=46233
                                                                           ->  Hash Join  (cost=1595.64..2669.28 rows=69 width=8) (actual time=1349.739..2228.284 rows=981 loops=1)
                                                                                 Hash Cond: (mc.company_id = cn.id)
                                                                                 Buffers: shared hit=8 read=46233
                                                                                 ->  Hash Join  (cost=1454.78..2528.41 rows=190 width=12) (actual time=1211.808..2088.903 rows=3218 loops=1)
                                                                                       Hash Cond: (mc.movie_id = mk.movie_id)
                                                                                       Buffers: shared hit=6 read=43241
                                                                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..468.851 rows=2609129 loops=1)
                                                                                             Buffers: shared hit=3 read=18786
                                                                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1194.414..1194.414 rows=414 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 23kB
                                                                                             Buffers: shared hit=3 read=24455
                                                                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=74.836..1194.155 rows=414 loops=1)
                                                                                                   Hash Cond: (mk.keyword_id = k.id)
                                                                                                   Buffers: shared hit=3 read=24455
                                                                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..547.445 rows=4523930 loops=1)
                                                                                                         Buffers: shared hit=3 read=24451
                                                                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=37.906..37.906 rows=1 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared read=4
                                                                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=37.891..37.894 rows=1 loops=1)
                                                                                                               Index Cond: (keyword = 'computer-animation'::text)
                                                                                                               Buffers: shared read=4
                                                                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=137.496..137.496 rows=84843 loops=1)
                                                                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                                       Buffers: shared hit=2 read=2992
                                                                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.122..109.723 rows=84843 loops=1)
                                                                                             Filter: ((country_code)::text = '[us]'::text)
                                                                                             Rows Removed by Filter: 150154
                                                                                             Buffers: shared hit=2 read=2992
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.021 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'release dates'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                                         ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=100.903..100.903 rows=135086 loops=1)
                                                               Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                               Buffers: shared hit=2 read=729
                                                               ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=20.383..56.711 rows=135086 loops=1)
                                                                     Buffers: shared hit=2 read=729
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.018..0.019 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete+verified'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=21) (actual time=65.202..65.202 rows=3 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=6
                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=55.519..65.178 rows=3 loops=1)
                                                         Index Cond: (title = 'Shrek 2'::text)
                                                         Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                         Buffers: shared read=6
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.007 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=5280.97..5280.97 rows=53 width=27) (actual time=5668.722..5668.722 rows=16105 loops=1)
                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1097kB
                           Buffers: shared hit=7 read=117820
                           ->  Hash Join  (cost=3237.44..5280.97 rows=53 width=27) (actual time=3314.860..5659.794 rows=16105 loops=1)
                                 Hash Cond: (n.id = an.person_id)
                                 Buffers: shared hit=7 read=117820
                                 ->  Hash Join  (cost=2685.39..4728.18 rows=243 width=23) (actual time=2607.539..4947.947 rows=10064 loops=1)
                                       Hash Cond: (pi.info_type_id = it3.id)
                                       Buffers: shared hit=5 read=106427
                                       ->  Hash Join  (cost=2685.35..4725.87 rows=27415 width=27) (actual time=2607.495..4935.698 rows=46248 loops=1)
                                             Hash Cond: (pi.person_id = n.id)
                                             Buffers: shared hit=4 read=106427
                                             ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=2963664 width=8) (actual time=0.003..1487.748 rows=2963664 loops=1)
                                                   Buffers: shared hit=2 read=50816
                                             ->  Hash  (cost=2679.69..2679.69 rows=38551 width=19) (actual time=2604.557..2604.557 rows=50011 loops=1)
                                                   Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                   Buffers: shared hit=2 read=55611
                                                   ->  Seq Scan on name n  (cost=0.00..2679.69 rows=38551 width=19) (actual time=1096.303..2574.993 rows=50011 loops=1)
                                                         Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                         Rows Removed by Filter: 4117480
                                                         Buffers: shared hit=2 read=55611
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.013..0.022 rows=1 loops=1)
                                                   Filter: ((info)::text = 'trivia'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=419.75..419.75 rows=901343 width=4) (actual time=694.147..694.147 rows=901343 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                                       Buffers: shared hit=2 read=11393
                                       ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.017..423.253 rows=901343 loops=1)
                                             Buffers: shared hit=2 read=11393
               ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=46.757..46.757 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=4
                     ->  Index Scan using char_name_idx_name on char_name chn  (cost=0.01..6.13 rows=1 width=20) (actual time=46.736..46.739 rows=1 loops=1)
                           Index Cond: (name = 'Queen'::text)
                           Buffers: shared read=4
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.019..0.025 rows=1 loops=1)
                     Filter: ((role)::text = 'actress'::text)
                     Rows Removed by Filter: 11
                     Buffers: shared hit=1
 Planning Time: 19747.660 ms
 Execution Time: 29437.726 ms
(156 rows)

