                                                                          QUERY PLAN                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=24354.66..24354.66 rows=1 width=96) (actual time=20079.784..20079.784 rows=1 loops=1)
   Buffers: shared hit=21 read=413873
   ->  Hash Join  (cost=8209.17..24354.66 rows=1 width=49) (actual time=12154.799..20079.590 rows=121 loops=1)
         Hash Cond: (ci.person_role_id = chn.id)
         Buffers: shared hit=21 read=413873
         ->  Hash Join  (cost=6387.87..22533.35 rows=2 width=37) (actual time=10266.405..18191.100 rows=127 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=16 read=377428
               ->  Hash Join  (cost=3173.62..19319.10 rows=57 width=24) (actual time=7140.421..15076.147 rows=425 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=10 read=319653
                     ->  Hash Join  (cost=0.03..16137.11 rows=72136 width=12) (actual time=3906.510..11863.588 rows=276166 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=6 read=252649
                           ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=865636 width=16) (actual time=0.017..11636.826 rows=867477 loops=1)
                                 Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                 Rows Removed by Filter: 35376867
                                 Buffers: shared hit=5 read=252649
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.007 rows=1 loops=1)
                                       Filter: ((role)::text = 'actress'::text)
                                       Rows Removed by Filter: 11
                                       Buffers: shared hit=1
                     ->  Hash  (cost=3173.47..3173.47 rows=819 width=24) (actual time=3167.238..3167.238 rows=1558 loops=1)
                           Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 103kB
                           Buffers: shared hit=4 read=67004
                           ->  Hash Join  (cost=2680.24..3173.47 rows=819 width=24) (actual time=2616.309..3166.233 rows=1558 loops=1)
                                 Hash Cond: (an.person_id = n.id)
                                 Buffers: shared hit=4 read=67004
                                 ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.005..332.497 rows=901343 loops=1)
                                       Buffers: shared hit=2 read=11393
                                 ->  Hash  (cost=2679.69..2679.69 rows=3787 width=4) (actual time=2609.296..2609.296 rows=6768 loops=1)
                                       Buckets: 8192 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 302kB
                                       Buffers: shared hit=2 read=55611
                                       ->  Seq Scan on name n  (cost=0.00..2679.69 rows=3787 width=4) (actual time=1100.914..2605.144 rows=6768 loops=1)
                                             Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
                                             Rows Removed by Filter: 4160723
                                             Buffers: shared hit=2 read=55611
               ->  Hash  (cost=3207.44..3207.44 rows=46351 width=25) (actual time=3114.359..3114.359 rows=144120 loops=1)
                     Buckets: 262144 (originally 65536)  Batches: 1 (originally 1)  Memory Usage: 10692kB
                     Buffers: shared hit=6 read=57775
                     ->  Hash Join  (cost=2000.03..3207.44 rows=46351 width=25) (actual time=1975.948..3063.220 rows=144120 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=6 read=57775
                           ->  Hash Join  (cost=140.86..1339.64 rows=105777 width=4) (actual time=145.355..1072.545 rows=542096 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=292980 width=8) (actual time=0.014..773.198 rows=590994 loops=1)
                                       Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                       Rows Removed by Filter: 2018135
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=144.765..144.765 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.712..114.577 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=2 read=2992
                           ->  Hash  (cost=1696.56..1696.56 rows=1107888 width=21) (actual time=1823.838..1823.838 rows=1107888 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 75795kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1107888 width=21) (actual time=7.456..1316.013 rows=1107888 loops=1)
                                       Filter: ((production_year >= 2005) AND (production_year <= 2015))
                                       Rows Removed by Filter: 1420424
                                       Buffers: shared hit=1 read=35997
         ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=20) (actual time=1878.564..1878.564 rows=3140339 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
               Buffers: shared hit=2 read=36445
               ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=20) (actual time=7.904..870.118 rows=3140339 loops=1)
                     Buffers: shared hit=2 read=36445
 Planning Time: 5005.567 ms
 Execution Time: 20085.648 ms
(74 rows)

