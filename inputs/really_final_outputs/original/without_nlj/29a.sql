                                                                                                                 QUERY PLAN                                                                                                                  
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31223.50..31223.50 rows=1 width=96) (actual time=29178.330..29178.330 rows=1 loops=1)
   Buffers: shared hit=6701 read=579752
   ->  Hash Join  (cost=16474.34..31223.50 rows=1 width=48) (actual time=21341.195..29177.791 rows=1620 loops=1)
         Hash Cond: (cc.status_id = cct2.id)
         Buffers: shared hit=6701 read=579752
         ->  Hash Join  (cost=16474.31..31223.47 rows=1 width=52) (actual time=21341.089..29177.302 rows=1620 loops=1)
               Hash Cond: (cc.subject_id = cct1.id)
               Buffers: shared hit=6697 read=579752
               ->  Hash Join  (cost=16474.28..31223.43 rows=1 width=56) (actual time=21341.044..29176.872 rows=1620 loops=1)
                     Hash Cond: (t.id = cc.movie_id)
                     Buffers: shared hit=6696 read=579752
                     ->  Hash Join  (cost=16422.18..31171.34 rows=1 width=68) (actual time=21255.195..29090.537 rows=1620 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=6694 read=579023
                           ->  Hash Join  (cost=16422.15..31171.30 rows=1 width=72) (actual time=21255.154..29090.095 rows=1620 loops=1)
                                 Hash Cond: (ci.person_role_id = chn.id)
                                 Buffers: shared hit=6693 read=579023
                                 ->  Hash Join  (cost=16416.01..31165.17 rows=1 width=60) (actual time=21210.966..29045.435 rows=1620 loops=1)
                                       Hash Cond: (ci.person_id = n.id)
                                       Buffers: shared hit=6693 read=579019
                                       ->  Hash Join  (cost=11135.23..25884.39 rows=1 width=49) (actual time=11604.862..23508.365 rows=380 loops=1)
                                             Hash Cond: (ci.movie_id = t.id)
                                             Buffers: shared hit=6686 read=461199
                                             ->  Seq Scan on cast_info ci  (cost=0.00..14652.00 rows=834248 width=16) (actual time=0.027..11809.093 rows=836701 loops=1)
                                                   Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                   Rows Removed by Filter: 35407643
                                                   Buffers: shared hit=5 read=252649
                                             ->  Hash  (cost=11135.23..11135.23 rows=1 width=33) (actual time=11564.154..11564.154 rows=10 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=6681 read=208550
                                                   ->  Hash Join  (cost=2675.48..11135.23 rows=1 width=33) (actual time=4871.902..11564.142 rows=10 loops=1)
                                                         Hash Cond: (mi.movie_id = t.id)
                                                         Buffers: shared hit=6681 read=208550
                                                         ->  Hash Join  (cost=2669.34..11129.09 rows=1 width=12) (actual time=3874.048..11499.863 rows=1511 loops=1)
                                                               Hash Cond: (mi.info_type_id = it.id)
                                                               Buffers: shared hit=6681 read=208544
                                                               ->  Hash Join  (cost=2669.29..11129.04 rows=43 width=16) (actual time=3873.927..11499.170 rows=1511 loops=1)
                                                                     Hash Cond: (mi.movie_id = mc.movie_id)
                                                                     Buffers: shared hit=6680 read=208544
                                                                     ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=680.474..9192.881 rows=451104 loops=1)
                                                                           Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                           Rows Removed by Filter: 14384616
                                                                           Buffers: shared hit=6672 read=162311
                                                                     ->  Hash  (cost=2669.28..2669.28 rows=69 width=8) (actual time=2235.602..2235.602 rows=981 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 47kB
                                                                           Buffers: shared hit=8 read=46233
                                                                           ->  Hash Join  (cost=1595.64..2669.28 rows=69 width=8) (actual time=1355.878..2235.147 rows=981 loops=1)
                                                                                 Hash Cond: (mc.company_id = cn.id)
                                                                                 Buffers: shared hit=8 read=46233
                                                                                 ->  Hash Join  (cost=1454.78..2528.41 rows=190 width=12) (actual time=1211.156..2088.984 rows=3218 loops=1)
                                                                                       Hash Cond: (mc.movie_id = mk.movie_id)
                                                                                       Buffers: shared hit=6 read=43241
                                                                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..456.254 rows=2609129 loops=1)
                                                                                             Buffers: shared hit=3 read=18786
                                                                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1194.496..1194.496 rows=414 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 23kB
                                                                                             Buffers: shared hit=3 read=24455
                                                                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=71.368..1194.225 rows=414 loops=1)
                                                                                                   Hash Cond: (mk.keyword_id = k.id)
                                                                                                   Buffers: shared hit=3 read=24455
                                                                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..553.711 rows=4523930 loops=1)
                                                                                                         Buffers: shared hit=3 read=24451
                                                                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=37.949..37.949 rows=1 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared read=4
                                                                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=37.935..37.938 rows=1 loops=1)
                                                                                                               Index Cond: (keyword = 'computer-animation'::text)
                                                                                                               Buffers: shared read=4
                                                                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=144.087..144.087 rows=84843 loops=1)
                                                                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                                       Buffers: shared hit=2 read=2992
                                                                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.747..115.209 rows=84843 loops=1)
                                                                                             Filter: ((country_code)::text = '[us]'::text)
                                                                                             Rows Removed by Filter: 150154
                                                                                             Buffers: shared hit=2 read=2992
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.080..0.080 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.029..0.064 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'release dates'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=21) (actual time=63.990..63.990 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=6
                                                               ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=54.272..63.964 rows=3 loops=1)
                                                                     Index Cond: (title = 'Shrek 2'::text)
                                                                     Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                     Buffers: shared read=6
                                       ->  Hash  (cost=5280.77..5280.77 rows=51 width=27) (actual time=5536.625..5536.625 rows=16105 loops=1)
                                             Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1097kB
                                             Buffers: shared hit=7 read=117820
                                             ->  Hash Join  (cost=3237.32..5280.77 rows=51 width=27) (actual time=3181.708..5526.928 rows=16105 loops=1)
                                                   Hash Cond: (n.id = an.person_id)
                                                   Buffers: shared hit=7 read=117820
                                                   ->  Hash Join  (cost=2685.27..4728.01 rows=237 width=23) (actual time=2609.512..4949.296 rows=10064 loops=1)
                                                         Hash Cond: (pi.info_type_id = it3.id)
                                                         Buffers: shared hit=5 read=106427
                                                         ->  Hash Join  (cost=2685.22..4725.75 rows=26816 width=27) (actual time=2609.439..4936.017 rows=46248 loops=1)
                                                               Hash Cond: (pi.person_id = n.id)
                                                               Buffers: shared hit=4 read=106427
                                                               ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=2963664 width=8) (actual time=0.005..1476.347 rows=2963664 loops=1)
                                                                     Buffers: shared hit=2 read=50816
                                                               ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2605.595..2605.595 rows=50011 loops=1)
                                                                     Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                                     Buffers: shared hit=2 read=55611
                                                                     ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1097.487..2578.199 rows=50011 loops=1)
                                                                           Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                                           Rows Removed by Filter: 4117480
                                                                           Buffers: shared hit=2 read=55611
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.042..0.042 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.039 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'trivia'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=419.75..419.75 rows=901343 width=4) (actual time=559.267..559.267 rows=901343 loops=1)
                                                         Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                                                         Buffers: shared hit=2 read=11393
                                                         ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.017..301.252 rows=901343 loops=1)
                                                               Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=44.176..44.176 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=4
                                       ->  Index Scan using char_name_idx_name on char_name chn  (cost=0.01..6.13 rows=1 width=20) (actual time=44.161..44.164 rows=1 loops=1)
                                             Index Cond: (name = 'Queen'::text)
                                             Buffers: shared read=4
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.020..0.022 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=83.872..83.872 rows=135086 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                           Buffers: shared hit=2 read=729
                           ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=0.182..40.535 rows=135086 loops=1)
                                 Buffers: shared hit=2 read=729
               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.009 rows=1 loops=1)
                           Filter: ((kind)::text = 'cast'::text)
                           Rows Removed by Filter: 3
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.017..0.018 rows=1 loops=1)
                     Filter: ((kind)::text = 'complete+verified'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
 Planning Time: 20724.595 ms
 Execution Time: 29210.208 ms
(156 rows)

