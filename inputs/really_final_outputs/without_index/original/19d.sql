                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31322.21..31322.21 rows=1 width=64) (actual time=30436.385..30436.385 rows=1 loops=1)
   Buffers: shared hit=24 read=575763
   ->  Hash Join  (cost=15155.22..31322.14 rows=475 width=32) (actual time=22028.721..30046.114 rows=1760645 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=24 read=575763
         ->  Hash Join  (cost=13893.63..30059.98 rows=403 width=44) (actual time=20627.602..28306.149 rows=702993 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=16 read=553985
               ->  Hash Join  (cost=12072.33..28238.61 rows=832 width=48) (actual time=18896.340..26382.060 rows=741427 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=14 read=517540
                     ->  Hash Join  (cost=9051.28..25217.06 rows=4165 width=37) (actual time=15730.216..23029.357 rows=371852 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=10 read=450536
                           ->  Hash Join  (cost=9051.25..25212.52 rows=49983 width=41) (actual time=11802.361..22823.254 rows=1170967 loops=1)
                                 Hash Cond: (ci.movie_id = t.id)
                                 Buffers: shared hit=9 read=450536
                                 ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=0.017..10399.008 rows=867477 loops=1)
                                       Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                       Rows Removed by Filter: 35376867
                                       Buffers: shared hit=5 read=252649
                                 ->  Hash  (cost=9040.72..9040.72 rows=71736 width=25) (actual time=11801.745..11801.745 rows=1798330 loops=1)
                                       Buckets: 2097152 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 119425kB
                                       Buffers: shared hit=4 read=197887
                                       ->  Hash Join  (cost=1703.08..9040.72 rows=71736 width=25) (actual time=3329.785..11235.302 rows=1798330 loops=1)
                                             Hash Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=4 read=197887
                                             ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1606.692..8399.177 rows=3036719 loops=1)
                                                   Hash Cond: (mi.info_type_id = it.id)
                                                   Buffers: shared hit=3 read=161890
                                                   ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=9.020..5214.459 rows=14835720 loops=1)
                                                         Buffers: shared hit=2 read=161890
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.073..0.073 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.028..0.064 rows=1 loops=1)
                                                               Filter: ((info)::text = 'release dates'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1718.099..1718.099 rows=1381453 loops=1)
                                                   Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
                                                   Buffers: shared hit=1 read=35997
                                                   ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=10.600..1132.747 rows=1381453 loops=1)
                                                         Filter: (production_year > 2000)
                                                         Rows Removed by Filter: 1146859
                                                         Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.015 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=2990.52..2990.52 rows=208004 width=23) (actual time=3165.464..3165.464 rows=193486 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 12877kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2497.29..2990.52 rows=208004 width=23) (actual time=2603.690..3097.874 rows=193486 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.006..177.877 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2356.12..2356.12 rows=961739 width=19) (actual time=2601.265..2601.265 rows=961555 loops=1)
                                       Buckets: 1048576  Batches: 1  Memory Usage: 58170kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2356.12 rows=961739 width=19) (actual time=1092.728..2308.289 rows=961555 loops=1)
                                             Filter: ((gender)::text = 'f'::text)
                                             Rows Removed by Filter: 3205936
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1721.440..1721.440 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
                     Buffers: shared hit=2 read=36445
                     ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=6.022..842.396 rows=3140339 loops=1)
                           Buffers: shared hit=2 read=36445
         ->  Hash  (cost=1123.32..1123.32 rows=941996 width=4) (actual time=1398.471..1398.471 rows=1153798 loops=1)
               Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 56948kB
               Buffers: shared hit=5 read=21778
               ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=154.278..1074.919 rows=1153798 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=5 read=21778
                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..303.182 rows=2609129 loops=1)
                           Buffers: shared hit=3 read=18786
                     ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=153.941..153.941 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=0.177..123.072 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=2 read=2992
 Planning Time: 7531.085 ms
 Execution Time: 30446.992 ms
(90 rows)

