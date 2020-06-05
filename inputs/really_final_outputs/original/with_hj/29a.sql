                                                                                                                       QUERY PLAN                                                                                                                        
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31227.13..31227.13 rows=1 width=96) (actual time=29679.828..29679.828 rows=1 loops=1)
   Buffers: shared hit=6675 read=579778
   ->  Hash Join  (cost=16477.96..31227.13 rows=1 width=48) (actual time=21800.537..29679.284 rows=1620 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=6675 read=579778
         ->  Hash Join  (cost=13792.74..28541.91 rows=1 width=45) (actual time=19054.149..26932.472 rows=1620 loops=1)
               Hash Cond: (ci.person_id = an.person_id)
               Buffers: shared hit=6672 read=524165
               ->  Hash Join  (cost=13240.69..27989.86 rows=1 width=41) (actual time=18490.199..26368.179 rows=540 loops=1)
                     Hash Cond: (cc.status_id = cct.id)
                     Buffers: shared hit=6672 read=512770
                     ->  Hash Join  (cost=13240.66..27989.83 rows=1 width=45) (actual time=18464.260..26342.100 rows=540 loops=1)
                           Hash Cond: (cc.subject_id = cct.id)
                           Buffers: shared hit=6672 read=512769
                           ->  Hash Join  (cost=13240.63..27989.80 rows=1 width=49) (actual time=18464.191..26341.878 rows=540 loops=1)
                                 Hash Cond: (t.id = cc.movie_id)
                                 Buffers: shared hit=6671 read=512769
                                 ->  Hash Join  (cost=13188.53..27937.70 rows=1 width=61) (actual time=18373.882..26251.393 rows=540 loops=1)
                                       Hash Cond: (ci.person_role_id = chn.id)
                                       Buffers: shared hit=6671 read=512038
                                       ->  Hash Join  (cost=13182.40..27931.56 rows=1 width=49) (actual time=18327.568..26204.774 rows=1470 loops=1)
                                             Hash Cond: (ci.role_id = rt.id)
                                             Buffers: shared hit=6671 read=512034
                                             ->  Hash Join  (cost=13182.37..27931.53 rows=1 width=53) (actual time=14260.372..26185.403 rows=4140 loops=1)
                                                   Hash Cond: (ci.person_id = pi.person_id)
                                                   Buffers: shared hit=6671 read=512033
                                                   ->  Hash Join  (cost=11135.21..25884.37 rows=1 width=49) (actual time=11861.361..23785.284 rows=380 loops=1)
                                                         Hash Cond: (ci.movie_id = t.id)
                                                         Buffers: shared hit=6671 read=461214
                                                         ->  Seq Scan on cast_info ci  (cost=0.00..14652.00 rows=834248 width=16) (actual time=45.684..11869.773 rows=836701 loops=1)
                                                               Filter: (note = ANY ('{(voice),"(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                               Rows Removed by Filter: 35407643
                                                               Buffers: shared read=252654
                                                         ->  Hash  (cost=11135.21..11135.21 rows=1 width=33) (actual time=11764.422..11764.422 rows=10 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=6671 read=208560
                                                               ->  Hash Join  (cost=2675.47..11135.21 rows=1 width=33) (actual time=4927.691..11764.404 rows=10 loops=1)
                                                                     Hash Cond: (mc.company_id = cn.id)
                                                                     Buffers: shared hit=6671 read=208560
                                                                     ->  Hash Join  (cost=2534.61..10994.35 rows=1 width=37) (actual time=4781.225..11617.925 rows=44 loops=1)
                                                                           Hash Cond: (mi.info_type_id = it.id)
                                                                           Buffers: shared hit=6671 read=205566
                                                                           ->  Hash Join  (cost=2534.56..10994.31 rows=1 width=41) (actual time=4781.184..11617.873 rows=44 loops=1)
                                                                                 Hash Cond: (mi.movie_id = t.id)
                                                                                 Buffers: shared hit=6670 read=205566
                                                                                 ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=448472 width=8) (actual time=720.988..9382.681 rows=451104 loops=1)
                                                                                       Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                                                       Rows Removed by Filter: 14384616
                                                                                       Buffers: shared hit=6670 read=162313
                                                                                 ->  Hash  (cost=2534.56..2534.56 rows=1 width=33) (actual time=2169.752..2169.752 rows=22 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                                                                       Buffers: shared read=43253
                                                                                       ->  Hash Join  (cost=1460.92..2534.56 rows=1 width=33) (actual time=1708.161..2169.735 rows=22 loops=1)
                                                                                             Hash Cond: (mc.movie_id = t.id)
                                                                                             Buffers: shared read=43253
                                                                                             ->  Hash Join  (cost=1454.78..2528.41 rows=190 width=12) (actual time=1224.949..2107.404 rows=3218 loops=1)
                                                                                                   Hash Cond: (mc.movie_id = mk.movie_id)
                                                                                                   Buffers: shared read=43247
                                                                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=3.502..462.443 rows=2609129 loops=1)
                                                                                                         Buffers: shared read=18789
                                                                                                   ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1207.889..1207.889 rows=414 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 23kB
                                                                                                         Buffers: shared read=24458
                                                                                                         ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=89.225..1207.608 rows=414 loops=1)
                                                                                                               Hash Cond: (mk.keyword_id = k.id)
                                                                                                               Buffers: shared read=24458
                                                                                                               ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=7.868..545.486 rows=4523930 loops=1)
                                                                                                                     Buffers: shared read=24454
                                                                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=43.627..43.627 rows=1 loops=1)
                                                                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                                     Buffers: shared read=4
                                                                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=43.611..43.614 rows=1 loops=1)
                                                                                                                           Index Cond: (keyword = 'computer-animation'::text)
                                                                                                                           Buffers: shared read=4
                                                                                             ->  Hash  (cost=6.13..6.13 rows=1 width=21) (actual time=61.764..61.764 rows=3 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                   Buffers: shared read=6
                                                                                                   ->  Index Scan using title_idx_title on title t  (cost=0.01..6.13 rows=1 width=21) (actual time=52.020..61.741 rows=3 loops=1)
                                                                                                         Index Cond: (title = 'Shrek 2'::text)
                                                                                                         Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                         Buffers: shared read=6
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.021 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'release dates'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                                                                     ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=145.450..145.450 rows=84843 loops=1)
                                                                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                                           Buffers: shared read=2994
                                                                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=10.090..113.956 rows=84843 loops=1)
                                                                                 Filter: ((country_code)::text = '[us]'::text)
                                                                                 Rows Removed by Filter: 150154
                                                                                 Buffers: shared read=2994
                                                   ->  Hash  (cost=2043.30..2043.30 rows=26227 width=4) (actual time=2398.739..2398.739 rows=620526 loops=1)
                                                         Buckets: 1048576 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 30008kB
                                                         Buffers: shared read=50819
                                                         ->  Hash Join  (cost=0.05..2043.30 rows=26227 width=4) (actual time=24.145..2161.404 rows=620526 loops=1)
                                                               Hash Cond: (pi.info_type_id = it3.id)
                                                               Buffers: shared read=50819
                                                               ->  Seq Scan on person_info pi  (cost=0.00..1798.92 rows=2963664 width=8) (actual time=23.922..1302.376 rows=2963664 loops=1)
                                                                     Buffers: shared read=50818
                                                               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.178..0.178 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=1
                                                                     ->  Seq Scan on info_type it3  (cost=0.00..0.05 rows=1 width=4) (actual time=0.134..0.168 rows=1 loops=1)
                                                                           Filter: ((info)::text = 'trivia'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared read=1
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=18.444..18.444 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=1
                                                   ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=18.419..18.426 rows=1 loops=1)
                                                         Filter: ((role)::text = 'actress'::text)
                                                         Rows Removed by Filter: 11
                                                         Buffers: shared read=1
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=46.295..46.295 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using char_name_idx_name on char_name chn  (cost=0.01..6.13 rows=1 width=20) (actual time=46.280..46.283 rows=1 loops=1)
                                                   Index Cond: (name = 'Queen'::text)
                                                   Buffers: shared read=4
                                 ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=88.351..88.351 rows=135086 loops=1)
                                       Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                       Buffers: shared read=731
                                       ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=7.389..43.989 rows=135086 loops=1)
                                             Buffers: shared read=731
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.014 rows=1 loops=1)
                                       Filter: ((kind)::text = 'cast'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=25.912..25.912 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=25.898..25.900 rows=1 loops=1)
                                 Filter: ((kind)::text = 'complete+verified'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
               ->  Hash  (cost=419.75..419.75 rows=901343 width=4) (actual time=557.743..557.743 rows=901343 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 39880kB
                     Buffers: shared read=11395
                     ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=7.292..293.358 rows=901343 loops=1)
                           Buffers: shared read=11395
         ->  Hash  (cost=2679.69..2679.69 rows=37708 width=19) (actual time=2746.197..2746.197 rows=50011 loops=1)
               Buckets: 65536  Batches: 1  Memory Usage: 3135kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2679.69 rows=37708 width=19) (actual time=1237.895..2721.474 rows=50011 loops=1)
                     Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                     Rows Removed by Filter: 4117480
                     Buffers: shared read=55613
 Planning Time: 18970.867 ms
 Execution Time: 29681.326 ms
(156 rows)

