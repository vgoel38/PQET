                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14158.23..14158.23 rows=1 width=64) (actual time=13855.187..13855.188 rows=1 loops=1)
   Buffers: shared hit=23 read=245791
   ->  Hash Join  (cost=4598.85..14158.23 rows=1 width=27) (actual time=8091.179..13854.979 rows=618 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=23 read=245791
         ->  Hash Join  (cost=4540.11..14099.50 rows=1 width=31) (actual time=8005.085..13768.685 rows=618 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=18 read=244844
               ->  Hash Join  (cost=4540.08..14099.46 rows=1 width=35) (actual time=8005.059..13768.513 rows=618 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=17 read=244844
                     ->  Hash Join  (cost=0.05..9559.43 rows=3 width=4) (actual time=1561.872..8417.158 rows=1783 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared hit=3 read=161890
                           ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=314 width=8) (actual time=1561.749..8415.757 rows=1783 loops=1)
                                 Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                 Rows Removed by Filter: 14833937
                                 Buffers: shared hit=2 read=161890
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.076..0.077 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.032..0.066 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash  (cost=4536.81..4536.81 rows=21976 width=51) (actual time=5350.033..5350.033 rows=760449 loops=1)
                           Buckets: 1048576 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 67549kB
                           Buffers: shared hit=14 read=82954
                           ->  Hash Join  (cost=2924.37..4536.81 rows=21976 width=51) (actual time=3093.509..5099.436 rows=760449 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=14 read=82954
                                 ->  Hash Join  (cost=2783.51..4390.98 rows=60868 width=55) (actual time=2952.330..4455.460 rows=3282823 loops=1)
                                       Hash Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=12 read=79962
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.008..485.759 rows=4523930 loops=1)
                                             Buffers: shared hit=3 read=24451
                                       ->  Hash  (cost=2782.59..2782.59 rows=6278 width=47) (actual time=2734.514..2734.514 rows=23883 loops=1)
                                             Buckets: 32768 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 2028kB
                                             Buffers: shared hit=9 read=55511
                                             ->  Hash Join  (cost=1708.79..2782.59 rows=6278 width=47) (actual time=2002.098..2723.516 rows=23883 loops=1)
                                                   Hash Cond: (mc.movie_id = t.id)
                                                   Buffers: shared hit=9 read=55511
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.006..460.780 rows=2609129 loops=1)
                                                         Buffers: shared hit=3 read=18786
                                                   ->  Hash  (cost=1708.40..1708.40 rows=2636 width=35) (actual time=1822.725..1822.725 rows=1033 loops=1)
                                                         Buckets: 4096  Batches: 1  Memory Usage: 97kB
                                                         Buffers: shared hit=6 read=36725
                                                         ->  Hash Join  (cost=51.82..1708.40 rows=2636 width=35) (actual time=1221.324..1821.947 rows=1033 loops=1)
                                                               Hash Cond: (t.id = cc.movie_id)
                                                               Buffers: shared hit=6 read=36725
                                                               ->  Hash Join  (cost=0.03..1633.45 rows=197350 width=31) (actual time=68.055..1672.081 rows=274015 loops=1)
                                                                     Hash Cond: (t.kind_id = kt.id)
                                                                     Buffers: shared hit=3 read=35996
                                                                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=6.532..1347.646 rows=1381453 loops=1)
                                                                           Filter: (production_year > 2000)
                                                                           Rows Removed by Filter: 1146859
                                                                           Buffers: shared hit=2 read=35996
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=14) (actual time=0.030..0.030 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=0.016..0.021 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'movie'::text)
                                                                                 Rows Removed by Filter: 6
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=46.83..46.83 rows=33772 width=4) (actual time=82.215..82.215 rows=24592 loops=1)
                                                                     Buckets: 65536  Batches: 1  Memory Usage: 1377kB
                                                                     Buffers: shared hit=3 read=729
                                                                     ->  Hash Join  (cost=0.03..46.83 rows=33772 width=4) (actual time=19.695..73.986 rows=24592 loops=1)
                                                                           Hash Cond: (cc.status_id = cct1.id)
                                                                           Buffers: shared hit=3 read=729
                                                                           ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=8) (actual time=19.625..40.492 rows=135086 loops=1)
                                                                                 Buffers: shared hit=2 read=729
                                                                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.034..0.035 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.029..0.030 rows=1 loops=1)
                                                                                       Filter: ((kind)::text = 'complete+verified'::text)
                                                                                       Rows Removed by Filter: 3
                                                                                       Buffers: shared hit=1
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=140.264..140.265 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=4.899..110.680 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared hit=2 read=2992
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.010..0.010 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.005..0.005 rows=4 loops=1)
                           Buffers: shared hit=1
         ->  Hash  (cost=39.04..39.04 rows=134170 width=4) (actual time=85.443..85.443 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared hit=2 read=947
               ->  Seq Scan on keyword k  (cost=0.00..39.04 rows=134170 width=4) (actual time=0.081..49.312 rows=134170 loops=1)
                     Buffers: shared hit=2 read=947
 Planning Time: 9023.644 ms
 Execution Time: 13861.092 ms
(98 rows)

