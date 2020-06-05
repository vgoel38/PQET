                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=32911.80..32911.80 rows=1 width=64) (actual time=3962015.454..3962015.454 rows=1 loops=1)
   Buffers: shared hit=163257132 read=576184
   ->  Nested Loop  (cost=4647.54..32911.80 rows=1 width=32) (actual time=26722.626..3961995.472 rows=3575 loops=1)
         Join Filter: (n.id = an.person_id)
         Rows Removed by Join Filter: 2372331201
         Buffers: shared hit=163257132 read=576184
         ->  Nested Loop  (cost=4647.54..32359.76 rows=1 width=40) (actual time=26331.685..3532067.352 rows=2632 loops=1)
               Join Filter: (mi.movie_id = t.id)
               Rows Removed by Join Filter: 3497914248
               Buffers: shared hit=133276885 read=564791
               ->  Nested Loop  (cost=4647.54..30656.73 rows=1 width=35) (actual time=26266.298..2382154.139 rows=3054 loops=1)
                     Join Filter: (mc.movie_id = mi.movie_id)
                     Rows Removed by Join Filter: 2729883014
                     Buffers: shared hit=44442676 read=528794
                     ->  Nested Loop  (cost=4506.68..29395.14 rows=1 width=31) (actual time=18912.496..374587.872 rows=2366 loops=1)
                           Join Filter: (mi.movie_id = ci.movie_id)
                           Rows Removed by Join Filter: 2564605388
                           Buffers: shared hit=6686 read=507016
                           ->  Nested Loop  (cost=0.00..8472.87 rows=3937 width=4) (actual time=1517.200..8807.239 rows=451039 loops=1)
                                 Join Filter: (it.id = mi.info_type_id)
                                 Rows Removed by Join Filter: 65
                                 Buffers: shared hit=6673 read=162311
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.024 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                                 ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=444887 width=8) (actual time=688.357..8732.791 rows=451104 loops=1)
                                       Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                       Rows Removed by Filter: 14384616
                                       Buffers: shared hit=6672 read=162311
                           ->  Materialize  (cost=4506.68..20636.91 rows=323 width=27) (actual time=0.019..0.282 rows=5686 loops=451039)
                                 Buffers: shared hit=13 read=344705
                                 ->  Hash Join  (cost=4506.68..20636.86 rows=323 width=27) (actual time=8411.725..16518.425 rows=5686 loops=1)
                                       Hash Cond: (ci.person_role_id = chn.id)
                                       Buffers: shared hit=13 read=344705
                                       ->  Hash Join  (cost=2685.38..18815.50 rows=666 width=31) (actual time=6675.031..14777.813 rows=6552 loops=1)
                                             Hash Cond: (ci.role_id = rt.id)
                                             Buffers: shared hit=8 read=308260
                                             ->  Hash Join  (cost=2685.35..18814.75 rows=7989 width=35) (actual time=6674.997..14774.813 rows=6554 loops=1)
                                                   Hash Cond: (ci.person_id = n.id)
                                                   Buffers: shared hit=7 read=308260
                                                   ->  Seq Scan on cast_info ci  (cost=0.00..16059.00 rows=863678 width=16) (actual time=0.010..12000.070 rows=867477 loops=1)
                                                         Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                         Rows Removed by Filter: 35376867
                                                         Buffers: shared hit=5 read=252649
                                                   ->  Hash  (cost=2679.69..2679.69 rows=38551 width=19) (actual time=2601.963..2601.963 rows=50011 loops=1)
                                                         Buckets: 65536  Batches: 1  Memory Usage: 3135kB
                                                         Buffers: shared hit=2 read=55611
                                                         ->  Seq Scan on name n  (cost=0.00..2679.69 rows=38551 width=19) (actual time=1093.352..2575.261 rows=50011 loops=1)
                                                               Filter: ((name ~~ '%An%'::text) AND ((gender)::text = 'f'::text))
                                                               Rows Removed by Filter: 4117480
                                                               Buffers: shared hit=2 read=55611
                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on role_type rt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.011 rows=1 loops=1)
                                                         Filter: ((role)::text = 'actress'::text)
                                                         Rows Removed by Filter: 11
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=1360.36..1360.36 rows=3140339 width=4) (actual time=1726.273..1726.273 rows=3140339 loops=1)
                                             Buckets: 4194304  Batches: 1  Memory Usage: 143171kB
                                             Buffers: shared hit=2 read=36445
                                             ->  Seq Scan on char_name chn  (cost=0.00..1360.36 rows=3140339 width=4) (actual time=8.217..825.349 rows=3140339 loops=1)
                                                   Buffers: shared hit=2 read=36445
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=0.065..755.789 rows=1153798 loops=2366)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=44435990 read=21778
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.002..185.235 rows=2609129 loops=2366)
                                 Buffers: shared hit=44435988 read=18786
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=145.193..145.193 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=9.793..113.439 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=0.007..285.726 rows=1145356 loops=3054)
                     Filter: (production_year > 2000)
                     Rows Removed by Filter: 883339
                     Buffers: shared hit=88834209 read=35997
         ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=4) (actual time=0.002..65.110 rows=901343 loops=2632)
               Buffers: shared hit=29980247 read=11393
 Planning Time: 7278.709 ms
 Execution Time: 3962020.100 ms
(84 rows)

