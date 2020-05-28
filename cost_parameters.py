#------------Postgres global parameters----------
SEQ_PAGE_COST = 0.031367007844			
RAND_PAGE_COST = 3.0602805697264			
CPU_TUPLE_COST = 0.0000691418225144			
CPU_INDEX_TUPLE_COST = 0.00003917852672	
CPU_OPERATOR_COST = 0.0000776397001419
#------------------------------------------------


#---------New Local Cost Parameters for predictions----------

#Join parameters
JOIN_PRED_EVAL_COST = 0.000012339

#NLJ parameters
NLJ_RESCAN_MAT_COST = 0.0000436
NLJ_RESCAN_NONMAT_COST = 0.00024806
NLJ_PROCESSING_COST = 0.000088841

#Sort parameters
SORT_COMPARISON_COST = 0.00000659238
SORT_RESCAN_NONMAT_COST = 0.000047749
SORT_MOVING_COST = 0.000019228

#SMJ parameters
SMJ_PROCESSING_COST = 0.0001728721
SMJ_EXTRA_PROCESSING_COST = 464

#Hash parameters
HASHING_COST = 0.000353545

#Group By paramters
GROUPBY_OUTPUT_COST = 0.000298512 #found from the group_by_hash plan
#----------------------------------------------------------