
local _, c = UnitClass('player')
if c ~= 'DRUID' then return end

local WOWHEAD_SCORE = [[
720 1.536
776 0.979
867 3.048
888 1.91
944 3.054
1121 1.881
1156 0.223
1483 0.576
1489 0.96
1491 0.979
1718 3.426
1720 1.727
1721 0.96
1722 3.839
1935 1.228
1976 2.111
1978 1.939
2041 1.795
2059 0.653
2169 0.499
2194 0.576
2246 3.061
2262 1.651
2264 1.631
2276 2.121
2278 2.754
2933 1.065
2941 0.816
2951 2.015
3203 1.919
3413 0.576
4091 2.649
4253 0.979
4446 0.163
4454 0.816
5193 0.979
5197 1.152
5200 1.958
5254 1.305
5257 2.399
5267 1.631
5404 1.468
6314 0.816
6321 1.344
6323 1.536
6327 3.455
6340 0.979
6414 0.576
6448 1.257
6449 0.979
6468 0.816
6473 1.536
6679 2.61
6681 1.305
6690 4.424
6723 1.651
6804 1.152
6902 1.747
7230 2.764
7683 1.536
7686 2.236
7687 1.344
7690 1.747
7710 3.301
7713 0.998
7723 1.781
7727 1.228
7736 1.152
7752 1.344
7754 0.873
7755 2.591
7756 2.841
7758 3.647
7760 0.96
8346 1.142
8348 2.774
9240 1.536
9359 1.468
9375 2.708
9384 1.142
9391 1.651
9398 1.958
9406 1.344
9408 3.839
9413 3.754
9414 2.937
9416 4.098
9420 1.468
9427 2.188
9428 0.66
9449 3.887
9479 4.177
9480 5.672
9488 0.96
9509 2.284
9512 1.958
9533 2.121
9624 3.512
9651 1.536
9652 7.102
10399 1.257
10403 1.486
10410 2.428
10411 0.979
10412 0.816
10413 1.939
10571 0.96
10582 0.816
10583 4.635
10760 3.743
10769 1.098
10774 1.939
10799 2.879
10800 1.142
10804 1.152
10824 0.163
10838 2.111
11626 3.436
11675 3.714
11677 0.99
11685 4.633
11686 4.012
11735 3.946
11743 2.449
11747 1.113
11750 1.397
11755 1.152
11803 2.687
11805 0.96
11815 1.651
11821 5.643
11824 0.445
11866 1.536
11921 3.908
11925 5.403
11930 1.142
11933 2.641
12059 2.572
12103 0.891
12243 1.919
12344 1.9
12470 3.925
12544 0.768
12548 2.549
12552 2.447
12553 4.194
12587 5.29
12603 7.131
12608 1.597
12757 5.29
12776 2.226
12783 2.165
12793 5.25
12796 2.879
12927 4.207
12929 3.136
12963 6.426
12966 3.704
12967 1.697
12968 1.113
12983 0.768
12989 1.919
13006 1.919
13024 1.152
13026 1.42
13027 2.111
13045 3.382
13046 3.839
13047 2.687
13048 0.489
13055 4.415
13056 2.226
13059 4.616
13084 1.42
13087 0.768
13088 0.768
13089 3.081
13093 1.583
13095 1.651
13097 2.025
13098 2.718
13108 1.305
13109 1.958
13110 2.774
13114 2.284
13116 3.589
13117 3.196
13118 4.012
13120 3.215
13121 0.653
13122 2.447
13167 5.566
13177 2.121
13203 1.321
13204 1.727
13210 3.301
13252 5.134
13257 3.516
13261 1.597
13261 1.597
13283 1.198
13340 4.098
13358 3.752
13368 2.476
13372 5.566
13373 1.641
13378 4.616
13385 2.841
13385 2.841
13395 3.301
13397 2.649
13404 3.624
13503 5.326
13937 4.209
13944 4.714
13957 4.132
13962 3.125
13965 2.795
13968 2.795
14149 1.42
14151 0.489
14502 3.407
14503 3.551
14539 1.967
14636 3.301
14637 7.793
14638 4.292
14640 3.631
14641 1.981
15056 2.795
15057 2.795
15058 1.397
15062 5.194
15063 3.708
15064 2.111
15065 5.374
15411 3.543
16393 3.119
16397 4.261
16421 5.361
16422 5.747
16423 3.551
16424 5.226
16448 6.939
16449 4.971
16450 8.94
16451 8.336
16452 8.48
16459 5.25
16494 3.119
16496 4.261
16501 3.551
16502 5.747
16503 5.226
16504 5.361
16549 8.48
16550 8.336
16551 4.971
16552 8.94
16554 5.25
16555 6.939
16608 1.155
16707 5.758
16708 3.589
16709 6.382
16710 2.447
16711 3.426
16712 4.012
16713 4.012
16714 1.344
16719 4.453
16720 1.152
16721 4.242
16835 1.397
16897 1.397
16898 1.397
16977 1.305
16982 2.121
17044 2.476
17063 5.505
17065 1.727
17070 1.397
17073 10.729
17074 5.2
17102 3.589
17107 1.727
17111 2.121
17113 2.063
17193 10.152
17223 5.2
17713 2.764
17728 3.82
17739 1.631
17742 4.079
17749 4.53
18043 4.693
18044 0.816
18103 1.397
18203 0.653
18204 1.397
18205 1.397
18238 1.397
18298 2.111
18317 1.397
18325 3.426
18328 2.495
18344 1.631
18368 1.397
18374 4.261
18375 3.612
18376 1.344
18377 2.649
18381 2.447
18390 1.397
18399 1.91
18403 1.397
18404 4.468
18420 7.155
18490 1.397
18496 1.397
18500 3.56
18505 2.733
18506 3.752
18509 1.397
18511 2.774
18522 2.687
18534 1.397
18537 1.816
18541 4.415
18543 1.397
18544 5.75
18585 1.727
18671 0.96
18683 1.344
18689 2.303
18698 2.745
18699 1.795
18700 1.142
18701 2.447
18710 0.979
18716 2.121
18725 6.019
18734 1.536
18736 6.008
18744 2.121
18803 14.113
18805 3.048
18816 4.044
18821 4.833
18823 5.612
18838 9.073
18840 9.073
18842 3.956
18843 9.073
18844 9.073
18865 9.073
18866 9.073
18867 32.386
18868 32.386
18869 32.386
18871 32.386
18873 5.2
18874 5.2
18948 0.653
19044 4.031
19049 4.415
19083 1.981
19084 1.981
19089 3.743
19093 3.743
19095 1.486
19097 1.486
19099 1.631
19100 1.631
19101 0.908
19102 0.908
19104 2.879
19106 5.921
19113 2.649
19134 1.397
19146 4.607
19159 2.62
19163 4.568
19167 17.111
19323 14.117
19325 3.831
19335 1.727
19346 3.106
19355 5.117
19356 9.81
19357 27.409
19358 22.008
19365 5.626
19376 2.284
19377 7.008
19379 1.781
19381 5.858
19383 2.284
19384 5.075
19389 3.797
19390 1.397
19396 4.952
19398 4.127
19403 0.891
19405 7.678
19406 6.848
19432 5.893
19436 5.681
19439 2.311
19491 5.019
19510 4.098
19511 3.388
19512 2.841
19513 2.131
19514 4.098
19515 2.841
19516 3.388
19517 2.131
19534 2.447
19535 1.958
19536 1.795
19537 1.305
19538 2.447
19539 1.958
19540 1.795
19541 1.305
19542 2.121
19543 1.795
19544 1.305
19545 1.142
19546 2.121
19547 1.795
19548 1.305
19549 1.142
19587 5.211
19589 4.501
19590 3.82
19611 1.152
19612 1.152
19613 1.152
19685 6.334
19686 3.858
19687 3.397
19688 3.263
19689 2.495
19856 4.699
19857 0.891
19859 3.708
19869 4.203
19873 3.033
19874 8.914
19876 0.891
19884 3.184
19889 5.71
19890 1.397
19891 0.891
19891 0.891
19893 0.891
19896 1.397
19898 3.048
19905 0.891
19906 4.539
19907 3.234
19908 0.445
19909 0.743
19918 1.981
19922 1.397
19922 1.397
19925 3.397
19944 15.463
19945 6.426
19946 6.436
19963 4.127
19982 3.397
19984 4.369
19992 0.816
19998 2.795
20006 1.397
20045 4.203
20046 1.397
20052 3.278
20053 2.626
20059 5.413
20060 4.434
20068 3.622
20069 3.868
20070 1.397
20073 3.622
20083 1.397
20100 2.296
20101 1.474
20102 0.816
20103 1.397
20112 2.785
20113 1.8
20114 1.142
20115 3.048
20116 2.476
20117 1.981
20167 2.626
20168 1.474
20169 0.816
20170 2.296
20171 1.397
20174 1.397
20175 4.434
20186 3.278
20187 1.8
20188 1.142
20189 2.785
20190 4.203
20191 1.981
20192 2.476
20193 3.048
20194 5.413
20214 1.397
20216 6.248
20219 1.344
20220 3.868
20255 2.937
20259 4.276
20261 4.146
20429 1.42
20439 1.42
20441 0.653
20442 0.979
20443 0.653
20444 0.979
20505 1.344
20536 0.891
20556 4.43
20578 1.958
20580 2.146
20581 2.806
20615 2.641
20622 1.981
20623 4.985
20624 3.426
20627 6.756
20628 1.397
20632 1.397
20633 1.486
20657 1.981
20660 7.524
20665 1.397
20689 1.113
20691 3.983
20695 1.651
20696 5.866
20703 2.146
20715 4.827
20721 3.301
20964 1.651
21126 17.286
21128 5.117
21179 1.397
21182 3.662
21187 3.56
21188 11.708
21189 1.113
21196 1.919
21197 2.111
21198 2.303
21199 2.303
21200 2.495
21201 4.883
21202 5.046
21203 5.537
21204 5.702
21205 6.031
21244 10.681
21268 8.418
21273 8.956
21275 5.777
21278 3.01
21353 6.234
21354 5.163
21355 4.424
21356 5.658
21357 7.248
21407 18.791
21408 3.551
21409 3.608
21452 6.58
21455 9.06
21456 2.303
21458 2.111
21466 1.397
21467 6.305
21471 1.397
21471 1.397
21474 6.19
21477 3.589
21483 1.397
21491 4.367
21493 7.812
21494 1.397
21498 1.651
21501 4.559
21505 3.466
21506 2.687
21522 6.737
21532 5.269
21563 1.397
21586 7.793
21596 5.572
21597 2.288
21597 2.288
21601 1.958
21602 6.603
21605 6.881
21608 1.397
21621 4.127
21635 33.035
21645 4.693
21664 5.029
21665 7.965
21672 9.75
21673 6.927
21675 4.693
21677 4.699
21680 10.72
21682 4.693
21689 1.397
21693 6.363
21695 2.111
21700 4.098
21701 5.835
21702 1.981
21703 21.393
21708 1.486
21709 0.891
21710 6.353
21715 3.048
21789 1.468
21793 3.301
21802 1.397
21806 10.39
21809 4.046
21836 1.397
21837 3.643
22002 4.693
22003 3.916
22004 3.791
22005 8.134
22006 5.893
22007 6.958
22008 3.916
22009 7.284
22106 2.294
22107 3.445
22108 2.131
22109 4.155
22110 3.388
22111 4.645
22112 2.351
22113 4.539
22150 3.094
22204 3.359
22208 4.96
22241 4.885
22255 3.301
22269 2.774
22274 5.873
22314 5.71
22317 2.917
22322 1.397
22325 3.589
22326 1.397
22329 2.288
22329 2.288
22330 0.891
22331 1.344
22335 0.891
22337 3.263
22339 0.891
22340 3.56
22348 6.326
22377 2.121
22384 2.511
22403 0.891
22404 0.825
22409 1.397
22433 1.397
22458 1.397
22472 4.616
22476 10.511
22477 13.681
22478 12.257
22479 10.322
22480 7.793
22481 7.958
22482 9.727
22483 5.639
22659 3.378
22661 2.937
22662 2.937
22663 1.958
22668 4.367
22701 2.447
22712 2.311
22718 5.816
22722 3.301
22731 0.891
22732 1.113
22740 5.965
22741 5.854
22749 5.965
22750 5.854
22798 53.347
22799 12.946
22800 10.441
22801 7.263
22802 26.167
22804 16.134
22808 16.046
22809 34.664
22852 3.474
22863 4.127
22877 5.85
22878 5.658
22938 1.113
22954 2.511
22961 7.386
23001 2.795
23018 1.113
23020 2.937
23023 3.048
23025 2.288
23030 3.589
23031 0.891
23038 6.802
23039 46.457
23041 5.282
23044 15.948
23045 5.524
23049 2.288
23049 2.288
23050 2.288
23053 4.94
23057 2.795
23071 10.731
23073 5.384
23124 1.397
23127 3.551
23221 12.132
23226 10.472
23237 1.397
23253 5.029
23254 3.282
23280 4.127
23281 3.474
23294 5.85
23295 5.658
23308 5.029
23309 3.282
23451 1.397
23455 25.998
23465 25.998
23466 1.397
23544 37.305
23546 73.676
23554 2.096
23555 38.063
23763 9.493
23824 6.603
23829 11.048
24023 5.248
24044 24.43
24063 4.758
24069 4.486
24073 4.369
24087 4.798
24088 4.079
24094 19.823
24114 2.338
24116 4.376
24124 5.612
24128 4.457
24155 25.203
24222 1.486
24259 6.587
24356 4.142
24362 1.098
24365 5.489
24385 5.931
24396 9.096
24398 8.012
24453 1.336
24454 1.958
24461 28.701
24462 1.098
24464 5.294
24466 5.083
24557 21.942
25464 1.152
25538 5.38
25540 5.086
25562 6.85
25563 2.296
25603 36.566
25605 4.645
25606 1.597
25607 1.597
25608 36.566
25609 4.645
25680 7.831
25682 8.522
25685 7.259
25686 7.451
25687 9.57
25710 1.896
25712 4.923
25717 6.399
25760 9.349
25761 40.879
25763 13.263
25764 13.263
25773 10.459
25775 5.873
25777 1.597
25790 10.877
25803 3.263
25804 4.603
25809 3.263
25811 4.603
25821 10.012
25824 1.397
25826 1.397
25835 25.42
25838 6.363
25943 7.57
25946 7.221
25950 8.069
25962 6.476
27409 4.223
27412 5.447
27413 5.58
27415 11.91
27416 4.622
27417 3.647
27423 6.238
27431 1.298
27432 4.031
27434 6.507
27453 6.726
27460 6.211
27461 12.727
27463 23.843
27467 8.532
27468 5.768
27476 21.036
27492 2.096
27495 7.131
27509 10.098
27514 9.031
27519 6.562
27524 46.887
27531 6.541
27533 23.764
27543 1.781
27545 6.99
27546 6.269
27551 6.326
27637 6.217
27645 5.163
27648 4.981
27650 7.726
27712 6.564
27737 4.453
27740 6.372
27741 1.597
27757 50.923
27758 1.781
27760 7.553
27761 5.524
27762 5.935
27765 5.132
27776 7.545
27779 7.518
27783 1.996
27784 1.697
27787 9.689
27791 5.86
27797 8.666
27814 22.881
27818 1.896
27822 1.781
27825 8.173
27830 1.298
27831 7.724
27832 1.298
27833 1.298
27834 1.298
27837 9.484
27840 53.347
27842 11.607
27846 22.574
27867 8.626
27868 1.996
27873 7.409
27877 57.768
27878 7.311
27892 6.054
27901 17.167
27903 57.902
27904 6.276
27908 12.607
27911 9.273
27913 23.459
27914 1.996
27920 4.457
27921 4.457
27925 7.186
27938 12.167
27980 21.676
27981 1.336
27995 9.71
28030 1.298
28031 6.418
28032 6.154
28033 5.86
28034 3.194
28040 2.595
28041 2.595
28050 1.397
28051 9.069
28074 8.607
28121 3.34
28124 4.603
28126 8.858
28127 9.597
28128 12.409
28129 8.148
28130 9.405
28134 2.399
28168 5.532
28171 4.607
28172 12.186
28178 2.971
28182 11.084
28187 1.336
28187 1.336
28188 12.286
28202 7.572
28204 9.025
28206 4.292
28210 23.472
28220 1.781
28223 2.783
28224 8.821
28226 23.706
28227 2.511
28244 3.969
28246 4.238
28249 7.159
28253 55.06
28254 1.597
28260 1.896
28260 1.896
28264 9.19
28269 1.397
28288 5.282
28299 85.564
28300 82.726
28305 46.737
28312 46.737
28313 46.985
28321 1.781
28323 5.298
28325 56.484
28339 5.198
28341 13.868
28343 6.718
28345 23.593
28347 11.401
28348 5.912
28371 5.743
28377 5.033
28380 5.033
28392 23.9
28393 50.338
28394 1.397
28396 7.541
28412 2.633
28412 2.633
28414 7.942
28416 23.551
28418 2.994
28422 8.378
28423 8.378
28424 5.119
28437 34.004
28438 41.927
28439 49.438
28440 76.441
28441 86.758
28442 98.273
28443 8.522
28444 8.522
28445 5.192
28476 84.539
28506 9.177
28509 8.622
28514 6.322
28524 43.789
28529 6.772
28530 1.67
28545 9.81
28553 5.516
28555 1.336
28561 7.054
28572 40.102
28574 7.188
28579 3.896
28584 42.653
28601 15.914
28603 1.697
28603 1.697
28604 14.774
28618 6.036
28619 7.812
28620 8.004
28622 6.036
28623 6.392
28633 17.334
28649 8.568
28657 42.589
28658 83.43
28669 9.163
28672 8.614
28674 7.223
28730 7.186
28732 16.472
28734 2.338
28734 2.338
28741 13.62
28745 8.964
28750 7.724
28753 1.896
28755 8.33
28757 8.042
28762 2.296
28764 5.777
28766 2.004
28768 48.714
28770 2.296
28774 75.023
28776 8.537
28777 7.017
28782 16.259
28791 8.372
28793 1.781
28796 14.576
28797 2.296
28800 83.551
28811 6.036
28812 7.812
28813 7.812
28814 6.036
28815 6.392
28828 8.438
28830 3.301
28917 54.493
28919 54.658
28923 53.741
28924 23.812
28925 23.894
28928 23.894
28929 23.812
28930 23.894
28931 1.447
28935 14.712
28942 54.493
28948 54.658
28949 53.741
28950 23.812
28951 23.894
28953 23.894
28954 23.812
28955 23.894
28957 1.447
28959 14.712
28976 8.522
28977 8.522
28978 5.192
28986 8.378
28987 8.378
28988 5.119
29091 2.115
29092 1.797
29093 2.395
29094 2.495
29096 13.608
29097 11.363
29098 13.253
29099 14.914
29100 11.392
29116 10.831
29119 9.069
29121 36.774
29125 33.797
29126 1.198
29128 6.073
29130 13.871
29131 10.488
29132 3.562
29133 9.161
29138 56.012
29141 1.797
29142 1.797
29147 10.71
29148 10.71
29150 3.647
29158 2.486
29166 58.353
29167 58.353
29171 61.353
29172 2.338
29177 8.177
29179 3.194
29182 35.944
29246 7.712
29247 11.417
29248 9.514
29263 6.967
29264 9.587
29265 9.098
29269 1.336
29269 1.336
29270 1.697
29270 1.697
29280 5.47
29281 6.576
29282 6.964
29283 7.405
29284 1.198
29285 1.497
29286 1.697
29287 1.697
29298 8.205
29299 9.027
29300 9.683
29301 9.683
29302 2.096
29303 2.196
29304 2.395
29305 2.395
29314 1.198
29318 3.466
29320 1.697
29321 2.971
29329 53.296
29332 8.441
29333 2.096
29335 5.474
29340 7.516
29343 1.597
29346 40.244
29348 33.261
29349 5.8
29353 1.597
29355 17.311
29357 8.539
29359 73.635
29360 38.213
29367 1.996
29369 2.196
29379 6.092
29381 8.733
29382 7.714
29383 5.942
29386 3.1
29457 0.599
29502 14.148
29503 8.848
29504 3.693
29507 11.739
29522 1.896
29523 1.597
29524 1.198
29525 16.449
29526 10.196
29527 7.729
29813 0.599
29815 6.228
29947 12.835
29962 51.298
29964 5.875
29966 8.207
29973 11.739
29981 17.91
29988 24.321
29994 10.18
29995 18.628
29996 56.701
29997 9.42
30010 51.119
30011 12.263
30012 9.372
30013 19.973
30014 10.175
30015 2.395
30017 10.182
30021 81.626
30022 8.438
30039 11.202
30040 12.672
30041 13.113
30042 9.971
30049 2.296
30049 2.296
30052 10.157
30055 13.046
30058 50.006
30059 7.578
30060 11.639
30061 9.568
30073 2.146
30089 10.399
30090 91.305
30093 33.179
30098 10.086
30099 2.004
30101 14.192
30103 59.451
30106 13.622
30109 2.196
30222 15.518
30223 12.591
30228 15.355
30229 18.664
30230 12.265
30231 3.812
30232 2.395
30233 3.608
30234 2.595
30235 1.67
30257 13.246
30297 1.797
30365 8.359
30366 0.998
30369 9.463
30372 9.94
30535 11.392
30538 9.869
30626 3.992
30627 4.906
30644 11.353
30667 1.896
30674 11.094
30707 5.221
30710 6.154
30723 2.898
30729 7.946
30730 12.756
30732 15.681
30735 1.896
30736 2.296
30738 8.683
30787 1.996
30830 69.791
30832 1.497
30834 6.305
30860 7.687
30863 8.917
30865 60.727
30872 4.188
30872 4.188
30879 12.9
30883 95.161
30891 11.873
30898 18.426
30901 57.305
30905 16.568
30908 21.211
30914 2.764
30917 13.136
30918 2.296
30933 12.843
30939 9.551
30943 8.743
30944 6.286
30973 7.361
30999 18.879
31009 51.205
31034 12.706
31035 3.432
31036 9.18
31038 6.685
31039 17.841
31040 4.342
31042 17.841
31043 4.388
31044 21.662
31046 4.322
31048 14.012
31049 2.856
31073 19.906
31075 0.998
31076 6.372
31077 7.687
31109 10.315
31110 2.395
31126 7.678
31131 8.269
31139 3.701
31140 1.113
31142 1.497
31143 5.628
31145 10.628
31147 6.564
31148 7.618
31175 4.127
31178 2.296
31186 24.1
31190 7.841
31193 5.53
31226 6.948
31237 9.29
31255 7.177
31275 8.228
31277 6.885
31281 11.712
31285 12.457
31288 9.658
31289 7.676
31290 2.096
31295 10.127
31299 54.098
31305 23.551
31308 13.683
31321 4.415
31322 64.906
31326 6.727
31331 30.702
31333 12.954
31334 64.294
31380 7.524
31381 4.875
31382 2.894
31417 7.676
31464 9.38
31492 21.633
31494 1.497
31494 1.497
31544 14.549
31545 10.729
31692 0.998
31694 7.246
31695 6.737
31718 9.699
31727 5.088
31745 19.478
31748 3.797
31756 5.198
31758 1.896
31759 6.75
31919 6.939
31920 7.413
31922 1.996
31959 97.616
31967 9.626
31968 11.315
31969 12.985
31971 9.184
31972 10.691
32014 96.488
32025 94.154
32026 54.758
32028 54.758
32044 54.758
32053 1.67
32055 25.186
32080 9.169
32081 4.952
32087 12.284
32088 10.461
32235 21.407
32237 2.196
32238 2.395
32247 5.01
32248 107.234
32252 16.868
32260 10.975
32261 2.338
32262 56.536
32265 13.518
32266 10.328
32269 59.795
32323 10.23
32324 10.691
32328 2.841
32331 2.495
32332 104.741
32335 9.904
32339 2.841
32344 19.23
32347 13.518
32349 4.065
32351 2.115
32352 2.595
32361 2.672
32361 2.672
32362 2.226
32366 12.864
32370 1.896
32374 29.027
32377 13.501
32471 64.459
32478 15.328
32480 4.092
32483 2.783
32497 10.238
32505 9.159
32508 3.426
32524 2.457
32526 7.827
32527 2.38
32528 2.303
32532 6.15
32533 1.198
32533 1.198
32536 19.395
32539 6.739
32540 7.232
32580 9.463
32581 13.756
32582 2.15
32583 2.917
32589 2.395
32590 2.004
32591 7.793
32593 13.656
32647 6.729
32659 24.574
32661 24.18
32662 11.756
32664 1.497
32665 4.443
32769 7.898
32770 3.393
32771 3.393
32779 1.697
32781 24.081
32786 9.424
32790 9.298
32798 9.424
32802 9.298
32810 6.583
32814 5.975
32829 44.155
32830 7.676
32854 13.536
32941 1.597
32942 8.568
32943 60.063
32944 55.975
32946 58.808
32963 1.67
33055 4.127
33057 5.662
33058 2.096
33066 5.263
33067 1.797
33122 6.81
33204 13.559
33211 11.848
33222 12.132
33281 2.534
33283 2.226
33296 4.787
33297 6.046
33298 52.288
33300 12.777
33304 1.597
33329 17.353
33334 1.305
33334 1.305
33354 3.443
33389 55.384
33465 91.927
33466 2.073
33468 2.303
33479 15.965
33484 7.163
33490 17.415
33493 50.449
33494 20.509
33495 51.605
33496 10.806
33497 4.23
33498 2.303
33538 17.238
33539 12.426
33540 8.697
33559 2.196
33566 2.196
33577 2.226
33578 1.996
33579 17.944
33580 8.58
33582 10.95
33583 12.138
33590 8.979
33591 1.919
33592 1.919
33663 107.914
33671 12.173
33672 16.198
33673 16.547
33674 12.349
33675 15.015
33687 1.893
33716 106.081
33727 103.896
33733 62.067
33737 62.067
33754 62.067
33763 1.893
33766 24.647
33767 1.198
33768 1.697
33769 2.196
33770 0.798
33771 1.298
33831 7.428
33832 6.603
33879 12.585
33880 12.585
33881 9.908
33891 10.582
33892 10.582
33893 7.422
33919 6.871
33920 2.096
33923 6.322
33971 3.094
33972 2.994
33973 2.894
33974 1.919
34009 2.449
34010 2.783
34075 4.952
34162 3.992
34163 3.992
34165 71.365
34166 1.689
34169 4.891
34176 2.303
34177 11.664
34178 3.228
34179 2.457
34179 2.457
34182 32.411
34183 121.332
34184 1.536
34188 23.065
34189 10.495
34190 3.117
34195 18.01
34197 71.29
34198 122.653
34204 4.127
34206 1.689
34206 1.689
34209 2.303
34211 24.474
34212 2.534
34213 2.449
34230 4.576
34234 15.76
34241 12.641
34242 2.457
34244 23.365
34329 78.217
34331 75.547
34335 1.766
34336 4.76
34337 26.474
34353 21.207
34358 8.787
34359 4.415
34360 1.919
34361 11.831
34362 4.418
34363 2.303
34369 23.013
34370 17.09
34372 2.917
34385 20.43
34391 2.303
34392 17.466
34397 22.967
34398 2.534
34403 3.693
34404 21.547
34407 2.994
34408 15.221
34417 3.282
34423 4.127
34427 4.146
34428 6.012
34429 4.146
34444 11.182
34445 0.921
34446 2.91
34472 4.898
34540 27.764
34554 0.998
34555 6.415
34556 16.572
34571 1.459
34572 3.793
34573 15.434
34576 3.992
34577 3.992
34578 6.603
34604 1.382
34606 41.829
34608 14.774
34611 2.004
34613 13.388
34625 1.075
34665 25.132
34670 1.225
34679 8.219
34680 3.451
34701 11.071
34702 1.382
34704 1.382
34706 1.893
34708 5.854
34790 1.152
34792 1.447
34797 12.052
34798 4.683
34809 10.806
34837 7.812
34887 10.969
34889 3.117
34893 64.624
34894 61.737
34898 108.184
34903 3.593
34904 1.67
34905 2.795
34906 18.743
34910 17.86
34911 13.618
34927 19.217
34928 18.939
34929 14.545
34987 27.783
34989 116.541
34998 14.038
34999 18.574
35000 19.023
35001 14.169
35002 17.443
35014 2.115
35064 112.301
35071 68.221
35076 68.221
35093 68.056
35103 114.848
35109 24.221
35111 1.597
35112 2.196
35113 2.695
35114 1.298
35115 1.797
35129 1.075
35131 7.931
35132 2.395
35135 7.382
35137 14.405
35141 12.393
35152 14.405
35156 12.393
35167 11.273
35171 8.706
35182 5.39
35282 2.795
35284 7.582
35290 1.896
35292 7.582
35317 1.766
35319 1.612
35320 2.303
35321 1.228
35324 1.228
35326 3.071
35327 3.071
35356 6.036
35357 7.812
35358 7.812
35359 6.036
35360 6.392
35469 6.392
35495 7.714
35497 2.196
35507 8.733
35511 2.115
35514 14.196
35570 6.768
35573 55.806
35575 18.311
35579 10.478
35583 122.726
35587 12.875
35589 2.303
35591 17.658
35595 61.073
35606 63.946
35607 3.793
35610 8.921
35613 14.165
35630 71.079
35633 56.651
35634 20.693
35647 17.388
35649 129.612
35655 63.311
35658 42.422
35659 14.919
35661 5.758
35666 2.695
35676 22.309
35677 5.29
35680 6.91
35681 79.209
35683 9.536
35694 6.933
35702 6.603
35751 8.914
36871 3.378
36874 3.301
36944 86.52
36947 14.067
36948 4.376
36951 19.184
36961 7.662
36975 63.303
36978 18.534
36979 14.71
36980 140.217
36983 3.228
36996 23.875
37000 3.793
37037 87.092
37051 2.917
37051 2.917
37053 7.294
37057 24.464
37058 2.917
37064 4.99
37067 17.793
37070 5.09
37083 5.19
37084 7.102
37086 3.793
37086 3.793
37096 15.313
37099 71.163
37106 5.09
37112 24.701
37117 15.33
37134 4.342
37134 4.342
37139 20.069
37151 12.829
37165 25.714
37166 6.123
37169 38.873
37180 4.491
37181 99.75
37183 14.774
37186 8.253
37190 153.693
37192 3.762
37194 23.023
37197 8.061
37219 34.641
37232 4.292
37236 4.914
37243 18.869
37257 8.061
37261 4.376
37264 5.681
37291 3.225
37293 24.33
37360 95.232
37366 17.342
37371 3.301
37374 25.539
37377 45.486
37384 74.821
37389 7.386
37390 7.386
37397 13.313
37409 26.073
37461 97.781
37591 8.253
37593 19.633
37595 4.787
37597 43.789
37617 74.656
37624 15.294
37631 98.221
37634 4.292
37636 29.823
37642 19.921
37643 5.067
37644 35.165
37646 8.445
37647 14.91
37651 8.979
37652 5.789
37657 5.605
37660 7.286
37666 23.267
37667 115.127
37678 19.72
37681 23.274
37685 16.896
37689 8.253
37693 115.532
37694 3.839
37696 3.593
37714 22.098
37718 3.225
37718 3.225
37723 12.215
37728 8.733
37733 160.526
37745 2.61
37748 2.296
37751 3.647
37756 2.296
37758 3.555
37762 9.562
37763 3.194
37764 11.34
37765 3.148
37766 10.472
37767 19.912
37768 21.359
37769 4.092
37770 23.004
37771 2.096
37784 6.142
37791 6.91
37794 6.142
37796 4.031
37797 7.198
37802 54.804
37803 38.626
37804 97.543
37805 16.177
37806 50.919
37808 58.386
37812 103.833
37813 101.109
37817 1.152
37817 1.152
37819 7.697
37821 2.096
37823 10.061
37840 14.628
37841 18.768
37846 20.004
37848 162.315
37853 17.889
37856 92.952
37858 4.453
37861 16.021
37869 4.192
37873 8.127
37883 181.486
37890 26.858
37927 2.61
37928 1.843
37929 1.996
38218 7.885
38221 7.255
38223 2.226
38226 8.526
38227 1.996
38228 1.893
38230 1.996
38231 8.526
38232 1.893
38238 48.303
38239 36.125
38240 31.81
38242 49.006
38250 1.536
38251 7.937
38252 1.996
38257 4.292
38259 7.263
38287 5.942
38322 1.597
38322 1.597
38353 8.077
38354 2.994
38355 5.182
38359 8.088
38441 6.614
38454 64.002
38455 64.002
38458 2.38
38458 2.38
38459 2.38
38459 2.38
38461 66.8
38465 66.8
38532 11.488
38537 8.536
38543 9.509
38590 15.929
38591 20.549
38592 21.559
38614 14.14
38616 5.789
38617 8.445
38618 152.697
38662 3.85
38664 4.276
38671 3.501
38672 4.123
38674 1.996
39140 116.687
39141 10.077
39146 21.029
39171 13.568
39177 18.061
39183 10.848
39191 2.764
39193 3.294
39196 26.399
39199 3.117
39199 3.117
39215 2.457
39221 187.599
39224 37.77
39225 10.603
39226 116.777
39230 3.793
39231 3.593
39232 2.764
39237 27.148
39240 2.764
39241 3.117
39244 7.14
39245 181.309
39246 9.597
39247 19.662
39250 2.764
39255 177.854
39256 82.086
39257 8.384
39259 3.593
39271 38.171
39272 1.919
39275 4.791
39277 19.762
39279 25.367
39281 35.177
39282 4.99
39283 2.226
39297 17.837
39299 24.461
39308 2.917
39311 3.793
39311 3.793
39320 4.276
39322 4.276
39386 31.774
39389 7.988
39392 2.534
39394 74.676
39399 30.449
39401 18.161
39404 21.044
39407 2.61
39415 5.712
39416 133.296
39420 134.324
39421 21.474
39422 206.904
39423 47.756
39424 50.879
39425 3.793
39427 117.689
39470 9.213
39472 6.549
39475 1.996
39478 8.518
39483 2.595
39484 9.282
39485 4.607
39538 2.764
39539 3.593
39542 2.894
39543 2.303
39544 4.791
39545 9.298
39546 5.19
39547 9.382
39548 6.837
39553 29.697
39554 32.253
39555 32.509
39556 23.132
39557 23.336
39648 9.121
39650 6.334
39652 7.908
39653 1.843
39655 6.722
39678 9.785
39701 31.628
39714 135.257
39722 4.092
39727 31.15
39756 4.453
39758 205.472
39761 40.094
39763 47.415
39765 20.058
39766 2.457
39766 2.457
39768 5.789
40063 3.685
40064 3.117
40065 22.852
40069 11.37
40071 2.457
40074 22.169
40075 19.893
40080 4.192
40107 10.749
40108 3.793
40186 23.647
40189 135.443
40192 4.292
40192 4.292
40200 4.292
40205 29.793
40208 208.445
40233 206.115
40238 4.292
40243 27.276
40244 45.376
40249 6.687
40250 21.662
40251 5.942
40252 10.749
40253 3.693
40254 3.793
40255 7.904
40256 9.24
40260 30.885
40264 135.223
40270 3.793
40273 6.71
40273 6.71
40277 36.887
40280 201.107
40281 133.741
40285 4.99
40291 21.359
40296 39.384
40300 95.169
40304 2.61
40305 29.067
40319 37.344
40323 2.841
40329 32.499
40333 39.117
40341 4.376
40348 104.491
40349 3.225
40350 4.092
40350 4.092
40353 4.614
40362 27.236
40368 133.741
40369 22
40370 11.37
40371 15.681
40373 9.482
40374 6.841
40375 2.687
40378 4.292
40379 4.683
40382 9.482
40383 154.109
40386 154.288
40387 12.856
40388 238.66
40395 54.608
40399 7.355
40403 24.522
40405 4.192
40406 212.929
40408 46.194
40409 4.607
40410 10.749
40412 2.795
40426 10.138
40427 6.944
40429 117.163
40433 2.457
40437 29.232
40439 8.545
40455 94.355
40460 2.687
40462 4.192
40463 3.225
40465 3.493
40466 5.29
40467 10.764
40468 5.789
40469 10.772
40470 8.119
40471 36.72
40472 26.866
40473 33.758
40474 23.787
40486 3.693
40488 44.102
40489 113.969
40493 36.743
40494 26.493
40497 213.148
40519 8.392
40531 7.681
40539 43.745
40541 36.386
40585 5.743
40586 19.411
40594 4.891
40678 19.388
40679 10.207
40680 2.783
40681 3.393
40682 8.384
40684 8.384
40694 24.921
40695 3.992
40698 6.726
40698 6.726
40699 1.919
40699 1.919
40717 21.021
40718 12.637
40719 3.301
40720 2.795
40721 20.56
40722 11.432
40723 3.148
40724 2.15
40738 21.171
40748 26.931
40757 12.946
41183 67.537
41184 71.345
41185 72.411
41188 131.998
41238 5.95
41257 181.921
41278 3.094
41279 3.593
41280 4.192
41290 2.196
41291 2.695
41292 3.194
41301 3.593
41302 4.392
41303 5.09
41313 3.593
41314 4.392
41315 5.09
41324 3.593
41325 4.392
41326 5.09
41383 117.372
41384 35.33
41587 4.607
41588 5.988
41589 9.904
41591 2.595
41592 8.668
41608 2.073
41610 8.361
41628 3.593
41629 4.192
41633 3.593
41634 4.192
41638 3.393
41639 3.793
41658 20.146
41659 23.729
41660 27.213
41664 20.146
41665 23.729
41666 27.213
41675 17.505
41676 21.088
41677 24.572
41712 15.939
41713 18.503
41714 21.395
41770 15.14
41771 17.605
41772 20.132
41815 128.036
41821 59.19
41822 13.403
41824 75.766
41825 77.745
41827 18.503
41828 18.503
41829 19.647
41830 15.578
41831 21.23
41835 21.23
41836 24.286
41839 17.716
41891 19.651
41987 121.601
42020 11.647
42021 12.038
42022 3.393
42023 2.61
42024 3.785
42027 13.036
42028 13.474
42029 3.793
42030 4.23
42031 2.917
42055 3.393
42056 2.61
42057 3.785
42060 11.647
42061 12.038
42062 3.793
42063 2.917
42064 4.23
42067 13.036
42068 13.474
42083 5.39
42110 3.393
42112 11.647
42114 4.23
42115 13.474
42128 9.482
42129 10.576
42130 7.294
42131 15.681
42216 94.468
42218 94.716
42222 94.716
42241 111.127
42242 127.355
42259 111.292
42260 127.768
42274 111.292
42275 127.768
42295 150.202
42296 150.202
42321 172.871
42322 195.111
42326 172.871
42327 195.111
42338 7.179
42339 1.689
42343 26.069
42344 23.274
42345 35.464
42346 44.612
42351 32.271
42352 41.019
42356 74.925
42359 89.441
42362 103.81
42382 68.338
42383 81.956
42384 95.326
42388 83.083
42389 98.741
42390 190.678
42395 4.676
42418 6.933
42435 113.386
42443 13.812
42523 2.894
42523 2.894
42524 3.393
42524 3.393
42525 3.793
42525 3.793
42550 28.417
42554 7.286
42642 15.622
42643 9.597
42644 4.192
42645 15.702
42646 9.405
42647 4.092
42731 26.298
42761 13.576
42762 13.896
42987 17.274
42990 8.484
43076 12.57
43077 8.958
43078 10.823
43079 14.727
43161 3.593
43165 16.307
43172 17.537
43177 2.672
43178 10.177
43179 6.526
43182 14.146
43189 3.785
43190 6.883
43191 12.712
43192 2.073
43194 16.812
43207 24.344
43211 17.403
43247 5.969
43250 7.294
43251 12.276
43252 6.18
43253 7.344
43255 18.324
43256 18.067
43257 5.29
43258 2.841
43260 23.441
43277 10.503
43282 8.061
43285 4.192
43286 20.28
43305 2.672
43306 7.217
43309 10.764
43312 17.476
43358 2.687
43363 6.914
43403 17.079
43406 14.866
43407 96.382
43408 3.301
43409 155.729
43433 17.326
43434 23.441
43435 13.084
43436 17.326
43437 17.326
43438 23.441
43439 16.501
43481 24.273
43482 5.935
43484 25.893
43498 2.534
43565 10.207
43566 15.086
43573 5.605
43613 102.259
43656 1.155
43656 1.155
43657 0.845
43657 0.845
43660 0.898
43660 0.898
43661 1.559
43661 1.559
43663 0.898
43663 0.898
43667 1.923
43667 1.923
43988 9.248
43990 31.985
43991 5.19
43992 2.595
43993 17.858
44005 6.618
44007 3.225
44011 40.914
44013 5.39
44014 4.607
44017 2.783
44020 3.393
44023 2.495
44023 2.495
44024 18.666
44025 11.457
44026 6.526
44028 76.1
44033 12.14
44035 6.526
44036 11.739
44039 11.324
44044 21.013
44051 86.152
44052 19.046
44053 140.996
44054 19.831
44055 4.299
44073 5.451
44074 7.086
44106 18.754
44117 28.221
44166 87.092
44167 2.917
44173 29.885
44174 144.846
44179 28.706
44181 4.092
44188 8.733
44190 17.793
44193 101.44
44194 7.785
44199 27.589
44203 20.04
44210 3.194
44210 3.194
44213 1.969
44215 0.499
44216 12.67
44217 1.795
44242 3.228
44244 154.466
44253 14.683
44283 2.764
44297 25.737
44303 34.695
44308 15.008
44310 108.278
44322 3.839
44324 13.244
44334 3.493
44335 11.495
44337 6.526
44339 1.896
44342 20.106
44351 15.752
44356 21.923
44359 14.142
44364 14.359
44367 9.745
44371 2.595
44374 2.073
44375 8.353
44376 3.006
44377 5.182
44379 15.344
44386 1.075
44387 2.115
44388 11.616
44391 6.526
44392 2.595
44397 18.171
44401 8.516
44402 5.286
44403 2.595
44405 23.726
44409 26.639
44415 73.405
44416 75.685
44417 87.714
44418 90.305
44419 101.852
44420 104.789
44429 3.278
44505 75.271
44579 4.99
44583 18.82
44594 18.82
44597 4.99
44657 2.994
44658 6.18
44659 19.873
44660 10.749
44661 6.975
44662 3.493
44664 22.522
44665 12.092
44708 135.507
44734 70.935
44746 73.084
44747 11.962
44748 60.693
44891 4.008
44892 2.764
44893 17.812
44906 3.378
44907 4.898
44908 20.244
44930 6.587
44931 8.883
44935 16.441
]]

Engravings["Wowhead score (Cat):"] = setmetatable({}, {
	__index = function(t,i)
		local v = WOWHEAD_SCORE:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})