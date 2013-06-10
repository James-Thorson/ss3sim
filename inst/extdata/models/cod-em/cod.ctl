#V3.24f
#_data_and_control_files: data.dat // om.ctl
#_SS-V3.24f-safe-Lin64;_08/03/2012;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_11
1  #_N_Growth_Patterns
1 #_N_Morphs_Within_GrowthPattern 
#_Cond 1 #_Morph_between/within_stdev_ratio (no read if N_morphs=1)
#_Cond  1 #vector_Morphdist_(-1_in_first_val_gives_normal_approx)
#
#_Cond 0  #  N recruitment designs goes here if N_GP*nseas*area>1
#_Cond 0  #  placeholder for recruitment interaction request
#_Cond 1 1 1  # example recruitment design element for GP=1, seas=1, area=1
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1 dest=2, age1=4, age2=10
#
0 #_Nblock_Patterns
#_Cond 0 #_blocks_per_pattern 
# begin and end years of blocks
#
0.5 #_fracfemale 
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agespec_withseasinterpolate
  #_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_speciific_K; 4=not implemented
1 #_Growth_Age_for_L1
999 #_Growth_Age_for_L2 (999 to use as Linf)
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 logSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturity matrix by growth_pattern; 4=read age-fecundity; 5=read fec and wt from wtatage.ss
#_placeholder for empirical age-maturity by growth pattern
2 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)eggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=age-specific fxn
1 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-GP1, 3=like SS2 V1.x)
1 #_env/block/dev_adjust_method (1=standard; 2=logistic transform keeps in base parm bounds; 3=standard w/ no bound check)
#
#_growth_parms
#_LO HI INIT PRIOR PR_type SD PHASE env-var use_dev dev_minyr dev_maxyr dev_stddev Block Block_Fxn
 0.01 1.8 0.2 0.1 -1 0.8 -3 0 0 0 0 0 0 0 # NatM_p_1_Fem_GP_1
 10 80 20 30.8 -1 0.2 2 0 0 0 0 0 0 0 # L_at_Amin_Fem_GP_1
 25 250 132 120.1 -1 0.2 5 0 0 0 0 0 0 0 # L_at_Amax_Fem_GP_1
 0.01 2 0.2 0.25 -1 0.8 2 0 0 0 0 0 0 0 # VonBert_K_Fem_GP_1
 -0.01 0.5 0.1 0.1 -1 0.8 3 0 0 0 0 0 0 0 # CV_young_Fem_GP_1
 0.01 0.5 0.1 0.1 -1 0.8 5 0 0 0 0 0 0 0 # CV_old_Fem_GP_1
 0 3 6.8e-06 6.8e-06 -1 0 -1 0 0 0 0 0 0 0 # Wtlen_1_Fem
 2.5 3.5 3.101 3.101 -1 0.2 -3 0 0 0 0 0 0 0 # Wtlen_2_Fem
 10 50 38.18 0 -1 0 -3 0 0 0 0 0 0 0 # Mat50%_Fem
 -2 2 -0.276 0 -1 0 -3 0 0 0 0 0 0 0 # Mat_slope_Fem
 -3 3 1 0 -1 0 -3 0 0 0 0 0 0 0 # Eggs/kg_inter_Fem
 -3 4 0 0 -1 0 -3 0 0 0 0 0 0 0 # Eggs/kg_slope_wt_Fem
 -4 4 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_GP_1
 -4 4 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_Area_1
 -4 4 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_Seas_1
 -4 4 1 0 -1 0 -4 0 0 0 0 0 0 0 # CohortGrowDev
#
#_Cond 0  #custom_MG-env_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-environ parameters
#
#_Cond 0  #custom_MG-block_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-block parameters
#_Cond No MG parm trends 
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,malewtlen2,L1,K
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Cond -4 #_MGparm_Dev_Phase
#
#_Spawner-Recruitment
3 #_SR_function: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=survival_3Parm
#_LO HI INIT PRIOR PR_type SD PHASE
 10 25 18.7 10.3 -1 10 1 # SR_LN(R0)
 0.2 1 0.65 0.7 -1 0.05 -4 # SR_BH_steep
 0 2 0.4 0.8 -1 0.8 -5 # SR_sigmaR
 -5 5 0 0 -1 1 -3 # SR_envlink
 -5 5 0 0 -1 1 -4 # SR_R1_offset
 0 0 0 0 -1 0 -99 # SR_autocorr
0 #_SR_env_link
0 #_SR_env_target_0=none;1=devs;_2=R0;_3=steepness
1 #do_recdev:  0=none; 1=devvector; 2=simple deviations
1913 # first year of main recr_devs; early devs can preceed this era
2012 # last year of main recr_devs; forecast devs start in following year
3 #_recdev phase 
1 # (0/1) to read 13 advanced options
 0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
 4 #_recdev_early_phase
 0 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxphase+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 1913 #_last_early_yr_nobias_adj_in_MPD
 1938 #_first_yr_fullbias_adj_in_MPD
 2011 #_last_yr_fullbias_adj_in_MPD
 2012 #_first_recent_yr_nobias_adj_in_MPD
 0 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for all estimated recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -5 #min rec_dev
 5 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#DisplayOnly -0.747753 # Main_RecrDev_1913
#DisplayOnly -0.708049 # Main_RecrDev_1914
#DisplayOnly -0.219237 # Main_RecrDev_1915
#DisplayOnly 0.486174 # Main_RecrDev_1916
#DisplayOnly 0.180546 # Main_RecrDev_1917
#DisplayOnly -0.291795 # Main_RecrDev_1918
#DisplayOnly -1.00703 # Main_RecrDev_1919
#DisplayOnly 0.237452 # Main_RecrDev_1920
#DisplayOnly 0.482263 # Main_RecrDev_1921
#DisplayOnly -0.829056 # Main_RecrDev_1922
#DisplayOnly -0.552416 # Main_RecrDev_1923
#DisplayOnly -0.023989 # Main_RecrDev_1924
#DisplayOnly 0.560158 # Main_RecrDev_1925
#DisplayOnly 0.248721 # Main_RecrDev_1926
#DisplayOnly -1.11343 # Main_RecrDev_1927
#DisplayOnly 0.39318 # Main_RecrDev_1928
#DisplayOnly -0.0675312 # Main_RecrDev_1929
#DisplayOnly 0.425343 # Main_RecrDev_1930
#DisplayOnly -0.0360011 # Main_RecrDev_1931
#DisplayOnly 0.0334918 # Main_RecrDev_1932
#DisplayOnly 0.449167 # Main_RecrDev_1933
#DisplayOnly 0.660845 # Main_RecrDev_1934
#DisplayOnly -0.934538 # Main_RecrDev_1935
#DisplayOnly 0.171993 # Main_RecrDev_1936
#DisplayOnly 0.284233 # Main_RecrDev_1937
#DisplayOnly -0.287988 # Main_RecrDev_1938
#DisplayOnly 0.350578 # Main_RecrDev_1939
#DisplayOnly -0.477426 # Main_RecrDev_1940
#DisplayOnly -0.348517 # Main_RecrDev_1941
#DisplayOnly -0.251966 # Main_RecrDev_1942
#DisplayOnly 0.25761 # Main_RecrDev_1943
#DisplayOnly 0.410984 # Main_RecrDev_1944
#DisplayOnly -0.217554 # Main_RecrDev_1945
#DisplayOnly -0.172694 # Main_RecrDev_1946
#DisplayOnly 1.07194 # Main_RecrDev_1947
#DisplayOnly -0.158493 # Main_RecrDev_1948
#DisplayOnly 0.421679 # Main_RecrDev_1949
#DisplayOnly -0.199442 # Main_RecrDev_1950
#DisplayOnly -0.485792 # Main_RecrDev_1951
#DisplayOnly -0.12882 # Main_RecrDev_1952
#DisplayOnly -0.0375156 # Main_RecrDev_1953
#DisplayOnly 0.18659 # Main_RecrDev_1954
#DisplayOnly -0.0919981 # Main_RecrDev_1955
#DisplayOnly -0.169386 # Main_RecrDev_1956
#DisplayOnly 0.349925 # Main_RecrDev_1957
#DisplayOnly -0.0832807 # Main_RecrDev_1958
#DisplayOnly -0.0874513 # Main_RecrDev_1959
#DisplayOnly 0.194273 # Main_RecrDev_1960
#DisplayOnly 0.500981 # Main_RecrDev_1961
#DisplayOnly 0.235733 # Main_RecrDev_1962
#DisplayOnly 0.638397 # Main_RecrDev_1963
#DisplayOnly -0.292284 # Main_RecrDev_1964
#DisplayOnly -0.310452 # Main_RecrDev_1965
#DisplayOnly -0.149863 # Main_RecrDev_1966
#DisplayOnly -0.125458 # Main_RecrDev_1967
#DisplayOnly -0.469277 # Main_RecrDev_1968
#DisplayOnly 0.126662 # Main_RecrDev_1969
#DisplayOnly 0.739381 # Main_RecrDev_1970
#DisplayOnly -0.0134448 # Main_RecrDev_1971
#DisplayOnly -0.055343 # Main_RecrDev_1972
#DisplayOnly -0.343732 # Main_RecrDev_1973
#DisplayOnly -0.784003 # Main_RecrDev_1974
#DisplayOnly -0.538348 # Main_RecrDev_1975
#DisplayOnly -0.263626 # Main_RecrDev_1976
#DisplayOnly 0.113842 # Main_RecrDev_1977
#DisplayOnly -0.373084 # Main_RecrDev_1978
#DisplayOnly -0.404936 # Main_RecrDev_1979
#DisplayOnly 0.222611 # Main_RecrDev_1980
#DisplayOnly 0.482573 # Main_RecrDev_1981
#DisplayOnly 0.280278 # Main_RecrDev_1982
#DisplayOnly -0.163575 # Main_RecrDev_1983
#DisplayOnly 0.47135 # Main_RecrDev_1984
#DisplayOnly -0.00786683 # Main_RecrDev_1985
#DisplayOnly -0.276192 # Main_RecrDev_1986
#DisplayOnly -0.0400578 # Main_RecrDev_1987
#DisplayOnly -0.247524 # Main_RecrDev_1988
#DisplayOnly -0.0397246 # Main_RecrDev_1989
#DisplayOnly -0.162539 # Main_RecrDev_1990
#DisplayOnly -0.0745448 # Main_RecrDev_1991
#DisplayOnly -0.0415927 # Main_RecrDev_1992
#DisplayOnly -0.146784 # Main_RecrDev_1993
#DisplayOnly -0.0446577 # Main_RecrDev_1994
#DisplayOnly -0.00683973 # Main_RecrDev_1995
#DisplayOnly -0.236276 # Main_RecrDev_1996
#DisplayOnly -0.220035 # Main_RecrDev_1997
#DisplayOnly -0.125199 # Main_RecrDev_1998
#DisplayOnly -0.375964 # Main_RecrDev_1999
#DisplayOnly -0.381678 # Main_RecrDev_2000
#DisplayOnly -0.0571804 # Main_RecrDev_2001
#DisplayOnly 0.46517 # Main_RecrDev_2002
#DisplayOnly -0.477407 # Main_RecrDev_2003
#DisplayOnly 0.445669 # Main_RecrDev_2004
#DisplayOnly 0.329615 # Main_RecrDev_2005
#DisplayOnly 0.470537 # Main_RecrDev_2006
#DisplayOnly 0.190655 # Main_RecrDev_2007
#DisplayOnly -0.04916 # Main_RecrDev_2008
#DisplayOnly -0.0606566 # Main_RecrDev_2009
#DisplayOnly -0.114619 # Main_RecrDev_2010
#DisplayOnly -0.380754 # Main_RecrDev_2011
#DisplayOnly 0.19246 # Main_RecrDev_2012
#
#Fishing Mortality info 
0.3 # F ballpark for tuning early phases
-2001 # F ballpark year (neg value to disable)
3 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
4 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed inputs to read
4 # if Fmethod=3; read N iterations for tuning for Fmethod 3
# 0.2 1 1 # overall start F value; overall phase; N detailed inputs to read
#Fleet Year Seas F_value se phase (for detailed setup of F_Method=2)
#
#_initial_F_parms
#_LO HI INIT PRIOR PR_type SD PHASE
 0 2 0 0.01 0 99 -1 # InitF_1Fishery
#
#_Q_setup
 # Q_type options:  <0=mirror, 0=float_nobiasadj, 1=float_biasadj, 2=parm_nobiasadj, 3=parm_w_random_dev, 4=parm_w_randwalk, 5=mean_unbiased_float_assign_to_parm
#_for_env-var:_enter_index_of_the_env-var_to_be_linked
#_Den-dep  env-var  extra_se  Q_type
 0 0 0 2 # 1 Fishery
 0 0 0 2 # 2 SURVEY
 0 0 0 2 # 3 CPUE
#
#_Cond 0 #_If q has random component, then 0=read one parm for each fleet with random q; 1=read a parm for each year of index
#_Q_parms(if_any)
# LO HI INIT PRIOR PR_type SD PHASE
 -3 3 0 0 -1 99 -5 # Q_base_1_Fishery
 -3 3 0 0 -1 99 5 # Q_base_2_SURVEY
 -3 3 0 0 -1 99 5 # Q_base_3_CPUE
#
#_size_selex_types
#discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_discarded_dead
#_Pattern Discard Male Special
 1 0 0 0 # 1 Fishery
 1 0 0 0 # 2 SURVEY
 15 0 0 1 # 3 CPUE
#
#_age_selex_types
#_Pattern ___ Male Special
 10 0 0 0 # 1 Fishery
 10 0 0 0 # 2 SURVEY
 10 0 0 0 # 3 CPUE
#_LO HI INIT PRIOR PR_type SD PHASE env-var use_dev dev_minyr dev_maxyr dev_stddev Block Block_Fxn
 20 150 38.18 0 -1 99 2 0 0 0 0 0 0 0 # SizeSel_1P_1_Fishery
 0 300 10.63 0 -1 99 3 0 0 0 0 0 0 0 # SizeSel_1P_2_Fishery
 20 150 30.54 0 -1 99 2 0 0 0 0 0 0 0 # SizeSel_2P_1_SURVEY
 0 300 10.63 0 -1 99 2 0 0 0 0 0 0 0 # SizeSel_2P_2_SURVEY
#_Cond 0 #_custom_sel-env_setup (0/1) 
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no enviro fxns
#_Cond 0 #_custom_sel-blk_setup (0/1) 
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no block usage
#_Cond No selex parm trends 
#_Cond -4 # placeholder for selparm_Dev_Phase
#_Cond 0 #_env/block/dev_adjust_method (1=standard; 2=logistic trans to keep in base parm bounds; 3=standard w/ no bound check)
#
# Tag loss and Tag reporting parameters go next
0  # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
0 #_Variance_adjustments_to_input_values
#_fleet: 1 2 3 
#_Cond  0 0 0 #_add_to_survey_CV
#_Cond  0 0 0 #_add_to_discard_stddev
#_Cond  0 0 0 #_add_to_bodywt_CV
#_Cond  1 1 1 #_mult_by_lencomp_N
#_Cond  1 1 1 #_mult_by_agecomp_N
#_Cond  1 1 1 #_mult_by_size-at-age_N
#
4 #_maxlambdaphase
1 #_sd_offset
#
0 # number of changes to make to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=sizeage; 8=catch; 
# 9=init_equ_catch; 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag-comp; 16=Tag-negbin
#like_comp fleet/survey  phase  value  sizefreq_method
#
# lambdas (for info only; columns are phases)
#  0 0 0 0 #_CPUE/survey:_1
#  1 1 1 1 #_CPUE/survey:_2
#  1 1 1 1 #_CPUE/survey:_3
#  1 1 1 1 #_lencomp:_1
#  1 1 1 1 #_lencomp:_2
#  0 0 0 0 #_lencomp:_3
#  1 1 1 1 #_agecomp:_1
#  1 1 1 1 #_agecomp:_2
#  0 0 0 0 #_agecomp:_3
#  1 1 1 1 #_init_equ_catch
#  1 1 1 1 #_recruitments
#  1 1 1 1 #_parameter-priors
#  1 1 1 1 #_parameter-dev-vectors
#  1 1 1 1 #_crashPenLambda
0 # (0/1) read specs for more stddev reporting 
 # 0 1 -1 5 1 5 1 -1 5 # placeholder for selex type, len/age, year, N selex bins, Growth pattern, N growth ages, NatAge_area(-1 for all), NatAge_yr, N Natages
 # placeholder for vector of selex bins to be reported
 # placeholder for vector of growth ages to be reported
 # placeholder for vector of NatAges ages to be reported
999

