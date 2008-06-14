
local DROP_LOCATIONS = [[
20400 Black Temple
20400 Gruul's Lair
20400 Hyjal Summit
20400 Karazhan
20400 Serpentshrine Cavern
20400 The Eye
21903 Karazhan
21904 Karazhan
21905 The Arcatraz
21906 The Mechanar (Normal)
21907 The Mechanar
22533 The Steamvault
22543 Mana-Tombs
22544 Auchenai Crypts
22545 Karazhan
22554 The Shattered Halls
22556 The Arcatraz
22559 Karazhan
22560 Karazhan
22561 Karazhan
22920 The Mechanar
22921 Mana-Tombs
22927 Old Hillsbrad Foothills
23605 Auchenai Crypts
23606 The Arcatraz
23607 Shadow Labyrinth
23615 Mana-Tombs
23617 The Botanica
23809 Karazhan
23887 The Steamvault
24020 Hellfire Ramparts (Normal)
24021 Hellfire Ramparts (Normal)
24022 Hellfire Ramparts (Normal)
24023 Hellfire Ramparts (Normal)
24024 Hellfire Ramparts (Normal)
24044 Hellfire Ramparts (Normal)
24045 Hellfire Ramparts (Normal)
24046 Hellfire Ramparts (Normal)
24063 Hellfire Ramparts (Normal)
24064 Hellfire Ramparts (Normal)
24069 Hellfire Ramparts (Normal)
24073 Hellfire Ramparts (Normal)
24083 Hellfire Ramparts (Normal)
24090 Hellfire Ramparts (Normal)
24091 Hellfire Ramparts (Normal)
24094 Hellfire Ramparts (Normal)
24096 Hellfire Ramparts (Normal)
24150 Hellfire Ramparts (Normal)
24151 Hellfire Ramparts (Normal)
24154 Hellfire Ramparts (Normal)
24155 Hellfire Ramparts (Normal)
24159 The Steamvault
24160 Sethekk Halls
24172 The Botanica
24173 Old Hillsbrad Foothills
24308 The Arcatraz
24309 Shadow Labyrinth
24310 The Botanica
24311 The Botanica
24312 The Shattered Halls
24313 The Steamvault
24356 The Slave Pens (Normal)
24357 The Slave Pens (Normal)
24359 The Slave Pens (Normal)
24360 The Slave Pens (Normal)
24361 The Slave Pens (Normal)
24362 The Slave Pens (Normal)
24363 The Slave Pens (Normal)
24364 The Slave Pens (Normal)
24365 The Slave Pens (Normal)
24366 The Slave Pens (Normal)
24376 The Slave Pens (Normal)
24378 The Slave Pens (Normal)
24379 The Slave Pens (Normal)
24380 The Slave Pens (Normal)
24381 The Slave Pens (Normal)
24384 The Blood Furnace (Normal)
24385 The Blood Furnace (Normal)
24386 The Blood Furnace (Normal)
24387 The Blood Furnace (Normal)
24388 The Blood Furnace (Normal)
24389 The Blood Furnace (Normal)
24390 The Blood Furnace (Normal)
24391 The Blood Furnace (Normal)
24392 The Blood Furnace (Normal)
24393 The Blood Furnace (Normal)
24394 The Blood Furnace (Normal)
24395 The Blood Furnace (Normal)
24396 The Blood Furnace (Normal)
24397 The Blood Furnace (Normal)
24398 The Blood Furnace (Normal)
24413 The Underbog (Normal)
24450 The Underbog (Normal)
24451 The Underbog (Normal)
24452 The Underbog (Normal)
24453 The Underbog (Normal)
24454 The Underbog (Normal)
24455 The Underbog (Normal)
24456 The Underbog (Normal)
24457 The Underbog (Normal)
24458 The Underbog (Normal)
24459 The Underbog (Normal)
24460 The Underbog (Normal)
24461 The Underbog (Normal)
24462 The Underbog (Normal)
24463 The Underbog (Normal)
24464 The Underbog (Normal)
24465 The Underbog (Normal)
24466 The Underbog (Normal)
24481 The Underbog (Normal)
25728 Shadow Labyrinth
25729 Old Hillsbrad Foothills
25730 The Black Morass
25731 Sethekk Halls
25939 Mana-Tombs (Normal)
25940 Mana-Tombs (Normal)
25941 Mana-Tombs (Normal)
25942 Mana-Tombs (Normal)
25943 Mana-Tombs (Normal)
25944 Mana-Tombs (Normal)
25945 Mana-Tombs (Normal)
25946 Mana-Tombs (Normal)
25947 Mana-Tombs (Normal)
25950 Mana-Tombs (Normal)
25952 Mana-Tombs (Normal)
25953 Mana-Tombs (Normal)
25954 Mana-Tombs (Normal)
25955 Mana-Tombs (Normal)
25956 Mana-Tombs (Normal)
25957 Mana-Tombs (Normal)
25962 Mana-Tombs (Normal)
25964 Auchenai Crypts (Normal)
26055 Auchenai Crypts (Normal)
27408 Auchenai Crypts (Normal)
27409 Auchenai Crypts (Normal)
27410 Auchenai Crypts (Normal)
27411 Auchenai Crypts (Normal)
27412 Auchenai Crypts (Normal)
27413 Auchenai Crypts (Normal)
27414 Auchenai Crypts (Normal)
27415 Auchenai Crypts (Normal)
27416 Auchenai Crypts (Normal)
27417 Old Hillsbrad Foothills
27418 Old Hillsbrad Foothills (Normal)
27420 Old Hillsbrad Foothills (Normal)
27423 Old Hillsbrad Foothills
27424 Old Hillsbrad Foothills
27426 Old Hillsbrad Foothills (Normal)
27427 Old Hillsbrad Foothills (Normal)
27428 Old Hillsbrad Foothills
27430 Old Hillsbrad Foothills
27431 Old Hillsbrad Foothills (Normal)
27432 Old Hillsbrad Foothills (Normal)
27433 Old Hillsbrad Foothills
27434 Old Hillsbrad Foothills
27436 Old Hillsbrad Foothills (Normal)
27440 Old Hillsbrad Foothills
27447 Hellfire Ramparts (Heroic)
27448 Hellfire Ramparts (Heroic)
27449 Hellfire Ramparts (Heroic)
27450 Hellfire Ramparts (Heroic)
27451 Hellfire Ramparts (Heroic)
27452 Hellfire Ramparts (Heroic)
27453 Hellfire Ramparts (Heroic)
27454 Hellfire Ramparts (Heroic)
27455 Hellfire Ramparts (Heroic)
27456 Hellfire Ramparts (Heroic)
27457 Hellfire Ramparts (Heroic)
27458 Hellfire Ramparts (Heroic)
27459 Hellfire Ramparts (Heroic)
27460 Hellfire Ramparts (Heroic)
27461 Hellfire Ramparts (Heroic)
27462 Hellfire Ramparts (Heroic)
27463 Hellfire Ramparts (Heroic)
27464 Hellfire Ramparts (Heroic)
27465 Hellfire Ramparts (Heroic)
27466 Hellfire Ramparts (Heroic)
27467 Hellfire Ramparts (Heroic)
27468 Shadow Labyrinth
27474 The Shattered Halls
27475 The Steamvault
27476 Hellfire Ramparts (Heroic)
27477 Hellfire Ramparts (Heroic)
27478 Hellfire Ramparts (Heroic)
27483 The Blood Furnace (Heroic)
27484 The Blood Furnace (Heroic)
27485 The Blood Furnace (Heroic)
27487 The Blood Furnace (Heroic)
27488 The Blood Furnace (Heroic)
27489 The Blood Furnace (Heroic)
27490 The Blood Furnace (Heroic)
27491 The Blood Furnace (Heroic)
27492 The Blood Furnace (Heroic)
27493 Auchenai Crypts (Heroic)
27494 The Blood Furnace (Heroic)
27495 The Blood Furnace (Heroic)
27497 The Blood Furnace (Heroic)
27505 The Blood Furnace (Heroic)
27506 The Blood Furnace (Heroic)
27507 The Blood Furnace (Heroic)
27508 The Steamvault
27509 The Black Morass
27510 The Steamvault
27512 The Blood Furnace (Heroic)
27514 The Blood Furnace (Heroic)
27517 The Shattered Halls
27518 The Shattered Halls
27519 The Shattered Halls
27520 The Shattered Halls
27521 The Shattered Halls
27522 The Blood Furnace (Heroic)
27523 Auchenai Crypts (Heroic)
27524 The Shattered Halls
27525 The Shattered Halls
27526 The Shattered Halls
27527 The Shattered Halls
27528 The Shattered Halls
27529 The Shattered Halls
27531 The Shattered Halls
27533 The Shattered Halls
27534 The Shattered Halls
27535 The Shattered Halls
27536 The Shattered Halls
27537 The Shattered Halls
27538 The Shattered Halls
27539 Hellfire Ramparts (Heroic)
27540 The Shattered Halls
27541 The Slave Pens (Heroic)
27542 The Slave Pens (Heroic)
27543 The Slave Pens (Heroic)
27544 The Slave Pens (Heroic)
27545 The Slave Pens (Heroic)
27546 The Slave Pens (Heroic)
27547 The Slave Pens (Heroic)
27548 The Slave Pens (Heroic)
27549 The Slave Pens (Heroic)
27550 The Slave Pens (Heroic)
27551 The Slave Pens (Heroic)
27631 The Underbog (Normal)
27672 The Slave Pens (Heroic)
27673 The Slave Pens (Heroic)
27683 The Slave Pens (Heroic)
27712 The Slave Pens (Heroic)
27713 The Slave Pens (Heroic)
27714 The Slave Pens (Heroic)
27737 The Steamvault
27738 The Steamvault
27739 The Botanica
27740 The Slave Pens (Heroic)
27741 The Slave Pens (Heroic)
27742 The Slave Pens (Heroic)
27743 The Underbog (Heroic)
27744 The Underbog (Heroic)
27745 The Underbog (Heroic)
27746 The Underbog (Heroic)
27747 The Underbog (Heroic)
27748 The Underbog (Heroic)
27755 The Underbog (Heroic)
27757 The Underbog (Heroic)
27758 The Underbog (Heroic)
27759 The Underbog (Heroic)
27760 The Underbog (Heroic)
27761 The Underbog (Heroic)
27762 The Underbog (Heroic)
27763 The Underbog (Heroic)
27764 The Underbog (Heroic)
27765 The Underbog (Heroic)
27766 The Underbog (Heroic)
27767 The Underbog (Heroic)
27768 The Underbog (Heroic)
27769 The Underbog (Heroic)
27770 The Underbog (Heroic)
27771 The Underbog (Heroic)
27772 The Underbog (Heroic)
27773 The Underbog (Heroic)
27775 Shadow Labyrinth
27776 Sethekk Halls
27778 Shadow Labyrinth
27779 The Underbog (Heroic)
27780 The Underbog (Heroic)
27781 The Underbog (Heroic)
27783 The Steamvault
27784 The Steamvault
27787 The Steamvault
27788 The Blood Furnace (Heroic)
27789 The Steamvault
27790 The Steamvault
27791 The Steamvault
27792 The Steamvault
27793 The Steamvault
27794 The Steamvault
27795 The Steamvault
27796 The Slave Pens (Heroic)
27797 Auchenai Crypts (Heroic)
27798 Mana-Tombs (Heroic)
27799 The Steamvault
27800 The Slave Pens (Heroic)
27801 The Steamvault
27802 The Shattered Halls
27803 Shadow Labyrinth
27804 The Steamvault
27805 The Steamvault
27806 The Steamvault
27813 Mana-Tombs (Heroic)
27814 Mana-Tombs (Heroic)
27815 Mana-Tombs (Heroic)
27816 Mana-Tombs (Heroic)
27817 Mana-Tombs (Heroic)
27818 Mana-Tombs (Heroic)
27821 Mana-Tombs (Heroic)
27822 Mana-Tombs (Heroic)
27823 Mana-Tombs (Heroic)
27824 Mana-Tombs (Heroic)
27825 Mana-Tombs (Heroic)
27826 Mana-Tombs (Heroic)
27827 Mana-Tombs (Heroic)
27828 Mana-Tombs (Heroic)
27829 Mana-Tombs (Heroic)
27831 Mana-Tombs (Heroic)
27835 Mana-Tombs (Heroic)
27837 Mana-Tombs (Heroic)
27838 Sethekk Halls
27839 The Black Morass
27840 Mana-Tombs (Heroic)
27842 Mana-Tombs (Heroic)
27843 Mana-Tombs (Heroic)
27844 Mana-Tombs (Heroic)
27845 Auchenai Crypts (Heroic)
27846 Auchenai Crypts (Heroic)
27847 Auchenai Crypts (Heroic)
27848 The Blood Furnace (Heroic)
27865 Auchenai Crypts (Heroic)
27866 Auchenai Crypts (Heroic)
27867 Auchenai Crypts (Heroic)
27868 The Shattered Halls
27869 Auchenai Crypts (Heroic)
27870 Auchenai Crypts (Heroic)
27871 Auchenai Crypts (Heroic)
27872 Auchenai Crypts (Heroic)
27873 The Black Morass
27874 The Steamvault
27875 Sethekk Halls
27876 Auchenai Crypts (Heroic)
27877 Auchenai Crypts (Heroic)
27878 Auchenai Crypts (Heroic)
27884 Shadow Labyrinth
27885 Shadow Labyrinth
27886 Shadow Labyrinth
27887 Shadow Labyrinth
27888 Shadow Labyrinth
27889 Shadow Labyrinth
27890 Shadow Labyrinth
27891 Shadow Labyrinth
27892 Shadow Labyrinth
27893 Shadow Labyrinth
27895 Hellfire Ramparts (Heroic)
27896 The Underbog (Heroic)
27897 Shadow Labyrinth
27898 Shadow Labyrinth
27899 The Mechanar
27900 Shadow Labyrinth
27901 Shadow Labyrinth
27902 Shadow Labyrinth
27903 Shadow Labyrinth
27904 Old Hillsbrad Foothills (Heroic)
27905 Shadow Labyrinth
27906 Hellfire Ramparts (Heroic)
27907 The Underbog (Heroic)
27908 Shadow Labyrinth
27909 Shadow Labyrinth
27910 Shadow Labyrinth
27911 Old Hillsbrad Foothills (Heroic)
27912 Shadow Labyrinth
27913 Shadow Labyrinth
27914 Sethekk Halls
27915 Sethekk Halls
27916 Sethekk Halls
27917 Sethekk Halls
27918 Sethekk Halls
27919 Sethekk Halls
27925 Sethekk Halls
27936 Sethekk Halls
27937 Auchenai Crypts (Heroic)
27938 The Underbog (Heroic)
27946 Sethekk Halls
27948 Sethekk Halls
27977 The Black Morass
27980 Sethekk Halls
27981 Sethekk Halls
27985 Sethekk Halls
27986 Sethekk Halls
27987 The Black Morass
27988 The Black Morass
27993 The Black Morass
27994 The Black Morass
27995 The Black Morass
27996 The Black Morass
28033 The Black Morass
28034 The Black Morass
28121 The Blood Furnace (Heroic)
28124 The Slave Pens (Heroic)
28134 Shadow Labyrinth
28166 Mana-Tombs (Normal)
28184 The Black Morass
28185 The Black Morass
28186 The Black Morass
28187 The Black Morass
28188 The Black Morass
28189 The Black Morass
28190 The Black Morass
28191 Old Hillsbrad Foothills (Heroic)
28192 The Black Morass
28193 The Black Morass
28194 The Black Morass
28202 The Mechanar
28203 The Steamvault
28204 The Mechanar
28205 The Arcatraz
28206 The Black Morass
28207 The Black Morass
28210 Old Hillsbrad Foothills (Heroic)
28211 Old Hillsbrad Foothills (Heroic)
28212 Old Hillsbrad Foothills (Heroic)
28213 Old Hillsbrad Foothills (Heroic)
28214 Old Hillsbrad Foothills (Heroic)
28215 Old Hillsbrad Foothills (Heroic)
28216 Old Hillsbrad Foothills (Heroic)
28217 Old Hillsbrad Foothills (Heroic)
28218 Old Hillsbrad Foothills (Heroic)
28219 Old Hillsbrad Foothills (Heroic)
28220 Old Hillsbrad Foothills (Heroic)
28221 Old Hillsbrad Foothills (Heroic)
28222 Old Hillsbrad Foothills (Heroic)
28223 Old Hillsbrad Foothills (Heroic)
28224 Old Hillsbrad Foothills (Heroic)
28225 Old Hillsbrad Foothills (Heroic)
28226 Old Hillsbrad Foothills (Heroic)
28227 Old Hillsbrad Foothills (Heroic)
28228 The Botanica
28229 The Botanica
28230 Shadow Labyrinth
28231 The Arcatraz
28232 Shadow Labyrinth
28233 Old Hillsbrad Foothills (Heroic)
28253 The Mechanar
28254 The Mechanar
28255 The Mechanar
28256 The Mechanar
28257 The Mechanar
28258 The Mechanar
28259 The Mechanar
28260 The Mechanar
28262 The Mechanar
28263 The Mechanar
28264 The Blood Furnace (Heroic)
28265 The Mechanar
28266 The Mechanar
28267 The Mechanar
28268 Auchenai Crypts (Heroic)
28269 The Mechanar
28275 The Mechanar
28278 The Mechanar
28285 The Mechanar
28286 The Mechanar
28288 The Mechanar
28296 The Botanica
28301 The Botanica
28304 The Botanica
28306 The Botanica
28311 The Botanica
28315 The Botanica
28316 The Botanica
28317 The Botanica
28318 The Botanica
28321 The Botanica
28322 The Botanica
28323 The Botanica
28324 The Botanica
28325 The Botanica
28327 The Botanica
28328 The Botanica
28337 The Slave Pens (Heroic)
28338 The Botanica
28339 The Botanica
28340 The Botanica
28341 The Botanica
28342 The Botanica
28343 The Botanica
28344 Old Hillsbrad Foothills (Heroic)
28345 The Botanica
28347 The Botanica
28348 The Botanica
28349 The Botanica
28350 The Botanica
28367 The Botanica
28370 The Botanica
28371 The Botanica
28372 The Arcatraz
28373 The Arcatraz
28374 The Arcatraz
28375 The Arcatraz
28384 The Arcatraz
28386 The Arcatraz
28387 The Arcatraz
28390 The Arcatraz
28391 The Arcatraz
28392 The Arcatraz
28393 The Arcatraz
28394 The Arcatraz
28396 The Arcatraz
28397 The Arcatraz
28398 The Arcatraz
28400 Mana-Tombs (Heroic)
28401 Old Hillsbrad Foothills (Heroic)
28403 The Arcatraz
28406 The Arcatraz
28407 The Arcatraz
28412 The Arcatraz
28413 The Arcatraz
28414 The Arcatraz
28415 The Arcatraz
28416 The Arcatraz
28418 The Arcatraz
28419 The Arcatraz
28453 Karazhan
28454 Karazhan
28477 Karazhan
28502 Karazhan
28503 Karazhan
28504 Karazhan
28505 Karazhan
28506 Karazhan
28507 Karazhan
28508 Karazhan
28509 Karazhan
28510 Karazhan
28511 Karazhan
28512 Karazhan
28514 Karazhan
28515 Karazhan
28516 Karazhan
28517 Karazhan
28518 Karazhan
28519 Karazhan
28520 Karazhan
28521 Karazhan
28522 Karazhan
28523 Karazhan
28524 Karazhan
28525 Karazhan
28528 Karazhan
28529 Karazhan
28530 Karazhan
28545 Karazhan
28565 Karazhan
28566 Karazhan
28567 Karazhan
28568 Karazhan
28569 Karazhan
28570 Karazhan
28572 Karazhan
28573 Karazhan
28578 Karazhan
28579 Karazhan
28581 Karazhan
28582 Karazhan
28583 Karazhan
28584 Karazhan
28585 Karazhan
28586 Karazhan
28587 Karazhan
28588 Karazhan
28589 Karazhan
28590 Karazhan
28591 Karazhan
28592 Karazhan
28593 Karazhan
28594 Karazhan
28597 Karazhan
28599 Karazhan
28600 Karazhan
28601 Karazhan
28602 Karazhan
28603 Karazhan
28604 Karazhan
28606 Karazhan
28608 Karazhan
28609 Karazhan
28610 Karazhan
28611 Karazhan
28612 Karazhan
28621 Karazhan
28631 Karazhan
28633 Karazhan
28647 Karazhan
28649 Karazhan
28652 Karazhan
28653 Karazhan
28654 Karazhan
28655 Karazhan
28656 Karazhan
28657 Karazhan
28658 Karazhan
28659 Karazhan
28660 Karazhan
28661 Karazhan
28662 Karazhan
28663 Karazhan
28666 Karazhan
28669 Karazhan
28670 Karazhan
28671 Karazhan
28672 Karazhan
28673 Karazhan
28674 Karazhan
28675 Karazhan
28726 Karazhan
28727 Karazhan
28728 Karazhan
28729 Karazhan
28730 Karazhan
28731 Karazhan
28732 Karazhan
28733 Karazhan
28734 Karazhan
28735 Karazhan
28740 Karazhan
28741 Karazhan
28742 Karazhan
28743 Karazhan
28744 Karazhan
28745 Karazhan
28746 Karazhan
28747 Karazhan
28748 Karazhan
28749 Karazhan
28750 Karazhan
28751 Karazhan
28752 Karazhan
28753 Karazhan
28754 Karazhan
28755 Karazhan
28756 Karazhan
28757 Karazhan
28762 Karazhan
28763 Karazhan
28764 Karazhan
28765 Karazhan
28766 Karazhan
28767 Karazhan
28768 Karazhan
28770 Karazhan
28771 Karazhan
28772 Karazhan
28773 Karazhan
28774 Magtheridon's Lair
28775 Magtheridon's Lair
28776 Magtheridon's Lair
28777 Magtheridon's Lair
28778 Magtheridon's Lair
28779 Magtheridon's Lair
28780 Magtheridon's Lair
28781 Magtheridon's Lair
28782 Magtheridon's Lair
28783 Magtheridon's Lair
28785 Karazhan
28789 Magtheridon's Lair
28794 Gruul's Lair
28795 Gruul's Lair
28796 Gruul's Lair
28797 Gruul's Lair
28799 Gruul's Lair
28800 Gruul's Lair
28801 Gruul's Lair
28802 Gruul's Lair
28803 Gruul's Lair
28804 Gruul's Lair
28810 Gruul's Lair
28822 Gruul's Lair
28823 Gruul's Lair
28824 Gruul's Lair
28825 Gruul's Lair
28826 Gruul's Lair
28827 Gruul's Lair
28828 Gruul's Lair
28830 Gruul's Lair
29238 Hellfire Ramparts (Heroic)
29239 The Blood Furnace (Heroic)
29240 Mana-Tombs (Heroic)
29241 Shadow Labyrinth (Heroic)
29241 The Arcatraz (Heroic)
29242 The Slave Pens (Heroic)
29243 The Steamvault (Heroic)
29244 Auchenai Crypts (Heroic)
29245 The Blood Furnace (Heroic)
29246 Old Hillsbrad Foothills (Heroic)
29247 The Black Morass (Heroic)
29248 The Arcatraz (Heroic)
29249 Sethekk Halls (Heroic)
29250 Old Hillsbrad Foothills (Heroic)
29251 The Mechanar (Heroic)
29252 Mana-Tombs (Heroic)
29252 The Arcatraz (Heroic)
29253 The Black Morass (Heroic)
29254 The Arcatraz (Heroic)
29254 The Shattered Halls (Heroic)
29255 The Shattered Halls (Heroic)
29257 Auchenai Crypts (Heroic)
29258 The Botanica (Heroic)
29259 Sethekk Halls (Heroic)
29261 Shadow Labyrinth (Heroic)
29262 The Botanica (Heroic)
29263 The Shattered Halls (Heroic)
29264 Hellfire Ramparts (Heroic)
29265 The Underbog (Heroic)
29346 Hellfire Ramparts (Heroic)
29347 The Blood Furnace (Heroic)
29348 The Shattered Halls (Heroic)
29349 The Slave Pens (Heroic)
29350 The Underbog (Heroic)
29351 The Steamvault (Heroic)
29352 Mana-Tombs (Heroic)
29353 Shadow Labyrinth (Heroic)
29354 Auchenai Crypts (Heroic)
29355 Sethekk Halls (Heroic)
29356 The Black Morass (Heroic)
29357 Old Hillsbrad Foothills (Heroic)
29357 Shadow Labyrinth (Heroic)
29359 The Botanica (Heroic)
29360 The Arcatraz (Heroic)
29362 The Mechanar (Heroic)
29458 Magtheridon's Lair
29463 The Steamvault (Heroic)
29669 Sethekk Halls
29672 The Arcatraz
29673 The Steamvault
29674 The Slave Pens
29675 The Black Morass
29753 Magtheridon's Lair
29754 Magtheridon's Lair
29755 Magtheridon's Lair
29756 Karazhan
29757 Karazhan
29758 Karazhan
29759 Karazhan
29760 Karazhan
29761 Karazhan
29762 Gruul's Lair
29763 Gruul's Lair
29764 Gruul's Lair
29765 Gruul's Lair
29766 Gruul's Lair
29767 Gruul's Lair
29918 The Eye
29920 The Eye
29921 The Eye
29922 The Eye
29923 The Eye
29924 The Eye
29925 The Eye
29947 The Eye
29948 The Eye
29949 The Eye
29950 The Eye
29951 The Eye
29962 The Eye
29965 The Eye
29966 The Eye
29972 The Eye
29976 The Eye
29977 The Eye
29981 The Eye
29982 The Eye
29983 The Eye
29984 The Eye
29985 The Eye
29986 The Eye
29987 The Eye
29988 The Eye
29989 The Eye
29990 The Eye
29991 The Eye
29992 The Eye
29993 The Eye
29994 The Eye
29995 The Eye
29996 The Eye
29997 The Eye
29998 The Eye
30008 Serpentshrine Cavern
30020 The Eye
30021 Serpentshrine Cavern
30022 Serpentshrine Cavern
30023 Serpentshrine Cavern
30024 The Eye
30025 Serpentshrine Cavern
30026 The Eye
30027 Serpentshrine Cavern
30028 The Eye
30029 The Eye
30030 The Eye
30047 Serpentshrine Cavern
30048 Serpentshrine Cavern
30049 Serpentshrine Cavern
30050 Serpentshrine Cavern
30051 Serpentshrine Cavern
30052 Serpentshrine Cavern
30053 Serpentshrine Cavern
30054 Serpentshrine Cavern
30055 Serpentshrine Cavern
30056 Serpentshrine Cavern
30057 Serpentshrine Cavern
30058 Serpentshrine Cavern
30059 Serpentshrine Cavern
30060 Serpentshrine Cavern
30061 Serpentshrine Cavern
30062 Serpentshrine Cavern
30063 Serpentshrine Cavern
30064 Serpentshrine Cavern
30065 Serpentshrine Cavern
30066 Serpentshrine Cavern
30067 Serpentshrine Cavern
30068 Serpentshrine Cavern
30075 Serpentshrine Cavern
30079 Serpentshrine Cavern
30080 Serpentshrine Cavern
30081 Serpentshrine Cavern
30082 Serpentshrine Cavern
30083 Serpentshrine Cavern
30084 Serpentshrine Cavern
30085 Serpentshrine Cavern
30090 Serpentshrine Cavern
30091 Serpentshrine Cavern
30092 Serpentshrine Cavern
30095 Serpentshrine Cavern
30096 Serpentshrine Cavern
30097 Serpentshrine Cavern
30098 Serpentshrine Cavern
30099 Serpentshrine Cavern
30100 Serpentshrine Cavern
30101 Serpentshrine Cavern
30102 Serpentshrine Cavern
30103 Serpentshrine Cavern
30104 Serpentshrine Cavern
30105 Serpentshrine Cavern
30106 Serpentshrine Cavern
30107 Serpentshrine Cavern
30108 Serpentshrine Cavern
30109 Serpentshrine Cavern
30110 Serpentshrine Cavern
30111 Serpentshrine Cavern
30112 Serpentshrine Cavern
30236 The Eye
30237 The Eye
30238 The Eye
30239 Serpentshrine Cavern
30240 Serpentshrine Cavern
30241 Serpentshrine Cavern
30242 Serpentshrine Cavern
30243 Serpentshrine Cavern
30244 Serpentshrine Cavern
30245 Serpentshrine Cavern
30246 Serpentshrine Cavern
30247 Serpentshrine Cavern
30248 The Eye
30249 The Eye
30250 The Eye
30280 Serpentshrine Cavern
30281 Serpentshrine Cavern
30301 Serpentshrine Cavern
30302 Serpentshrine Cavern
30303 Serpentshrine Cavern
30304 Serpentshrine Cavern
30321 Serpentshrine Cavern
30322 Serpentshrine Cavern
30446 The Eye
30447 The Eye
30448 The Eye
30449 The Eye
30450 The Eye
30480 Karazhan
30531 The Black Morass (Heroic)
30532 Shadow Labyrinth (Heroic)
30533 The Mechanar (Heroic)
30534 Old Hillsbrad Foothills (Heroic)
30535 Mana-Tombs (Heroic)
30536 Old Hillsbrad Foothills (Heroic)
30538 The Slave Pens (Heroic)
30541 The Underbog (Heroic)
30543 The Steamvault (Heroic)
30546 The Shattered Halls (Heroic)
30547 The Shattered Halls (Heroic)
30548 The Shattered Halls (Heroic)
30549 The Steamvault (Heroic)
30550 The Steamvault (Heroic)
30551 The Steamvault (Heroic)
30552 Sethekk Halls (Heroic)
30553 Sethekk Halls (Heroic)
30554 Sethekk Halls (Heroic)
30555 The Black Morass (Heroic)
30556 The Black Morass (Heroic)
30558 The Black Morass (Heroic)
30559 Shadow Labyrinth (Heroic)
30560 Shadow Labyrinth (Heroic)
30563 Shadow Labyrinth (Heroic)
30564 The Mechanar (Heroic)
30565 The Mechanar (Heroic)
30566 The Mechanar (Heroic)
30572 The Botanica (Heroic)
30573 The Botanica (Heroic)
30574 The Botanica (Heroic)
30575 The Arcatraz (Heroic)
30581 The Arcatraz (Heroic)
30582 The Arcatraz (Heroic)
30583 Mana-Tombs (Heroic)
30584 Mana-Tombs (Heroic)
30585 Mana-Tombs (Heroic)
30586 Auchenai Crypts (Heroic)
30587 Auchenai Crypts (Heroic)
30588 Auchenai Crypts (Heroic)
30589 Old Hillsbrad Foothills (Heroic)
30590 Old Hillsbrad Foothills (Heroic)
30591 Old Hillsbrad Foothills (Heroic)
30592 Hellfire Ramparts (Heroic)
30593 Hellfire Ramparts (Heroic)
30594 Hellfire Ramparts (Heroic)
30600 The Blood Furnace (Heroic)
30601 The Blood Furnace (Heroic)
30602 The Blood Furnace (Heroic)
30603 The Slave Pens (Heroic)
30604 The Slave Pens (Heroic)
30605 The Slave Pens (Heroic)
30606 The Underbog (Heroic)
30607 The Underbog (Heroic)
30608 The Underbog (Heroic)
30619 The Eye
30620 Serpentshrine Cavern
30621 Serpentshrine Cavern
30626 Serpentshrine Cavern
30627 Serpentshrine Cavern
30629 Serpentshrine Cavern
30641 Karazhan
30642 Karazhan
30643 Karazhan
30644 Karazhan
30663 Serpentshrine Cavern
30664 Serpentshrine Cavern
30665 Serpentshrine Cavern
30666 Karazhan
30667 Karazhan
30668 Karazhan
30673 Karazhan
30674 Karazhan
30675 Karazhan
30676 Karazhan
30677 Karazhan
30678 Karazhan
30680 Karazhan
30681 Karazhan
30682 Karazhan
30683 Karazhan
30684 Karazhan
30685 Karazhan
30686 Karazhan
30687 Karazhan
30705 The Shattered Halls (Heroic)
30707 The Shattered Halls (Heroic)
30708 The Shattered Halls (Heroic)
30709 The Shattered Halls (Heroic)
30710 The Shattered Halls (Heroic)
30720 Serpentshrine Cavern
30861 Hyjal Summit
30862 Hyjal Summit
30863 Hyjal Summit
30864 Hyjal Summit
30865 Hyjal Summit
30866 Hyjal Summit
30868 Hyjal Summit
30869 Hyjal Summit
30870 Hyjal Summit
30871 Hyjal Summit
30872 Hyjal Summit
30873 Hyjal Summit
30874 Hyjal Summit
30878 Hyjal Summit
30879 Hyjal Summit
30880 Hyjal Summit
30881 Hyjal Summit
30882 Hyjal Summit
30883 Hyjal Summit
30884 Hyjal Summit
30885 Hyjal Summit
30886 Hyjal Summit
30887 Hyjal Summit
30888 Hyjal Summit
30889 Hyjal Summit
30891 Hyjal Summit
30892 Hyjal Summit
30893 Hyjal Summit
30894 Hyjal Summit
30895 Hyjal Summit
30896 Hyjal Summit
30897 Hyjal Summit
30898 Hyjal Summit
30899 Hyjal Summit
30900 Hyjal Summit
30901 Hyjal Summit
30902 Hyjal Summit
30903 Hyjal Summit
30904 Hyjal Summit
30905 Hyjal Summit
30906 Hyjal Summit
30907 Hyjal Summit
30908 Hyjal Summit
30909 Hyjal Summit
30910 Hyjal Summit
30911 Hyjal Summit
30912 Hyjal Summit
30913 Hyjal Summit
30914 Hyjal Summit
30915 Hyjal Summit
30916 Hyjal Summit
30917 Hyjal Summit
30918 Hyjal Summit
30919 Hyjal Summit
31089 Black Temple
31090 Black Temple
31091 Black Temple
31092 Hyjal Summit
31093 Hyjal Summit
31094 Hyjal Summit
31095 Hyjal Summit
31096 Hyjal Summit
31097 Hyjal Summit
31098 Black Temple
31099 Black Temple
31100 Black Temple
31101 Black Temple
31102 Black Temple
31103 Black Temple
31919 Mana-Tombs (Heroic)
31920 Mana-Tombs (Heroic)
31921 Mana-Tombs (Heroic)
31922 Mana-Tombs (Heroic)
31923 Mana-Tombs (Heroic)
31924 Mana-Tombs (Heroic)
32072 The Botanica (Heroic)
32073 Sethekk Halls (Heroic)
32076 The Mechanar (Heroic)
32077 Hellfire Ramparts (Heroic)
32078 The Slave Pens (Heroic)
32080 The Blood Furnace (Heroic)
32081 The Underbog (Heroic)
32082 Mana-Tombs (Heroic)
32232 Black Temple
32234 Black Temple
32235 Black Temple
32236 Black Temple
32237 Black Temple
32238 Black Temple
32239 Black Temple
32240 Black Temple
32241 Black Temple
32242 Black Temple
32243 Black Temple
32245 Black Temple
32247 Black Temple
32248 Black Temple
32250 Black Temple
32251 Black Temple
32252 Black Temple
32253 Black Temple
32254 Black Temple
32255 Black Temple
32256 Black Temple
32257 Black Temple
32258 Black Temple
32259 Black Temple
32260 Black Temple
32261 Black Temple
32262 Black Temple
32263 Black Temple
32264 Black Temple
32265 Black Temple
32266 Black Temple
32267 The Eye
32268 Black Temple
32269 Black Temple
32270 Black Temple
32271 Black Temple
32273 Black Temple
32275 Black Temple
32276 Black Temple
32278 Black Temple
32279 Black Temple
32280 Black Temple
32285 Hyjal Summit
32289 Hyjal Summit
32295 Hyjal Summit
32296 Hyjal Summit
32297 Hyjal Summit
32298 Hyjal Summit
32303 Hyjal Summit
32307 Hyjal Summit
32323 Black Temple
32324 Black Temple
32325 Black Temple
32326 Black Temple
32327 Black Temple
32328 Black Temple
32329 Black Temple
32330 Black Temple
32331 Black Temple
32332 Black Temple
32333 Black Temple
32334 Black Temple
32335 Black Temple
32336 Black Temple
32337 Black Temple
32338 Black Temple
32339 Black Temple
32340 Black Temple
32341 Black Temple
32342 Black Temple
32343 Black Temple
32344 Black Temple
32345 Black Temple
32346 Black Temple
32347 Black Temple
32348 Black Temple
32349 Black Temple
32350 Black Temple
32351 Black Temple
32352 Black Temple
32353 Black Temple
32354 Black Temple
32361 Black Temple
32362 Black Temple
32363 Black Temple
32365 Black Temple
32366 Black Temple
32367 Black Temple
32368 Black Temple
32369 Black Temple
32370 Black Temple
32373 Black Temple
32374 Black Temple
32375 Black Temple
32376 Black Temple
32377 Black Temple
32385 Magtheridon's Lair
32386 Magtheridon's Lair
32405 The Eye
32458 The Eye
32471 Black Temple
32483 Black Temple
32496 Black Temple
32497 Black Temple
32500 Black Temple
32501 Black Temple
32505 Black Temple
32510 Black Temple
32512 Black Temple
32513 Black Temple
32515 The Eye
32516 Serpentshrine Cavern
32517 Black Temple
32518 Black Temple
32519 Black Temple
32521 Black Temple
32524 Black Temple
32525 Black Temple
32526 Black Temple
32527 Black Temple
32528 Black Temple
32589 Black Temple
32589 Hyjal Summit
32590 Black Temple
32590 Hyjal Summit
32591 Black Temple
32591 Hyjal Summit
32592 Black Temple
32592 Hyjal Summit
32593 Black Temple
32606 Black Temple
32608 Black Temple
32609 Black Temple
32609 Hyjal Summit
32736 Black Temple
32736 Hyjal Summit
32738 Black Temple
32744 Black Temple
32746 Black Temple
32746 Hyjal Summit
32748 Black Temple
32748 Hyjal Summit
32750 Black Temple
32752 Black Temple
32752 Hyjal Summit
32754 Black Temple
32768 Sethekk Halls (Heroic)
32769 Sethekk Halls (Heroic)
32778 Sethekk Halls (Heroic)
32779 Sethekk Halls (Heroic)
32780 Sethekk Halls (Heroic)
32781 Sethekk Halls (Heroic)
32837 Black Temple
32838 Black Temple
32895 Serpentshrine Cavern
32896 The Eye
32943 Black Temple
32944 The Eye
32945 Hyjal Summit
32946 Hyjal Summit
33054 Serpentshrine Cavern
33055 Serpentshrine Cavern
33058 Serpentshrine Cavern
33102 Zul'Aman
33117 Black Temple
33117 Hyjal Summit
33117 Karazhan
33117 The Eye
33191 Zul'Aman
33203 Zul'Aman
33206 Zul'Aman
33211 Zul'Aman
33214 Zul'Aman
33215 Zul'Aman
33216 Zul'Aman
33281 Zul'Aman
33283 Zul'Aman
33285 Zul'Aman
33286 Zul'Aman
33293 Zul'Aman
33297 Zul'Aman
33298 Zul'Aman
33299 Zul'Aman
33300 Zul'Aman
33303 Zul'Aman
33307 Zul'Aman
33317 Zul'Aman
33322 Zul'Aman
33326 Zul'Aman
33327 Zul'Aman
33328 Zul'Aman
33329 Zul'Aman
33332 Zul'Aman
33354 Zul'Aman
33356 Zul'Aman
33357 Zul'Aman
33388 Zul'Aman
33389 Zul'Aman
33421 Zul'Aman
33432 Zul'Aman
33446 Zul'Aman
33453 Zul'Aman
33463 Zul'Aman
33464 Zul'Aman
33465 Zul'Aman
33466 Zul'Aman
33467 Zul'Aman
33468 Zul'Aman
33469 Zul'Aman
33471 Zul'Aman
33473 Zul'Aman
33474 Zul'Aman
33476 Zul'Aman
33478 Zul'Aman
33479 Zul'Aman
33480 Zul'Aman
33481 Zul'Aman
33483 Zul'Aman
33489 Zul'Aman
33490 Zul'Aman
33491 Zul'Aman
33492 Zul'Aman
33493 Zul'Aman
33494 Zul'Aman
33495 Zul'Aman
33496 Zul'Aman
33497 Zul'Aman
33498 Zul'Aman
33499 Zul'Aman
33500 Zul'Aman
33533 Zul'Aman
33590 Zul'Aman
33591 Zul'Aman
33592 Zul'Aman
33640 Zul'Aman
33805 Zul'Aman
33809 Zul'Aman
33828 Zul'Aman
33829 Zul'Aman
33830 Zul'Aman
33831 Zul'Aman
33971 Zul'Aman
34009 Hyjal Summit
34010 Hyjal Summit
34011 Black Temple
34012 Black Temple
34029 Zul'Aman
34164 Sunwell Plateau
34165 Sunwell Plateau
34166 Sunwell Plateau
34167 Sunwell Plateau
34168 Sunwell Plateau
34169 Sunwell Plateau
34170 Sunwell Plateau
34176 Sunwell Plateau
34177 Sunwell Plateau
34178 Sunwell Plateau
34179 Sunwell Plateau
34180 Sunwell Plateau
34181 Sunwell Plateau
34182 Sunwell Plateau
34183 Sunwell Plateau
34184 Sunwell Plateau
34185 Sunwell Plateau
34186 Sunwell Plateau
34188 Sunwell Plateau
34189 Sunwell Plateau
34190 Sunwell Plateau
34192 Sunwell Plateau
34193 Sunwell Plateau
34194 Sunwell Plateau
34195 Sunwell Plateau
34196 Sunwell Plateau
34197 Sunwell Plateau
34198 Sunwell Plateau
34199 Sunwell Plateau
34202 Sunwell Plateau
34203 Sunwell Plateau
34204 Sunwell Plateau
34205 Sunwell Plateau
34206 Sunwell Plateau
34208 Sunwell Plateau
34209 Sunwell Plateau
34210 Sunwell Plateau
34211 Sunwell Plateau
34212 Sunwell Plateau
34213 Sunwell Plateau
34214 Sunwell Plateau
34215 Sunwell Plateau
34216 Sunwell Plateau
34228 Sunwell Plateau
34229 Sunwell Plateau
34230 Sunwell Plateau
34231 Sunwell Plateau
34232 Sunwell Plateau
34233 Sunwell Plateau
34234 Sunwell Plateau
34240 Sunwell Plateau
34241 Sunwell Plateau
34242 Sunwell Plateau
34243 Sunwell Plateau
34244 Sunwell Plateau
34245 Sunwell Plateau
34247 Sunwell Plateau
34329 Sunwell Plateau
34331 Sunwell Plateau
34332 Sunwell Plateau
34333 Sunwell Plateau
34334 Sunwell Plateau
34335 Sunwell Plateau
34336 Sunwell Plateau
34337 Sunwell Plateau
34339 Sunwell Plateau
34340 Sunwell Plateau
34341 Sunwell Plateau
34342 Sunwell Plateau
34343 Sunwell Plateau
34344 Sunwell Plateau
34345 Sunwell Plateau
34346 Sunwell Plateau
34347 Sunwell Plateau
34348 Sunwell Plateau
34349 Sunwell Plateau
34350 Sunwell Plateau
34351 Sunwell Plateau
34352 Sunwell Plateau
34427 Sunwell Plateau
34428 Sunwell Plateau
34429 Sunwell Plateau
34430 Sunwell Plateau
34470 Magisters' Terrace (Heroic)
34471 Magisters' Terrace (Heroic)
34472 Magisters' Terrace (Heroic)
34473 Magisters' Terrace (Heroic)
34601 Magisters' Terrace (Heroic)
34602 Magisters' Terrace (Heroic)
34603 Magisters' Terrace (Heroic)
34604 Magisters' Terrace (Heroic)
34605 Magisters' Terrace (Heroic)
34606 Magisters' Terrace (Heroic)
34607 Magisters' Terrace (Heroic)
34608 Magisters' Terrace (Heroic)
34609 Magisters' Terrace (Heroic)
34610 Magisters' Terrace (Heroic)
34611 Magisters' Terrace (Heroic)
34612 Magisters' Terrace (Heroic)
34613 Magisters' Terrace (Heroic)
34614 Magisters' Terrace (Heroic)
34615 Magisters' Terrace (Heroic)
34616 Magisters' Terrace (Heroic)
34625 Magisters' Terrace (Normal)
34697 Magisters' Terrace (Normal)
34698 Magisters' Terrace (Normal)
34699 Magisters' Terrace (Normal)
34700 Magisters' Terrace (Normal)
34701 Magisters' Terrace (Normal)
34702 Magisters' Terrace (Normal)
34703 Magisters' Terrace (Normal)
34704 Magisters' Terrace (Normal)
34705 Magisters' Terrace (Normal)
34706 Magisters' Terrace (Normal)
34707 Magisters' Terrace (Normal)
34708 Magisters' Terrace (Normal)
34783 Magisters' Terrace (Normal)
34788 Magisters' Terrace (Normal)
34789 Magisters' Terrace (Normal)
34790 Magisters' Terrace (Normal)
34791 Magisters' Terrace (Normal)
34792 Magisters' Terrace (Normal)
34793 Magisters' Terrace (Normal)
34794 Magisters' Terrace (Normal)
34795 Magisters' Terrace (Normal)
34796 Magisters' Terrace (Normal)
34797 Magisters' Terrace (Normal)
34798 Magisters' Terrace (Normal)
34799 Magisters' Terrace (Normal)
34807 Magisters' Terrace (Normal)
34808 Magisters' Terrace (Normal)
34809 Magisters' Terrace (Normal)
34810 Magisters' Terrace (Normal)
34845 Magtheridon's Lair
34848 Sunwell Plateau
34851 Sunwell Plateau
34852 Sunwell Plateau
34853 Sunwell Plateau
34854 Sunwell Plateau
34855 Sunwell Plateau
34856 Sunwell Plateau
34857 Sunwell Plateau
34858 Sunwell Plateau
35198 Sunwell Plateau
35199 Sunwell Plateau
35200 Sunwell Plateau
35204 Sunwell Plateau
35205 Sunwell Plateau
35208 Sunwell Plateau
35209 Sunwell Plateau
35212 Sunwell Plateau
35213 Sunwell Plateau
35214 Sunwell Plateau
35215 Sunwell Plateau
35273 Sunwell Plateau
35275 Magisters' Terrace (Heroic)
35282 Sunwell Plateau
35283 Sunwell Plateau
35284 Sunwell Plateau
35290 Sunwell Plateau
35291 Sunwell Plateau
35292 Sunwell Plateau
35294 Magisters' Terrace
35295 Magisters' Terrace
35296 Magisters' Terrace
35297 Magisters' Terrace
35298 Magisters' Terrace
35299 Magisters' Terrace
35300 Magisters' Terrace
35301 Magisters' Terrace
35302 Magisters' Terrace
35303 Magisters' Terrace
35304 Magisters' Terrace (Heroic)
35305 Magisters' Terrace
35306 Magisters' Terrace
35307 Magisters' Terrace
35308 Magisters' Terrace
35309 Magisters' Terrace
35310 Magisters' Terrace
35311 Magisters' Terrace
35504 Magisters' Terrace
35513 Magisters' Terrace (Heroic)
35516 Magisters' Terrace
35582 The Mechanar
35733 Sunwell Plateau
35756 Magisters' Terrace
]]

Engravings["Drops in:"] = setmetatable({}, {
	__index = function(t,i)
		local v = DROP_LOCATIONS:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})
