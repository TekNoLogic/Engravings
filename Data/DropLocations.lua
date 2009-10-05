
local DROP_LOCATIONS = [[
20400 Black Temple
20400 Gruul's Lair
20400 Hyjal Summit
20400 Karazhan
20400 Serpentshrine Cavern
20400 Sunwell Plateau
20400 The Eye
20400 Zul'Aman
21524 Old Hillsbrad Foothills
21524 The Botanica
21524 The Nexus
21524 The Old Kingdom
21525 Auchenai Crypts (Heroic)
21525 Shadow Labyrinth (Heroic)
21525 The Oculus
21525 The Shattered Halls (Heroic)
21903 Karazhan
21904 Karazhan
21905 The Arcatraz
21906 The Mechanar (Normal)
21907 The Mechanar
22206 Utgarde Keep (Normal)
22533 The Steamvault (Heroic)
22543 Mana-Tombs (Heroic)
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
23615 Mana-Tombs (Heroic)
23617 The Botanica
23809 Karazhan
23887 The Steamvault (Heroic)
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
24160 Sethekk Halls (Heroic)
24172 The Botanica (Heroic)
24173 Old Hillsbrad Foothills (Heroic)
24308 The Arcatraz
24309 Shadow Labyrinth (Heroic)
24310 The Botanica
24311 The Botanica (Heroic)
24312 The Shattered Halls (Heroic)
24313 The Steamvault (Heroic)
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
25729 Old Hillsbrad Foothills (Heroic)
25731 Sethekk Halls (Heroic)
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
27417 Old Hillsbrad Foothills (Normal)
27418 Old Hillsbrad Foothills (Normal)
27420 Old Hillsbrad Foothills (Normal)
27423 Old Hillsbrad Foothills (Normal)
27424 Old Hillsbrad Foothills (Normal)
27426 Old Hillsbrad Foothills (Normal)
27427 Old Hillsbrad Foothills (Normal)
27428 Old Hillsbrad Foothills (Normal)
27430 Old Hillsbrad Foothills (Normal)
27431 Old Hillsbrad Foothills (Normal)
27432 Old Hillsbrad Foothills (Normal)
27433 Old Hillsbrad Foothills (Normal)
27434 Old Hillsbrad Foothills (Normal)
27436 Old Hillsbrad Foothills (Normal)
27440 Old Hillsbrad Foothills (Normal)
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
28248 The Mechanar
28249 The Mechanar
28250 The Mechanar
28251 The Mechanar
28252 The Mechanar
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
29252 The Arcatraz (Heroic)
29253 The Black Morass (Heroic)
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
29357 Shadow Labyrinth (Heroic)
29359 The Botanica (Heroic)
29360 The Arcatraz (Heroic)
29362 The Mechanar (Heroic)
29458 Magtheridon's Lair
29463 The Steamvault (Heroic)
29669 Sethekk Halls (Heroic)
29672 The Arcatraz
29673 The Steamvault
29674 The Slave Pens
29675 The Black Morass (Heroic)
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
31920 Mana-Tombs (Heroic)
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
33117 Sunwell Plateau
33117 The Eye
33117 Zul'Aman
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
34625 Magisters' Terrace
34697 Magisters' Terrace
34698 Magisters' Terrace
34699 Magisters' Terrace (Normal)
34700 Magisters' Terrace
34701 Magisters' Terrace
34702 Magisters' Terrace
34703 Magisters' Terrace (Normal)
34704 Magisters' Terrace (Normal)
34705 Magisters' Terrace
34706 Magisters' Terrace
34707 Magisters' Terrace (Normal)
34708 Magisters' Terrace (Normal)
34783 Magisters' Terrace (Normal)
34788 Magisters' Terrace
34789 Magisters' Terrace (Normal)
34790 Magisters' Terrace (Normal)
34791 Magisters' Terrace (Normal)
34792 Magisters' Terrace (Normal)
34793 Magisters' Terrace
34794 Magisters' Terrace
34795 Magisters' Terrace
34796 Magisters' Terrace
34797 Magisters' Terrace (Normal)
34798 Magisters' Terrace (Normal)
34799 Magisters' Terrace (Normal)
34807 Magisters' Terrace
34808 Magisters' Terrace
34809 Magisters' Terrace (Normal)
34810 Magisters' Terrace
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
34955 The Slave Pens
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
35494 The Slave Pens
35495 The Slave Pens
35496 The Slave Pens
35497 The Slave Pens
35498 The Slave Pens
35504 Magisters' Terrace
35507 The Slave Pens (Heroic)
35508 The Slave Pens (Heroic)
35509 The Slave Pens (Heroic)
35511 The Slave Pens (Heroic)
35513 Magisters' Terrace (Heroic)
35514 The Slave Pens
35570 Utgarde Keep (Normal)
35571 Utgarde Keep (Normal)
35572 Utgarde Keep (Normal)
35573 Utgarde Keep (Normal)
35574 Utgarde Keep (Normal)
35575 Utgarde Keep (Normal)
35576 Utgarde Keep (Normal)
35577 Utgarde Keep (Normal)
35578 Utgarde Keep (Normal)
35582 The Mechanar
35583 Gundrak (Normal)
35584 Gundrak (Normal)
35585 Gundrak (Normal)
35587 Gundrak (Normal)
35588 Gundrak (Normal)
35589 Gundrak (Normal)
35590 Gundrak (Normal)
35591 Gundrak (Normal)
35592 Gundrak (Normal)
35595 The Nexus (Normal)
35596 The Nexus (Normal)
35597 The Nexus (Normal)
35598 The Nexus (Normal)
35599 The Nexus (Normal)
35600 The Nexus (Normal)
35601 The Nexus (Normal)
35602 The Nexus (Normal)
35603 The Nexus (Normal)
35604 The Nexus (Normal)
35605 The Nexus (Normal)
35606 The Old Kingdom (Normal)
35607 The Old Kingdom (Normal)
35608 The Old Kingdom (Normal)
35609 The Old Kingdom (Normal)
35610 The Old Kingdom (Normal)
35611 The Old Kingdom (Normal)
35612 The Old Kingdom (Normal)
35613 The Old Kingdom (Normal)
35614 The Old Kingdom (Normal)
35617 The Nexus (Normal)
35618 Drak'Tharon Keep (Normal)
35619 Drak'Tharon Keep (Normal)
35620 Drak'Tharon Keep (Normal)
35630 Drak'Tharon Keep (Normal)
35631 Drak'Tharon Keep (Normal)
35632 Drak'Tharon Keep (Normal)
35633 Drak'Tharon Keep (Normal)
35634 Drak'Tharon Keep (Normal)
35635 Drak'Tharon Keep (Normal)
35636 Drak'Tharon Keep (Normal)
35637 Drak'Tharon Keep (Normal)
35638 Drak'Tharon Keep (Normal)
35642 The Violet Hold (Normal)
35643 The Violet Hold (Normal)
35644 The Violet Hold (Normal)
35645 The Violet Hold (Normal)
35646 The Violet Hold (Normal)
35647 The Violet Hold (Normal)
35649 The Violet Hold (Normal)
35650 The Violet Hold (Normal)
35651 The Violet Hold (Normal)
35655 Azjol-Nerub (Normal)
35656 Azjol-Nerub (Normal)
35657 Azjol-Nerub (Normal)
35658 Azjol-Nerub (Normal)
35659 Azjol-Nerub (Normal)
35660 Azjol-Nerub (Normal)
35661 Azjol-Nerub (Normal)
35662 Azjol-Nerub (Normal)
35663 Azjol-Nerub (Normal)
35670 Halls of Stone (Normal)
35672 Halls of Stone (Normal)
35673 Halls of Stone (Normal)
35675 Halls of Stone (Normal)
35676 Halls of Stone (Normal)
35677 Halls of Stone (Normal)
35678 Halls of Stone (Normal)
35679 Halls of Stone (Normal)
35680 Halls of Stone (Normal)
35733 Sunwell Plateau
35756 Magisters' Terrace
36943 The Oculus (Normal)
36944 The Oculus (Normal)
36945 The Oculus (Normal)
36946 The Oculus (Normal)
36947 The Oculus (Normal)
36948 The Oculus (Normal)
36949 The Oculus (Normal)
36950 The Oculus (Normal)
36951 The Oculus (Normal)
36952 The Oculus (Normal)
36953 The Oculus (Normal)
36954 The Oculus (Normal)
36961 The Oculus (Normal)
36962 The Oculus (Normal)
36969 The Oculus (Normal)
36971 The Oculus (Normal)
36972 The Oculus (Normal)
36973 The Oculus (Normal)
36974 The Oculus (Normal)
36975 The Oculus (Normal)
36979 Halls of Lightning (Normal)
36980 Halls of Lightning (Normal)
36981 Halls of Lightning (Normal)
36982 Halls of Lightning (Normal)
36983 Halls of Lightning (Normal)
36984 Halls of Lightning (Normal)
36985 Halls of Lightning (Normal)
36986 Halls of Lightning (Normal)
36988 Halls of Lightning (Normal)
36989 Halls of Lightning (Normal)
36991 Halls of Lightning (Normal)
36992 Halls of Lightning (Normal)
36993 Halls of Lightning (Normal)
36994 Halls of Lightning (Normal)
36995 Halls of Lightning (Normal)
36996 Halls of Lightning (Normal)
37037 Utgarde Pinnacle (Normal)
37038 Utgarde Pinnacle (Normal)
37040 Utgarde Pinnacle (Normal)
37043 Utgarde Pinnacle (Normal)
37048 Utgarde Pinnacle (Normal)
37050 Utgarde Pinnacle (Normal)
37051 Utgarde Pinnacle (Normal)
37052 Utgarde Pinnacle (Normal)
37053 Utgarde Pinnacle (Normal)
37055 Utgarde Pinnacle (Normal)
37056 Utgarde Pinnacle (Normal)
37057 Utgarde Pinnacle (Normal)
37058 Utgarde Pinnacle (Normal)
37060 Utgarde Pinnacle (Normal)
37061 Utgarde Pinnacle (Normal)
37062 Utgarde Pinnacle (Normal)
37064 Utgarde Pinnacle (Normal)
37065 Utgarde Pinnacle (Normal)
37066 Utgarde Pinnacle (Normal)
37067 Utgarde Pinnacle (Normal)
37079 The Culling of Stratholme (Normal)
37081 The Culling of Stratholme (Normal)
37082 The Culling of Stratholme (Normal)
37083 The Culling of Stratholme (Normal)
37084 The Culling of Stratholme (Normal)
37086 The Culling of Stratholme (Normal)
37088 The Culling of Stratholme (Normal)
37095 The Culling of Stratholme (Normal)
37096 The Culling of Stratholme (Normal)
37099 The Culling of Stratholme (Normal)
37105 The Culling of Stratholme (Normal)
37106 The Culling of Stratholme (Normal)
37107 The Culling of Stratholme (Normal)
37108 The Culling of Stratholme (Normal)
37109 The Culling of Stratholme (Normal)
37110 The Culling of Stratholme (Normal)
37111 The Culling of Stratholme (Normal)
37112 The Culling of Stratholme (Normal)
37113 The Culling of Stratholme (Normal)
37114 The Culling of Stratholme (Normal)
37134 The Nexus (Heroic)
37135 The Nexus (Heroic)
37138 The Nexus (Heroic)
37139 The Nexus (Heroic)
37141 The Nexus (Heroic)
37144 The Nexus (Heroic)
37149 The Nexus (Heroic)
37150 The Nexus (Heroic)
37151 The Nexus (Heroic)
37152 The Nexus (Heroic)
37153 The Nexus (Heroic)
37155 The Nexus (Heroic)
37162 The Nexus (Heroic)
37165 The Nexus (Heroic)
37166 The Nexus (Heroic)
37167 The Nexus (Heroic)
37169 The Nexus (Heroic)
37170 The Nexus (Heroic)
37171 The Nexus (Heroic)
37172 The Nexus (Heroic)
37177 Utgarde Keep (Heroic)
37178 Utgarde Keep (Heroic)
37179 Utgarde Keep (Heroic)
37180 Utgarde Keep (Heroic)
37181 Utgarde Keep (Heroic)
37182 Utgarde Keep (Heroic)
37183 Utgarde Keep (Heroic)
37184 Utgarde Keep (Heroic)
37186 Utgarde Keep (Heroic)
37188 Utgarde Keep (Heroic)
37189 Utgarde Keep (Heroic)
37190 Utgarde Keep (Heroic)
37191 Utgarde Keep (Heroic)
37192 Utgarde Keep (Heroic)
37193 Utgarde Keep (Heroic)
37194 Utgarde Keep (Heroic)
37195 The Oculus (Heroic)
37216 Azjol-Nerub (Heroic)
37217 Azjol-Nerub (Heroic)
37218 Azjol-Nerub (Heroic)
37219 Azjol-Nerub (Heroic)
37220 Azjol-Nerub (Heroic)
37221 Azjol-Nerub (Heroic)
37222 Azjol-Nerub (Heroic)
37230 Azjol-Nerub (Heroic)
37232 Azjol-Nerub (Heroic)
37235 Azjol-Nerub (Heroic)
37236 Azjol-Nerub (Heroic)
37237 Azjol-Nerub (Heroic)
37238 Azjol-Nerub (Heroic)
37240 Azjol-Nerub (Heroic)
37241 Azjol-Nerub (Heroic)
37242 Azjol-Nerub (Heroic)
37255 The Oculus (Heroic)
37256 The Oculus (Heroic)
37257 The Oculus (Heroic)
37258 The Oculus (Heroic)
37260 The Oculus (Heroic)
37261 The Oculus (Heroic)
37262 The Oculus (Heroic)
37263 The Oculus (Heroic)
37264 The Oculus (Heroic)
37288 The Oculus (Heroic)
37289 The Oculus (Heroic)
37291 The Oculus (Heroic)
37292 The Oculus (Heroic)
37293 The Oculus (Heroic)
37294 The Oculus (Heroic)
37360 The Oculus (Heroic)
37361 The Oculus (Heroic)
37362 The Oculus (Heroic)
37363 The Oculus (Heroic)
37367 Utgarde Pinnacle (Heroic)
37368 Utgarde Pinnacle (Heroic)
37369 Utgarde Pinnacle (Heroic)
37370 Utgarde Pinnacle (Heroic)
37371 Utgarde Pinnacle (Heroic)
37373 Utgarde Pinnacle (Heroic)
37374 Utgarde Pinnacle (Heroic)
37376 Utgarde Pinnacle (Heroic)
37377 Utgarde Pinnacle (Heroic)
37379 Utgarde Pinnacle (Heroic)
37384 Utgarde Pinnacle (Heroic)
37389 Utgarde Pinnacle (Heroic)
37390 Utgarde Pinnacle (Heroic)
37395 Utgarde Pinnacle (Heroic)
37397 Utgarde Pinnacle (Heroic)
37398 Utgarde Pinnacle (Heroic)
37401 Utgarde Pinnacle (Heroic)
37407 Utgarde Pinnacle (Heroic)
37408 Utgarde Pinnacle (Heroic)
37409 Utgarde Pinnacle (Heroic)
37591 The Old Kingdom (Heroic)
37592 The Old Kingdom (Heroic)
37593 The Old Kingdom (Heroic)
37594 The Old Kingdom (Heroic)
37595 The Old Kingdom (Heroic)
37612 The Old Kingdom (Heroic)
37613 The Old Kingdom (Heroic)
37614 The Old Kingdom (Heroic)
37615 The Old Kingdom (Heroic)
37616 The Old Kingdom (Heroic)
37617 The Old Kingdom (Heroic)
37618 The Old Kingdom (Heroic)
37619 The Old Kingdom (Heroic)
37620 The Old Kingdom (Heroic)
37622 The Old Kingdom (Heroic)
37623 The Old Kingdom (Heroic)
37626 Gundrak (Heroic)
37627 Gundrak (Heroic)
37628 Gundrak (Heroic)
37629 Gundrak (Heroic)
37630 Gundrak (Heroic)
37631 Gundrak (Heroic)
37632 Gundrak (Heroic)
37633 Gundrak (Heroic)
37634 Gundrak (Heroic)
37635 Gundrak (Heroic)
37636 Gundrak (Heroic)
37637 Gundrak (Heroic)
37638 Gundrak (Heroic)
37639 Gundrak (Heroic)
37640 Gundrak (Heroic)
37641 Gundrak (Heroic)
37642 Gundrak (Heroic)
37643 Gundrak (Heroic)
37644 Gundrak (Heroic)
37645 Gundrak (Heroic)
37650 Halls of Stone (Heroic)
37651 Halls of Stone (Heroic)
37652 Halls of Stone (Heroic)
37653 Halls of Stone (Heroic)
37654 Halls of Stone (Heroic)
37655 Halls of Stone (Heroic)
37656 Halls of Stone (Heroic)
37657 Halls of Stone (Heroic)
37658 Halls of Stone (Heroic)
37660 Halls of Stone (Heroic)
37666 Halls of Stone (Heroic)
37667 Halls of Stone (Heroic)
37668 Halls of Stone (Heroic)
37669 Halls of Stone (Heroic)
37670 Halls of Stone (Heroic)
37675 The Culling of Stratholme (Heroic)
37678 The Culling of Stratholme (Heroic)
37679 The Culling of Stratholme (Heroic)
37680 The Culling of Stratholme (Heroic)
37681 The Culling of Stratholme (Heroic)
37682 The Culling of Stratholme (Heroic)
37683 The Culling of Stratholme (Heroic)
37684 The Culling of Stratholme (Heroic)
37685 The Culling of Stratholme (Heroic)
37686 The Culling of Stratholme (Heroic)
37687 The Culling of Stratholme (Heroic)
37688 The Culling of Stratholme (Heroic)
37689 The Culling of Stratholme (Heroic)
37690 The Culling of Stratholme (Heroic)
37691 The Culling of Stratholme (Heroic)
37692 The Culling of Stratholme (Heroic)
37693 The Culling of Stratholme (Heroic)
37694 The Culling of Stratholme (Heroic)
37695 The Culling of Stratholme (Heroic)
37696 The Culling of Stratholme (Heroic)
37712 Drak'Tharon Keep (Heroic)
37714 Drak'Tharon Keep (Heroic)
37715 Drak'Tharon Keep (Heroic)
37717 Drak'Tharon Keep (Heroic)
37718 Drak'Tharon Keep (Heroic)
37721 Drak'Tharon Keep (Heroic)
37722 Drak'Tharon Keep (Heroic)
37723 Drak'Tharon Keep (Heroic)
37724 Drak'Tharon Keep (Heroic)
37725 Drak'Tharon Keep (Heroic)
37726 Drak'Tharon Keep (Heroic)
37728 The Nexus (Heroic)
37729 The Nexus (Heroic)
37730 The Nexus (Heroic)
37731 The Nexus (Heroic)
37732 Drak'Tharon Keep (Heroic)
37733 Drak'Tharon Keep (Heroic)
37734 Drak'Tharon Keep (Heroic)
37735 Drak'Tharon Keep (Heroic)
37784 Drak'Tharon Keep (Heroic)
37788 Drak'Tharon Keep (Heroic)
37791 Drak'Tharon Keep (Heroic)
37798 Drak'Tharon Keep (Heroic)
37814 Halls of Lightning (Heroic)
37818 Halls of Lightning (Heroic)
37825 Halls of Lightning (Heroic)
37826 Halls of Lightning (Heroic)
37840 Halls of Lightning (Heroic)
37841 Halls of Lightning (Heroic)
37842 Halls of Lightning (Heroic)
37843 Halls of Lightning (Heroic)
37844 Halls of Lightning (Heroic)
37845 Halls of Lightning (Heroic)
37846 Halls of Lightning (Heroic)
37847 Halls of Lightning (Heroic)
37848 Halls of Lightning (Heroic)
37849 Halls of Lightning (Heroic)
37850 Halls of Lightning (Heroic)
37851 Halls of Lightning (Heroic)
37852 Halls of Lightning (Heroic)
37853 Halls of Lightning (Heroic)
37854 Halls of Lightning (Heroic)
37855 Halls of Lightning (Heroic)
37861 The Violet Hold (Heroic)
37862 The Violet Hold (Heroic)
37867 The Violet Hold (Heroic)
37868 The Violet Hold (Heroic)
37869 The Violet Hold (Heroic)
37870 The Violet Hold (Heroic)
37871 The Violet Hold (Heroic)
37872 The Violet Hold (Heroic)
37873 The Violet Hold (Heroic)
37874 The Violet Hold (Heroic)
37875 The Violet Hold (Heroic)
37876 The Violet Hold (Heroic)
37883 The Violet Hold (Heroic)
37884 The Violet Hold (Heroic)
37886 The Violet Hold (Heroic)
38506 Old Hillsbrad Foothills (Heroic)
38611 Halls of Stone (Normal)
38613 Halls of Stone (Normal)
38614 Halls of Stone (Normal)
38615 Halls of Stone (Heroic)
38616 Halls of Stone (Heroic)
38617 Halls of Stone (Heroic)
38618 Halls of Stone (Heroic)
38658 Karazhan
39139 Naxxramas (10)
39140 Naxxramas (10)
39141 Naxxramas (10)
39146 Naxxramas (10)
39152 Drak'Tharon Keep (Normal)
39152 Gundrak (Normal)
39152 Naxxramas (25)
39152 Onyxia's Lair (25)
39152 The Obsidian Sanctum (25)
39152 The Violet Hold (Normal)
39152 Ulduar (25)
39152 Utgarde Pinnacle (Normal)
39152 Vault of Archavon (25)
39188 Naxxramas (10)
39189 Naxxramas (10)
39190 Naxxramas (10)
39191 Naxxramas (10)
39192 Naxxramas (10)
39193 Naxxramas (10)
39195 Naxxramas (10)
39196 Naxxramas (10)
39197 Naxxramas (10)
39198 Naxxramas (10)
39199 Naxxramas (10)
39200 Naxxramas (10)
39215 Naxxramas (10)
39216 Naxxramas (10)
39217 Naxxramas (10)
39221 Naxxramas (10)
39224 Naxxramas (10)
39225 Naxxramas (10)
39226 Naxxramas (10)
39228 Naxxramas (10)
39229 Naxxramas (10)
39230 Naxxramas (10)
39231 Naxxramas (10)
39232 Naxxramas (10)
39233 Naxxramas (10)
39234 Naxxramas (10)
39236 Naxxramas (10)
39237 Naxxramas (10)
39239 Naxxramas (10)
39240 Naxxramas (10)
39241 Naxxramas (10)
39242 Naxxramas (10)
39243 Naxxramas (10)
39244 Naxxramas (10)
39245 Naxxramas (10)
39246 Naxxramas (10)
39247 Naxxramas (10)
39248 Naxxramas (10)
39249 Naxxramas (10)
39250 Naxxramas (10)
39251 Naxxramas (10)
39252 Naxxramas (10)
39254 Naxxramas (10)
39255 Naxxramas (10)
39256 Naxxramas (10)
39257 Naxxramas (10)
39258 Naxxramas (10)
39259 Naxxramas (10)
39260 Naxxramas (10)
39261 Naxxramas (10)
39262 Naxxramas (10)
39267 Naxxramas (10)
39270 Naxxramas (10)
39271 Naxxramas (10)
39272 Naxxramas (10)
39273 Naxxramas (10)
39274 Naxxramas (10)
39275 Naxxramas (10)
39276 Naxxramas (10)
39277 Naxxramas (10)
39278 Naxxramas (10)
39279 Naxxramas (10)
39280 Naxxramas (10)
39281 Naxxramas (10)
39282 Naxxramas (10)
39284 Naxxramas (10)
39285 Naxxramas (10)
39291 Naxxramas (10)
39292 Naxxramas (10)
39293 Naxxramas (10)
39294 Naxxramas (10)
39295 Naxxramas (10)
39296 Naxxramas (10)
39297 Naxxramas (10)
39298 Naxxramas (10)
39299 Naxxramas (10)
39306 Naxxramas (10)
39307 Naxxramas (10)
39308 Naxxramas (10)
39309 Naxxramas (10)
39311 Naxxramas (10)
39344 Naxxramas (10)
39345 Naxxramas (10)
39369 Naxxramas (10)
39379 Naxxramas (10)
39386 Naxxramas (10)
39388 Naxxramas (10)
39389 Naxxramas (10)
39390 Naxxramas (10)
39391 Naxxramas (10)
39392 Naxxramas (10)
39393 Naxxramas (10)
39394 Naxxramas (10)
39395 Naxxramas (10)
39396 Naxxramas (10)
39397 Naxxramas (10)
39397 Naxxramas (25)
39398 Naxxramas (10)
39399 Naxxramas (10)
39401 Naxxramas (10)
39403 Naxxramas (10)
39404 Naxxramas (10)
39405 Naxxramas (10)
39407 Naxxramas (10)
39408 Naxxramas (10)
39409 Naxxramas (10)
39415 Naxxramas (10)
39416 Naxxramas (10)
39417 Naxxramas (10)
39419 Naxxramas (10)
39420 Naxxramas (10)
39421 Naxxramas (10)
39422 Naxxramas (10)
39423 Naxxramas (10)
39424 Naxxramas (10)
39425 Naxxramas (10)
39426 Naxxramas (10)
39427 Naxxramas (10)
39427 Naxxramas (25)
39467 Naxxramas (10)
39467 Naxxramas (25)
39468 Naxxramas (10)
39470 Naxxramas (10)
39470 Naxxramas (25)
39473 Naxxramas (10)
39473 Naxxramas (25)
39492 Vault of Archavon (10)
39493 Vault of Archavon (10)
39495 Vault of Archavon (10)
39497 Vault of Archavon (10)
39498 Vault of Archavon (10)
39500 Vault of Archavon (10)
39515 Vault of Archavon (10)
39517 Vault of Archavon (10)
39519 Vault of Archavon (10)
39523 Vault of Archavon (10)
39528 Vault of Archavon (10)
39530 Vault of Archavon (10)
39534 Halls of Lightning (Normal)
39535 Halls of Lightning (Normal)
39536 Halls of Lightning (Normal)
39558 Vault of Archavon (10)
39560 Vault of Archavon (10)
39564 Vault of Archavon (10)
39579 Vault of Archavon (10)
39580 Vault of Archavon (10)
39582 Vault of Archavon (10)
39606 Vault of Archavon (10)
39607 Vault of Archavon (10)
39609 Vault of Archavon (10)
39611 Vault of Archavon (10)
39612 Vault of Archavon (10)
39617 Vault of Archavon (10)
39620 Vault of Archavon (10)
39622 Vault of Archavon (10)
39623 Vault of Archavon (10)
39626 Vault of Archavon (10)
39657 Halls of Lightning (Normal)
39701 Naxxramas (25)
39702 Naxxramas (25)
39703 Naxxramas (25)
39704 Naxxramas (25)
39706 Naxxramas (25)
39712 Naxxramas (25)
39714 Naxxramas (25)
39716 Naxxramas (25)
39718 Naxxramas (25)
39719 Naxxramas (25)
39720 Naxxramas (25)
39721 Naxxramas (25)
39722 Naxxramas (25)
39723 Naxxramas (25)
39724 Naxxramas (25)
39725 Naxxramas (25)
39726 Naxxramas (25)
39727 Naxxramas (25)
39728 Naxxramas (25)
39729 Naxxramas (25)
39730 Naxxramas (25)
39731 Naxxramas (25)
39732 Naxxramas (25)
39734 Naxxramas (25)
39735 Naxxramas (25)
39756 Naxxramas (25)
39757 Naxxramas (25)
39758 Naxxramas (25)
39759 Naxxramas (25)
39760 Naxxramas (25)
39761 Naxxramas (25)
39763 Naxxramas (25)
39764 Naxxramas (25)
39765 Naxxramas (25)
39766 Naxxramas (25)
39767 Naxxramas (25)
39768 Naxxramas (25)
39769 Karazhan
40060 Naxxramas (25)
40061 Naxxramas (25)
40062 Naxxramas (25)
40063 Naxxramas (25)
40064 Naxxramas (25)
40065 Naxxramas (25)
40069 Naxxramas (25)
40071 Naxxramas (25)
40074 Naxxramas (25)
40075 Naxxramas (25)
40080 Naxxramas (25)
40107 Naxxramas (25)
40108 Naxxramas (25)
40184 Naxxramas (25)
40185 Naxxramas (25)
40186 Naxxramas (25)
40188 Naxxramas (25)
40189 Naxxramas (25)
40190 Naxxramas (25)
40191 Naxxramas (25)
40192 Naxxramas (25)
40193 Naxxramas (25)
40194 The Eye of Eternity (25)
40196 Naxxramas (25)
40197 Naxxramas (25)
40198 Naxxramas (25)
40200 Naxxramas (25)
40201 Naxxramas (25)
40203 Naxxramas (25)
40204 Naxxramas (25)
40205 Naxxramas (25)
40207 Naxxramas (25)
40208 Naxxramas (25)
40209 Naxxramas (25)
40210 Naxxramas (25)
40233 Naxxramas (25)
40234 Naxxramas (25)
40235 Naxxramas (25)
40236 Naxxramas (25)
40237 Naxxramas (25)
40238 Naxxramas (25)
40239 Naxxramas (25)
40240 Naxxramas (25)
40241 Naxxramas (25)
40242 Naxxramas (25)
40243 Naxxramas (25)
40244 Naxxramas (25)
40245 Naxxramas (25)
40247 Naxxramas (25)
40249 Naxxramas (25)
40250 Naxxramas (25)
40251 Naxxramas (25)
40252 Naxxramas (25)
40253 Naxxramas (25)
40254 Naxxramas (25)
40255 Naxxramas (25)
40256 Naxxramas (25)
40257 Naxxramas (25)
40258 Naxxramas (25)
40259 Naxxramas (25)
40260 Naxxramas (25)
40261 Naxxramas (25)
40262 Naxxramas (25)
40263 Naxxramas (25)
40264 Naxxramas (25)
40265 Naxxramas (25)
40266 Naxxramas (25)
40267 Naxxramas (25)
40268 Naxxramas (25)
40269 Naxxramas (25)
40271 Naxxramas (25)
40272 Naxxramas (25)
40273 Naxxramas (25)
40274 Naxxramas (25)
40275 Naxxramas (25)
40277 Naxxramas (25)
40278 Naxxramas (25)
40279 Naxxramas (25)
40280 Naxxramas (25)
40281 Naxxramas (25)
40283 Naxxramas (25)
40284 Naxxramas (25)
40285 Naxxramas (25)
40286 Naxxramas (25)
40287 Naxxramas (25)
40288 Naxxramas (25)
40289 Naxxramas (25)
40294 Naxxramas (25)
40296 Naxxramas (25)
40297 Naxxramas (25)
40298 Naxxramas (25)
40299 Naxxramas (25)
40300 Naxxramas (25)
40301 Naxxramas (25)
40303 Naxxramas (25)
40304 Naxxramas (25)
40306 Naxxramas (25)
40315 Naxxramas (25)
40316 Naxxramas (25)
40317 Naxxramas (25)
40318 Naxxramas (25)
40319 Naxxramas (25)
40320 Naxxramas (25)
40321 Naxxramas (25)
40322 Naxxramas (25)
40323 Naxxramas (25)
40324 Naxxramas (25)
40325 Naxxramas (25)
40326 Naxxramas (25)
40327 Naxxramas (25)
40328 Naxxramas (25)
40329 Naxxramas (25)
40330 Naxxramas (25)
40331 Naxxramas (25)
40332 Naxxramas (25)
40333 Naxxramas (25)
40334 Naxxramas (25)
40335 Naxxramas (25)
40336 Naxxramas (25)
40337 Naxxramas (25)
40339 Naxxramas (25)
40340 Naxxramas (25)
40341 Naxxramas (25)
40342 Naxxramas (25)
40343 Naxxramas (25)
40344 Naxxramas (25)
40345 Naxxramas (25)
40346 Naxxramas (25)
40348 Naxxramas (25)
40349 Naxxramas (25)
40350 Naxxramas (25)
40351 Naxxramas (25)
40352 Naxxramas (25)
40363 Naxxramas (25)
40365 Naxxramas (25)
40366 Naxxramas (25)
40367 Naxxramas (25)
40368 Naxxramas (25)
40369 Naxxramas (25)
40370 Naxxramas (25)
40371 Naxxramas (25)
40372 Naxxramas (25)
40373 Naxxramas (25)
40374 Naxxramas (25)
40375 Naxxramas (25)
40376 Naxxramas (25)
40377 Naxxramas (25)
40378 Naxxramas (25)
40379 Naxxramas (25)
40380 Naxxramas (25)
40381 Naxxramas (25)
40382 Naxxramas (25)
40383 Naxxramas (25)
40384 Naxxramas (25)
40385 Naxxramas (25)
40386 Naxxramas (25)
40387 Naxxramas (25)
40388 Naxxramas (25)
40395 Naxxramas (25)
40396 Naxxramas (25)
40398 Naxxramas (25)
40399 Naxxramas (25)
40400 Naxxramas (25)
40401 Naxxramas (25)
40402 Naxxramas (25)
40403 Naxxramas (25)
40405 Naxxramas (25)
40406 Naxxramas (25)
40407 Naxxramas (25)
40408 Naxxramas (25)
40409 Naxxramas (25)
40410 Naxxramas (25)
40412 Naxxramas (25)
40414 Naxxramas (25)
40415 Vault of Archavon (25)
40417 Vault of Archavon (25)
40418 Vault of Archavon (25)
40422 Vault of Archavon (25)
40423 Vault of Archavon (25)
40427 The Obsidian Sanctum (10)
40428 The Obsidian Sanctum (10)
40429 The Obsidian Sanctum (10)
40430 The Obsidian Sanctum (10)
40431 The Obsidian Sanctum (25)
40432 The Obsidian Sanctum (25)
40433 The Obsidian Sanctum (25)
40437 The Obsidian Sanctum (25)
40438 The Obsidian Sanctum (25)
40445 Vault of Archavon (25)
40446 The Obsidian Sanctum (25)
40448 Vault of Archavon (25)
40449 Vault of Archavon (25)
40451 The Obsidian Sanctum (25)
40453 The Obsidian Sanctum (25)
40454 Vault of Archavon (25)
40455 The Obsidian Sanctum (25)
40457 Vault of Archavon (25)
40458 Vault of Archavon (25)
40460 Vault of Archavon (25)
40462 Vault of Archavon (25)
40463 Vault of Archavon (25)
40466 Vault of Archavon (25)
40468 Vault of Archavon (25)
40469 Vault of Archavon (25)
40471 Vault of Archavon (25)
40472 Vault of Archavon (25)
40475 The Eye of Eternity (10)
40486 The Eye of Eternity (10)
40488 The Eye of Eternity (10)
40489 The Eye of Eternity (10)
40490 Drak'Tharon Keep (Heroic)
40491 The Eye of Eternity (10)
40493 Vault of Archavon (25)
40495 Vault of Archavon (25)
40496 Vault of Archavon (25)
40497 The Eye of Eternity (10)
40500 Vault of Archavon (25)
40503 Vault of Archavon (25)
40504 Vault of Archavon (25)
40506 Vault of Archavon (25)
40508 Vault of Archavon (25)
40509 Vault of Archavon (25)
40511 The Eye of Eternity (10)
40512 Vault of Archavon (25)
40514 Vault of Archavon (25)
40515 Vault of Archavon (25)
40517 Vault of Archavon (25)
40519 The Eye of Eternity (10)
40520 Vault of Archavon (25)
40522 Vault of Archavon (25)
40523 Vault of Archavon (25)
40525 Vault of Archavon (25)
40526 The Eye of Eternity (10)
40526 The Eye of Eternity (25)
40527 Vault of Archavon (25)
40529 Vault of Archavon (25)
40531 The Eye of Eternity (25)
40532 The Eye of Eternity (25)
40539 The Eye of Eternity (25)
40541 The Eye of Eternity (25)
40543 The Eye of Eternity (25)
40544 Vault of Archavon (25)
40545 Vault of Archavon (25)
40547 Vault of Archavon (25)
40549 The Eye of Eternity (25)
40550 Vault of Archavon (25)
40552 Vault of Archavon (25)
40555 The Eye of Eternity (25)
40556 Vault of Archavon (25)
40559 Vault of Archavon (25)
40560 The Eye of Eternity (25)
40561 The Eye of Eternity (25)
40562 The Eye of Eternity (25)
40563 Vault of Archavon (25)
40564 The Eye of Eternity (25)
40566 The Eye of Eternity (25)
40567 Vault of Archavon (25)
40569 Vault of Archavon (25)
40570 Vault of Archavon (25)
40572 Vault of Archavon (25)
40574 Vault of Archavon (25)
40575 Vault of Archavon (25)
40577 Vault of Archavon (25)
40579 Vault of Archavon (25)
40580 Vault of Archavon (25)
40583 Vault of Archavon (25)
40588 The Eye of Eternity (25)
40589 The Eye of Eternity (25)
40590 The Eye of Eternity (25)
40591 The Eye of Eternity (25)
40592 The Eye of Eternity (25)
40594 The Eye of Eternity (25)
40602 Naxxramas (25)
40610 Naxxramas (10)
40610 Naxxramas (25)
40611 Naxxramas (10)
40611 Naxxramas (25)
40612 Naxxramas (10)
40612 Naxxramas (25)
40613 The Obsidian Sanctum (10)
40614 The Obsidian Sanctum (10)
40615 The Obsidian Sanctum (10)
40616 Naxxramas (10)
40617 Naxxramas (10)
40618 Naxxramas (10)
40619 Naxxramas (10)
40620 Naxxramas (10)
40621 Naxxramas (10)
40622 Naxxramas (10)
40623 Naxxramas (10)
40624 Naxxramas (10)
40625 Naxxramas (25)
40626 Naxxramas (25)
40627 Naxxramas (25)
40628 The Obsidian Sanctum (25)
40629 The Obsidian Sanctum (25)
40630 The Obsidian Sanctum (25)
40631 Naxxramas (25)
40632 Naxxramas (25)
40633 Naxxramas (25)
40634 Naxxramas (25)
40635 Naxxramas (25)
40636 Naxxramas (25)
40637 Naxxramas (25)
40638 Naxxramas (25)
40639 Naxxramas (25)
40781 Vault of Archavon (10)
40782 Vault of Archavon (10)
40783 Vault of Archavon (10)
40784 Vault of Archavon (25)
40785 Vault of Archavon (25)
40786 Vault of Archavon (25)
40801 Vault of Archavon (10)
40802 Vault of Archavon (10)
40803 Vault of Archavon (10)
40804 Vault of Archavon (10)
40804 Vault of Archavon (25)
40805 Vault of Archavon (25)
40806 Vault of Archavon (10)
40806 Vault of Archavon (25)
40807 Vault of Archavon (25)
40809 Vault of Archavon (10)
40809 Vault of Archavon (25)
40810 Vault of Archavon (25)
40811 Vault of Archavon (25)
40812 Vault of Archavon (25)
40840 Vault of Archavon (10)
40841 Vault of Archavon (10)
40842 Vault of Archavon (10)
40844 Vault of Archavon (10)
40844 Vault of Archavon (25)
40845 Vault of Archavon (10)
40845 Vault of Archavon (25)
40846 Vault of Archavon (25)
40847 Vault of Archavon (10)
40847 Vault of Archavon (25)
40848 Vault of Archavon (10)
40848 Vault of Archavon (25)
40849 Vault of Archavon (25)
40850 Vault of Archavon (25)
40851 Vault of Archavon (25)
40852 Vault of Archavon (25)
40881 Vault of Archavon (25)
40882 Vault of Archavon (25)
40883 Vault of Archavon (25)
40884 Vault of Archavon (25)
40889 Vault of Archavon (25)
40890 Vault of Archavon (25)
40904 Vault of Archavon (10)
40905 Vault of Archavon (25)
40925 Vault of Archavon (10)
40926 Vault of Archavon (25)
40927 Vault of Archavon (10)
40927 Vault of Archavon (25)
40928 Vault of Archavon (25)
40937 Vault of Archavon (10)
40938 Vault of Archavon (25)
40939 Vault of Archavon (25)
40940 Vault of Archavon (25)
40974 Vault of Archavon (10)
40976 Vault of Archavon (25)
40977 Vault of Archavon (25)
40978 Vault of Archavon (25)
40979 Vault of Archavon (25)
40983 Vault of Archavon (25)
40984 Vault of Archavon (25)
40990 Vault of Archavon (25)
40991 Vault of Archavon (25)
41000 Vault of Archavon (25)
41002 Vault of Archavon (25)
41006 Vault of Archavon (25)
41008 Vault of Archavon (25)
41026 Vault of Archavon (25)
41028 Vault of Archavon (25)
41032 Vault of Archavon (25)
41034 Vault of Archavon (25)
41071 Vault of Archavon (25)
41080 Vault of Archavon (25)
41085 Vault of Archavon (10)
41086 Vault of Archavon (25)
41136 Vault of Archavon (25)
41138 Vault of Archavon (25)
41141 Vault of Archavon (10)
41142 Vault of Archavon (10)
41142 Vault of Archavon (25)
41143 Vault of Archavon (10)
41143 Vault of Archavon (25)
41144 Vault of Archavon (25)
41198 Vault of Archavon (25)
41200 Vault of Archavon (25)
41203 Vault of Archavon (10)
41204 Vault of Archavon (10)
41204 Vault of Archavon (25)
41205 Vault of Archavon (10)
41205 Vault of Archavon (25)
41206 Vault of Archavon (25)
41225 Vault of Archavon (25)
41226 Vault of Archavon (25)
41230 Vault of Archavon (25)
41231 Vault of Archavon (25)
41235 Vault of Archavon (25)
41236 Vault of Archavon (25)
41286 Vault of Archavon (25)
41288 Vault of Archavon (25)
41292 Vault of Archavon (25)
41294 Vault of Archavon (25)
41297 Vault of Archavon (25)
41299 Vault of Archavon (25)
41303 Vault of Archavon (25)
41305 Vault of Archavon (25)
41309 Vault of Archavon (25)
41315 Vault of Archavon (25)
41648 Vault of Archavon (10)
41649 Vault of Archavon (25)
41653 Vault of Archavon (10)
41654 Vault of Archavon (10)
41654 Vault of Archavon (25)
41655 Vault of Archavon (10)
41655 Vault of Archavon (25)
41656 Vault of Archavon (25)
41660 Vault of Archavon (25)
41666 Vault of Archavon (25)
41668 Vault of Archavon (25)
41765 Vault of Archavon (10)
41766 Vault of Archavon (10)
41766 Vault of Archavon (25)
41767 Vault of Archavon (10)
41767 Vault of Archavon (25)
41768 Vault of Archavon (25)
41772 Vault of Archavon (25)
41774 Vault of Archavon (25)
41790 The Old Kingdom (Heroic)
41791 The Violet Hold (Heroic)
41792 Halls of Stone (Heroic)
41793 Utgarde Keep (Heroic)
41794 The Nexus (Heroic)
41795 Drak'Tharon Keep (Heroic)
41796 Azjol-Nerub (Heroic)
41797 Utgarde Pinnacle
41798 The Oculus
41799 Halls of Lightning
41832 Vault of Archavon (25)
41833 Vault of Archavon (25)
41836 Vault of Archavon (25)
41837 Vault of Archavon (25)
41840 Vault of Archavon (25)
41841 Vault of Archavon (25)
41857 Vault of Archavon (10)
41858 Vault of Archavon (25)
41862 Vault of Archavon (10)
41863 Vault of Archavon (25)
41864 Vault of Archavon (25)
41865 Vault of Archavon (25)
41872 Vault of Archavon (10)
41873 Vault of Archavon (25)
41874 Vault of Archavon (25)
41875 Vault of Archavon (25)
41881 Vault of Archavon (25)
41882 Vault of Archavon (25)
41885 Vault of Archavon (25)
41886 Vault of Archavon (25)
41893 Vault of Archavon (25)
41894 Vault of Archavon (25)
41898 Vault of Archavon (25)
41899 Vault of Archavon (25)
41903 Vault of Archavon (25)
41904 Vault of Archavon (25)
41909 Vault of Archavon (25)
41910 Vault of Archavon (25)
41919 Vault of Archavon (10)
41920 Vault of Archavon (25)
41925 Vault of Archavon (10)
41926 Vault of Archavon (25)
41927 Vault of Archavon (25)
41928 Vault of Archavon (25)
41938 Vault of Archavon (10)
41939 Vault of Archavon (25)
41940 Vault of Archavon (25)
41941 Vault of Archavon (25)
41950 Vault of Archavon (10)
41951 Vault of Archavon (25)
41957 Vault of Archavon (10)
41958 Vault of Archavon (10)
41958 Vault of Archavon (25)
41959 Vault of Archavon (10)
41959 Vault of Archavon (25)
41960 Vault of Archavon (25)
41969 Vault of Archavon (10)
41970 Vault of Archavon (10)
41970 Vault of Archavon (25)
41971 Vault of Archavon (10)
41971 Vault of Archavon (25)
41972 Vault of Archavon (25)
41997 Vault of Archavon (25)
42001 Vault of Archavon (10)
42003 Vault of Archavon (10)
42004 Vault of Archavon (10)
42004 Vault of Archavon (25)
42005 Vault of Archavon (10)
42005 Vault of Archavon (25)
42006 Vault of Archavon (25)
42015 Vault of Archavon (10)
42016 Vault of Archavon (10)
42016 Vault of Archavon (25)
42017 Vault of Archavon (10)
42017 Vault of Archavon (25)
42018 Vault of Archavon (25)
42034 Vault of Archavon (25)
42035 Vault of Archavon (25)
42041 Vault of Archavon (25)
42042 Vault of Archavon (25)
42074 Vault of Archavon (25)
42075 Vault of Archavon (25)
42081 Vault of Archavon (25)
42082 Vault of Archavon (25)
42116 Vault of Archavon (25)
42117 Vault of Archavon (25)
42118 Vault of Archavon (25)
42119 Vault of Archavon (25)
43085 The Culling of Stratholme (Heroic)
43277 The Old Kingdom (Normal)
43278 The Old Kingdom (Normal)
43279 The Old Kingdom (Normal)
43280 The Old Kingdom (Heroic)
43281 The Old Kingdom (Heroic)
43282 The Old Kingdom (Heroic)
43283 The Old Kingdom (Heroic)
43284 The Old Kingdom (Heroic)
43285 The Old Kingdom (Heroic)
43286 The Old Kingdom (Heroic)
43287 The Old Kingdom (Heroic)
43305 Gundrak (Normal)
43306 Gundrak (Normal)
43309 Gundrak (Normal)
43310 Gundrak (Heroic)
43311 Gundrak (Heroic)
43312 Gundrak (Heroic)
43313 Gundrak (Heroic)
43345 The Obsidian Sanctum (10)
43345 The Obsidian Sanctum (25)
43346 The Obsidian Sanctum (25)
43347 The Obsidian Sanctum (10)
43353 The Violet Hold (Normal)
43358 The Violet Hold (Normal)
43363 The Violet Hold (Normal)
43375 The Violet Hold (Normal)
43382 The Violet Hold (Normal)
43387 The Violet Hold (Normal)
43401 The Violet Hold (Heroic)
43402 The Violet Hold (Heroic)
43403 The Violet Hold (Heroic)
43404 The Violet Hold (Heroic)
43405 The Violet Hold (Heroic)
43406 The Violet Hold (Heroic)
43407 The Violet Hold (Heroic)
43408 The Violet Hold (Heroic)
43409 The Violet Hold (Heroic)
43410 The Violet Hold (Heroic)
43500 The Violet Hold (Heroic)
43507 Naxxramas (25)
43507 The Old Kingdom (Normal)
43507 Ulduar (25)
43508 Ulduar (25)
43508 Vault of Archavon (25)
43509 Naxxramas (25)
43510 Naxxramas (25)
43951 The Culling of Stratholme (Heroic)
43952 The Eye of Eternity (25)
43953 The Eye of Eternity (10)
43954 The Obsidian Sanctum (25)
43959 Vault of Archavon (25)
43988 The Obsidian Sanctum (10)
43989 The Obsidian Sanctum (10)
43990 The Obsidian Sanctum (10)
43991 The Obsidian Sanctum (10)
43992 The Obsidian Sanctum (10)
44000 The Obsidian Sanctum (25)
44002 The Obsidian Sanctum (25)
44003 The Obsidian Sanctum (25)
44004 The Obsidian Sanctum (25)
44005 The Obsidian Sanctum (25)
44006 The Obsidian Sanctum (25)
44007 The Obsidian Sanctum (25)
44008 The Obsidian Sanctum (25)
44011 The Obsidian Sanctum (25)
44569 Naxxramas (10)
44577 Naxxramas (25)
44731 Halls of Stone (Normal)
44731 Utgarde Keep
45038 Ulduar (25)
45086 Ulduar (25)
45106 Ulduar (25)
45108 Ulduar (25)
45109 Ulduar (25)
45110 Ulduar (25)
45111 Ulduar (25)
45112 Ulduar (25)
45113 Ulduar (25)
45114 Ulduar (25)
45115 Ulduar (25)
45116 Ulduar (25)
45117 Ulduar (25)
45118 Ulduar (25)
45119 Ulduar (25)
45137 Ulduar (25)
45138 Ulduar (25)
45139 Ulduar (25)
45140 Ulduar (25)
45142 Ulduar (25)
45143 Ulduar (25)
45144 Ulduar (25)
45145 Ulduar (25)
45146 Ulduar (25)
45147 Ulduar (25)
45148 Ulduar (25)
45149 Ulduar (25)
45150 Ulduar (25)
45151 Ulduar (25)
45157 Ulduar (25)
45158 Ulduar (25)
45161 Ulduar (25)
45162 Ulduar (25)
45164 Ulduar (25)
45165 Ulduar (25)
45166 Ulduar (25)
45168 Ulduar (25)
45169 Ulduar (25)
45170 Ulduar (25)
45171 Ulduar (25)
45185 Ulduar (25)
45186 Ulduar (25)
45187 Ulduar (25)
45193 Ulduar (25)
45224 Ulduar (25)
45225 Ulduar (25)
45226 Ulduar (25)
45227 Ulduar (25)
45228 Ulduar (25)
45232 Ulduar (25)
45233 Ulduar (25)
45234 Ulduar (25)
45235 Ulduar (25)
45236 Ulduar (25)
45238 Ulduar (25)
45239 Ulduar (25)
45240 Ulduar (25)
45241 Ulduar (25)
45242 Ulduar (25)
45243 Ulduar (25)
45244 Ulduar (25)
45245 Ulduar (25)
45246 Ulduar (25)
45248 Ulduar (25)
45249 Ulduar (25)
45250 Ulduar (25)
45251 Ulduar (25)
45252 Ulduar (25)
45253 Ulduar (25)
45254 Ulduar (25)
45255 Ulduar (25)
45256 Ulduar (25)
45257 Ulduar (25)
45258 Ulduar (25)
45259 Ulduar (25)
45260 Ulduar (25)
45261 Ulduar (25)
45262 Ulduar (25)
45263 Ulduar (25)
45264 Ulduar (25)
45265 Ulduar (25)
45266 Ulduar (25)
45267 Ulduar (25)
45268 Ulduar (25)
45269 Ulduar (25)
45270 Ulduar (25)
45271 Ulduar (25)
45272 Ulduar (25)
45273 Ulduar (25)
45275 Ulduar (25)
45282 Ulduar (10)
45283 Ulduar (10)
45284 Ulduar (10)
45285 Ulduar (10)
45286 Ulduar (10)
45287 Ulduar (10)
45288 Ulduar (10)
45289 Ulduar (10)
45292 Ulduar (10)
45294 Ulduar (10)
45298 Ulduar (10)
45299 Ulduar (10)
45302 Ulduar (10)
45303 Ulduar (10)
45304 Ulduar (10)
45305 Ulduar (10)
45306 Ulduar (10)
45307 Ulduar (10)
45308 Ulduar (10)
45309 Ulduar (10)
45310 Ulduar (10)
45311 Ulduar (10)
45312 Ulduar (10)
45313 Ulduar (10)
45314 Ulduar (10)
45315 Ulduar (25)
45317 Ulduar (10)
45318 Ulduar (10)
45319 Ulduar (25)
45320 Ulduar (25)
45321 Ulduar (10)
45324 Ulduar (10)
45325 Ulduar (25)
45326 Ulduar (25)
45327 Ulduar (25)
45329 Ulduar (10)
45330 Ulduar (10)
45331 Ulduar (10)
45332 Ulduar (10)
45333 Ulduar (10)
45334 Ulduar (25)
45337 Vault of Archavon (10)
45338 Vault of Archavon (10)
45341 Vault of Archavon (10)
45343 Vault of Archavon (10)
45345 Vault of Archavon (10)
45347 Vault of Archavon (10)
45351 Vault of Archavon (10)
45353 Vault of Archavon (10)
45355 Vault of Archavon (10)
45357 Vault of Archavon (10)
45360 Vault of Archavon (10)
45362 Vault of Archavon (10)
45367 Vault of Archavon (10)
45371 Vault of Archavon (10)
45378 Ulduar (10)
45383 Vault of Archavon (10)
45387 Vault of Archavon (10)
45388 Vault of Archavon (10)
45392 Vault of Archavon (10)
45394 Vault of Archavon (10)
45397 Vault of Archavon (10)
45399 Vault of Archavon (10)
45401 Vault of Archavon (10)
45409 Vault of Archavon (10)
45416 Vault of Archavon (10)
45418 Ulduar (10)
45419 Vault of Archavon (10)
45420 Vault of Archavon (10)
45423 Ulduar (10)
45426 Vault of Archavon (10)
45427 Vault of Archavon (10)
45430 Vault of Archavon (10)
45432 Vault of Archavon (10)
45434 Ulduar (25)
45436 Ulduar (25)
45437 Ulduar (25)
45438 Ulduar (25)
45439 Ulduar (25)
45440 Ulduar (25)
45441 Ulduar (25)
45447 Ulduar (10)
45448 Ulduar (10)
45449 Ulduar (10)
45451 Ulduar (25)
45452 Ulduar (25)
45453 Ulduar (25)
45454 Ulduar (25)
45455 Ulduar (10)
45456 Ulduar (10)
45457 Ulduar (25)
45458 Ulduar (10)
45459 Ulduar (25)
45460 Ulduar (25)
45461 Ulduar (25)
45462 Ulduar (25)
45463 Ulduar (25)
45464 Ulduar (10)
45466 Ulduar (25)
45467 Ulduar (25)
45469 Ulduar (25)
45470 Ulduar (25)
45471 Ulduar (25)
45472 Ulduar (25)
45473 Ulduar (25)
45474 Ulduar (25)
45479 Ulduar (25)
45481 Ulduar (25)
45482 Ulduar (25)
45483 Ulduar (25)
45484 Ulduar (25)
45485 Ulduar (25)
45486 Ulduar (25)
45487 Ulduar (25)
45488 Ulduar (25)
45489 Ulduar (25)
45490 Ulduar (25)
45491 Ulduar (25)
45492 Ulduar (25)
45494 Ulduar (25)
45495 Ulduar (25)
45496 Ulduar (25)
45497 Ulduar (25)
45498 Ulduar (25)
45501 Ulduar (25)
45502 Ulduar (25)
45503 Ulduar (25)
45505 Ulduar (25)
45506 Ulduar (10)
45507 Ulduar (25)
45508 Ulduar (25)
45509 Ulduar (25)
45510 Ulduar (25)
45511 Ulduar (25)
45512 Ulduar (25)
45513 Ulduar (25)
45514 Ulduar (25)
45515 Ulduar (25)
45517 Ulduar (25)
45519 Ulduar (25)
45521 Ulduar (25)
45522 Ulduar (25)
45523 Ulduar (25)
45524 Ulduar (25)
45525 Ulduar (25)
45527 Ulduar (25)
45529 Ulduar (25)
45530 Ulduar (25)
45531 Ulduar (25)
45532 Ulduar (25)
45534 Ulduar (25)
45535 Ulduar (25)
45537 Ulduar (25)
45538 Ulduar (25)
45539 Ulduar (25)
45540 Ulduar (25)
45541 Ulduar (25)
45542 Ulduar (25)
45543 Ulduar (25)
45544 Ulduar (25)
45547 Ulduar (25)
45548 Ulduar (25)
45549 Ulduar (25)
45570 Ulduar (25)
45587 Ulduar (25)
45594 Ulduar (25)
45599 Ulduar (25)
45605 Ulduar (25)
45607 Ulduar (25)
45609 Ulduar (25)
45610 Ulduar (25)
45611 Ulduar (25)
45612 Ulduar (25)
45613 Ulduar (25)
45615 Ulduar (25)
45616 Ulduar (25)
45617 Ulduar (25)
45619 Ulduar (25)
45620 Ulduar (25)
45632 Ulduar (25)
45633 Ulduar (25)
45634 Ulduar (25)
45635 Ulduar (10)
45636 Ulduar (10)
45637 Ulduar (10)
45638 Ulduar (25)
45639 Ulduar (25)
45640 Ulduar (25)
45641 Ulduar (25)
45642 Ulduar (25)
45643 Ulduar (25)
45644 Ulduar (10)
45645 Ulduar (10)
45646 Ulduar (10)
45647 Ulduar (10)
45648 Ulduar (10)
45649 Ulduar (10)
45650 Ulduar (10)
45651 Ulduar (10)
45652 Ulduar (10)
45653 Ulduar (25)
45654 Ulduar (25)
45655 Ulduar (25)
45656 Ulduar (25)
45657 Ulduar (25)
45658 Ulduar (25)
45659 Ulduar (10)
45660 Ulduar (10)
45661 Ulduar (10)
45663 Ulduar (25)
45665 Ulduar (25)
45675 Ulduar (10)
45676 Ulduar (10)
45677 Ulduar (10)
45679 Ulduar (10)
45682 Ulduar (10)
45685 Ulduar (10)
45686 Ulduar (10)
45687 Ulduar (10)
45694 Ulduar (10)
45695 Ulduar (10)
45696 Ulduar (10)
45697 Ulduar (10)
45698 Ulduar (10)
45699 Ulduar (10)
45700 Ulduar (10)
45701 Ulduar (10)
45702 Ulduar (10)
45703 Ulduar (10)
45707 Ulduar (10)
45708 Ulduar (10)
45711 Ulduar (10)
45712 Ulduar (10)
45713 Ulduar (10)
45832 Ulduar (10)
45857 Ulduar (25)
45864 Ulduar (10)
45865 Ulduar (10)
45866 Ulduar (10)
45867 Ulduar (10)
45868 Ulduar (10)
45869 Ulduar (10)
45870 Ulduar (10)
45871 Ulduar (10)
45872 Ulduar (10)
45873 Ulduar (10)
45876 Ulduar (10)
45877 Ulduar (10)
45886 Ulduar (10)
45887 Ulduar (10)
45888 Ulduar (10)
45892 Ulduar (10)
45893 Ulduar (10)
45894 Ulduar (10)
45895 Ulduar (10)
45928 Ulduar (10)
45929 Ulduar (10)
45930 Ulduar (10)
45931 Ulduar (10)
45933 Ulduar (10)
45934 Ulduar (10)
45935 Ulduar (10)
45936 Ulduar (10)
45940 Ulduar (10)
45941 Ulduar (10)
45943 Ulduar (10)
45945 Ulduar (10)
45946 Ulduar (10)
45947 Ulduar (10)
45972 Ulduar (10)
45973 Ulduar (10)
45974 Ulduar (10)
45976 Ulduar (10)
45982 Ulduar (10)
45988 Ulduar (10)
45989 Ulduar (10)
45990 Ulduar (10)
45993 Ulduar (10)
45996 Ulduar (10)
45997 Ulduar (10)
46008 Ulduar (10)
46010 Ulduar (10)
46011 Ulduar (10)
46012 Ulduar (10)
46013 Ulduar (10)
46014 Ulduar (10)
46015 Ulduar (10)
46016 Ulduar (10)
46018 Ulduar (10)
46019 Ulduar (10)
46021 Ulduar (10)
46022 Ulduar (10)
46024 Ulduar (10)
46025 Ulduar (10)
46027 Ulduar (25)
46028 Ulduar (10)
46030 Ulduar (10)
46031 Ulduar (10)
46032 Ulduar (10)
46033 Ulduar (10)
46034 Ulduar (10)
46035 Ulduar (10)
46036 Ulduar (10)
46037 Ulduar (10)
46038 Ulduar (10)
46039 Ulduar (10)
46040 Ulduar (10)
46041 Ulduar (10)
46042 Ulduar (10)
46043 Ulduar (10)
46044 Ulduar (10)
46045 Ulduar (10)
46046 Ulduar (10)
46047 Ulduar (10)
46048 Ulduar (10)
46049 Ulduar (10)
46050 Ulduar (10)
46051 Ulduar (10)
46052 Ulduar (10)
46053 Ulduar (25)
46068 Ulduar (10)
46095 Ulduar (10)
46097 Ulduar (10)
46110 Ulduar (10)
46110 Ulduar (25)
46113 Vault of Archavon (25)
46116 Vault of Archavon (25)
46119 Vault of Archavon (25)
46121 Vault of Archavon (25)
46124 Vault of Archavon (25)
46126 Vault of Archavon (25)
46131 Vault of Archavon (10)
46132 Vault of Archavon (25)
46133 Vault of Archavon (25)
46135 Vault of Archavon (25)
46138 Ulduar (25)
46139 Vault of Archavon (25)
46142 Vault of Archavon (25)
46144 Vault of Archavon (25)
46148 Vault of Archavon (25)
46150 Vault of Archavon (25)
46153 Vault of Archavon (25)
46155 Vault of Archavon (25)
46158 Vault of Archavon (25)
46160 Vault of Archavon (25)
46163 Vault of Archavon (25)
46164 Vault of Archavon (25)
46169 Vault of Archavon (25)
46170 Vault of Archavon (25)
46174 Vault of Archavon (25)
46176 Vault of Archavon (25)
46179 Vault of Archavon (25)
46181 Vault of Archavon (25)
46183 Vault of Archavon (25)
46185 Vault of Archavon (25)
46188 Vault of Archavon (25)
46189 Vault of Archavon (25)
46192 Vault of Archavon (25)
46195 Vault of Archavon (25)
46199 Vault of Archavon (25)
46200 Vault of Archavon (25)
46202 Vault of Archavon (25)
46207 Vault of Archavon (25)
46208 Vault of Archavon (25)
46210 Vault of Archavon (25)
46339 Ulduar (10)
46340 Ulduar (10)
46341 Ulduar (10)
46342 Ulduar (10)
46343 Ulduar (10)
46344 Ulduar (10)
46345 Ulduar (10)
46346 Ulduar (10)
46347 Ulduar (10)
46348 Ulduar (25)
46350 Ulduar (10)
46351 Ulduar (10)
46958 Trial of the Crusader (25)
46959 Trial of the Crusader (25)
46960 Trial of the Crusader (25)
46961 Trial of the Crusader (25)
46962 Trial of the Crusader (25)
46963 Trial of the Crusader (25)
46964 Trial of the Crusader (25H)
46965 Trial of the Crusader (25H)
46966 Trial of the Crusader (25H)
46967 Trial of the Crusader (25H)
46968 Trial of the Crusader (25H)
46969 Trial of the Crusader (25H)
46971 Trial of the Crusader (25H)
46972 Trial of the Crusader (25)
46973 Trial of the Crusader (25H)
46974 Trial of the Crusader (25)
46975 Trial of the Crusader (25H)
46976 Trial of the Crusader (25)
46977 Trial of the Crusader (25H)
46979 Trial of the Crusader (25)
46980 Trial of the Crusader (25H)
46985 Trial of the Crusader (25)
46986 Trial of the Crusader (25H)
46988 Trial of the Crusader (25)
46989 Trial of the Crusader (25H)
46990 Trial of the Crusader (25)
46991 Trial of the Crusader (25H)
46992 Trial of the Crusader (25)
46993 Trial of the Crusader (25H)
46994 Trial of the Crusader (25)
46995 Trial of the Crusader (25H)
46996 Trial of the Crusader (25)
46997 Trial of the Crusader (25)
46999 Trial of the Crusader (25)
47000 Trial of the Crusader (25)
47001 Trial of the Crusader (25H)
47002 Trial of the Crusader (25H)
47003 Trial of the Crusader (25H)
47004 Trial of the Crusader (25H)
47041 Trial of the Crusader (25)
47042 Trial of the Crusader (25)
47043 Trial of the Crusader (25)
47051 Trial of the Crusader (25)
47052 Trial of the Crusader (25)
47053 Trial of the Crusader (25)
47054 Trial of the Crusader (25)
47055 Trial of the Crusader (25)
47056 Trial of the Crusader (25)
47057 Trial of the Crusader (25)
47059 Trial of the Crusader (25H)
47060 Trial of the Crusader (25H)
47061 Trial of the Crusader (25H)
47062 Trial of the Crusader (25H)
47063 Trial of the Crusader (25H)
47064 Trial of the Crusader (25H)
47066 Trial of the Crusader (25H)
47067 Trial of the Crusader (25H)
47068 Trial of the Crusader (25H)
47069 Trial of the Crusader (25)
47070 Trial of the Crusader (25)
47071 Trial of the Crusader (25)
47072 Trial of the Crusader (25)
47073 Trial of the Crusader (25)
47074 Trial of the Crusader (25H)
47075 Trial of the Crusader (25H)
47076 Trial of the Crusader (25H)
47077 Trial of the Crusader (25H)
47078 Trial of the Crusader (25H)
47079 Trial of the Crusader (25)
47080 Trial of the Crusader (25)
47081 Trial of the Crusader (25)
47082 Trial of the Crusader (25)
47083 Trial of the Crusader (25)
47084 Trial of the Crusader (25H)
47085 Trial of the Crusader (25H)
47086 Trial of the Crusader (25H)
47087 Trial of the Crusader (25H)
47088 Trial of the Crusader (25H)
47090 Trial of the Crusader (25)
47092 Trial of the Crusader (25)
47093 Trial of the Crusader (25)
47094 Trial of the Crusader (25)
47095 Trial of the Crusader (25H)
47096 Trial of the Crusader (25H)
47097 Trial of the Crusader (25H)
47098 Trial of the Crusader (25H)
47099 Trial of the Crusader (25H)
47104 Trial of the Crusader (25)
47106 Trial of the Crusader (25)
47107 Trial of the Crusader (25)
47108 Trial of the Crusader (25)
47109 Trial of the Crusader (25H)
47110 Trial of the Crusader (25H)
47111 Trial of the Crusader (25H)
47112 Trial of the Crusader (25H)
47113 Trial of the Crusader (25H)
47114 Trial of the Crusader (25)
47115 Trial of the Crusader (25)
47116 Trial of the Crusader (25)
47121 Trial of the Crusader (25)
47126 Trial of the Crusader (25)
47129 Trial of the Crusader (25H)
47130 Trial of the Crusader (25H)
47131 Trial of the Crusader (25H)
47132 Trial of the Crusader (25H)
47133 Trial of the Crusader (25H)
47138 Trial of the Crusader (25)
47139 Trial of the Crusader (25)
47140 Trial of the Crusader (25)
47141 Trial of the Crusader (25)
47142 Trial of the Crusader (25)
47143 Trial of the Crusader (25H)
47144 Trial of the Crusader (25H)
47145 Trial of the Crusader (25H)
47146 Trial of the Crusader (25H)
47147 Trial of the Crusader (25H)
47148 Trial of the Crusader (25)
47150 Trial of the Crusader (25)
47151 Trial of the Crusader (25)
47152 Trial of the Crusader (25)
47170 Trial of the Champion (Normal)
47171 Trial of the Champion (Normal)
47172 Trial of the Champion (Normal)
47173 Trial of the Champion (Normal)
47174 Trial of the Champion (Normal)
47175 Trial of the Champion (Normal)
47176 Trial of the Champion (Normal)
47177 Trial of the Champion (Normal)
47178 Trial of the Champion (Normal)
47181 Trial of the Champion (Normal)
47182 Trial of the Crusader (25)
47183 Trial of the Crusader (25)
47184 Trial of the Crusader (25)
47185 Trial of the Champion (Normal)
47186 Trial of the Crusader (25)
47187 Trial of the Crusader (25)
47193 Trial of the Crusader (25)
47194 Trial of the Crusader (25)
47195 Trial of the Crusader (25)
47197 Trial of the Champion (Normal)
47199 Trial of the Champion (Normal)
47200 Trial of the Champion (Normal)
47201 Trial of the Champion (Normal)
47202 Trial of the Champion (Normal)
47203 Trial of the Crusader (25)
47204 Trial of the Crusader (25)
47210 Trial of the Champion (Normal)
47211 Trial of the Champion (Normal)
47212 Trial of the Champion (Normal)
47213 Trial of the Champion (Normal)
47214 Trial of the Champion (Normal)
47215 Trial of the Champion (Normal)
47216 Trial of the Champion (Normal)
47217 Trial of the Champion (Normal)
47218 Trial of the Champion (Normal)
47219 Trial of the Champion (Normal)
47220 Trial of the Champion (Normal)
47221 Trial of the Champion (Normal)
47222 Trial of the Champion (Normal)
47224 Trial of the Crusader (25H)
47225 Trial of the Crusader (25)
47226 Trial of the Champion (Normal)
47227 Trial of the Champion (Normal)
47228 Trial of the Champion (Normal)
47229 Trial of the Champion (Normal)
47230 Trial of the Champion (Normal)
47231 Trial of the Champion (Normal)
47232 Trial of the Champion (Normal)
47233 Trial of the Crusader (25)
47234 Trial of the Crusader (25)
47235 Trial of the Crusader (25)
47242 Trial of the Crusader (10H)
47242 Trial of the Crusader (25)
47243 Trial of the Champion (Heroic)
47244 Trial of the Champion (Heroic)
47245 Trial of the Champion (Heroic)
47248 Trial of the Champion (Heroic)
47249 Trial of the Champion (Heroic)
47250 Trial of the Champion (Heroic)
47251 Trial of the Crusader (25)
47252 Trial of the Crusader (25)
47253 Trial of the Crusader (25)
47254 Trial of the Crusader (25)
47255 Trial of the Crusader (25)
47256 Trial of the Crusader (25)
47258 Trial of the Crusader (25)
47259 Trial of the Crusader (25)
47260 Trial of the Crusader (25)
47261 Trial of the Crusader (25)
47262 Trial of the Crusader (25)
47263 Trial of the Crusader (25)
47264 Trial of the Crusader (25)
47265 Trial of the Crusader (25)
47266 Trial of the Crusader (25)
47267 Trial of the Crusader (25)
47268 Trial of the Crusader (25)
47269 Trial of the Crusader (25)
47270 Trial of the Crusader (25)
47271 Trial of the Crusader (25)
47272 Trial of the Crusader (25)
47273 Trial of the Crusader (25)
47274 Trial of the Crusader (25)
47275 Trial of the Crusader (25)
47276 Trial of the Crusader (25)
47277 Trial of the Crusader (25)
47279 Trial of the Crusader (25)
47280 Trial of the Crusader (25)
47281 Trial of the Crusader (25)
47282 Trial of the Crusader (25)
47283 Trial of the Crusader (25)
47284 Trial of the Crusader (25)
47285 Trial of the Crusader (25)
47286 Trial of the Crusader (25)
47287 Trial of the Crusader (25)
47288 Trial of the Crusader (25)
47289 Trial of the Crusader (25)
47290 Trial of the Crusader (25)
47292 Trial of the Crusader (25)
47293 Trial of the Crusader (25)
47294 Trial of the Crusader (25)
47295 Trial of the Crusader (25)
47296 Trial of the Crusader (25)
47298 Trial of the Crusader (25)
47299 Trial of the Crusader (25)
47300 Trial of the Crusader (25)
47301 Trial of the Crusader (25)
47302 Trial of the Crusader (25)
47303 Trial of the Crusader (25)
47304 Trial of the Crusader (25)
47305 Trial of the Crusader (25)
47306 Trial of the Crusader (25)
47307 Trial of the Crusader (25)
47308 Trial of the Crusader (25)
47309 Trial of the Crusader (25)
47310 Trial of the Crusader (25)
47311 Trial of the Crusader (25)
47312 Trial of the Crusader (25)
47313 Trial of the Crusader (25)
47314 Trial of the Crusader (25)
47316 Trial of the Crusader (25)
47317 Trial of the Crusader (25)
47318 Trial of the Crusader (25)
47319 Trial of the Crusader (25)
47320 Trial of the Crusader (25)
47321 Trial of the Crusader (25)
47322 Trial of the Crusader (25)
47323 Trial of the Crusader (25)
47324 Trial of the Crusader (25)
47325 Trial of the Crusader (25)
47326 Trial of the Crusader (25)
47327 Trial of the Crusader (25)
47328 Trial of the Crusader (25)
47329 Trial of the Crusader (25)
47330 Trial of the Crusader (25)
47412 Trial of the Crusader (25H)
47413 Trial of the Crusader (25H)
47414 Trial of the Crusader (25H)
47415 Trial of the Crusader (25H)
47416 Trial of the Crusader (25H)
47417 Trial of the Crusader (25H)
47418 Trial of the Crusader (25H)
47419 Trial of the Crusader (25H)
47420 Trial of the Crusader (25H)
47421 Trial of the Crusader (25H)
47422 Trial of the Crusader (25H)
47423 Trial of the Crusader (25H)
47424 Trial of the Crusader (25H)
47425 Trial of the Crusader (25H)
47426 Trial of the Crusader (25H)
47427 Trial of the Crusader (25H)
47428 Trial of the Crusader (25H)
47429 Trial of the Crusader (25H)
47430 Trial of the Crusader (25H)
47431 Trial of the Crusader (25H)
47432 Trial of the Crusader (25H)
47433 Trial of the Crusader (25H)
47434 Trial of the Crusader (25H)
47435 Trial of the Crusader (25H)
47436 Trial of the Crusader (25H)
47437 Trial of the Crusader (25H)
47438 Trial of the Crusader (25H)
47439 Trial of the Crusader (25H)
47440 Trial of the Crusader (25H)
47441 Trial of the Crusader (25H)
47442 Trial of the Crusader (25H)
47443 Trial of the Crusader (25H)
47444 Trial of the Crusader (25H)
47445 Trial of the Crusader (25H)
47446 Trial of the Crusader (25H)
47448 Trial of the Crusader (25H)
47449 Trial of the Crusader (25H)
47450 Trial of the Crusader (25H)
47451 Trial of the Crusader (25H)
47452 Trial of the Crusader (25H)
47453 Trial of the Crusader (25H)
47454 Trial of the Crusader (25H)
47455 Trial of the Crusader (25H)
47456 Trial of the Crusader (25H)
47457 Trial of the Crusader (25H)
47458 Trial of the Crusader (25H)
47459 Trial of the Crusader (25H)
47460 Trial of the Crusader (25H)
47461 Trial of the Crusader (25H)
47462 Trial of the Crusader (25H)
47463 Trial of the Crusader (25H)
47464 Trial of the Crusader (25H)
47465 Trial of the Crusader (25H)
47466 Trial of the Crusader (25H)
47467 Trial of the Crusader (25H)
47468 Trial of the Crusader (25H)
47469 Trial of the Crusader (25H)
47470 Trial of the Crusader (25H)
47471 Trial of the Crusader (25H)
47493 Trial of the Champion (Heroic)
47494 Trial of the Champion (Heroic)
47495 Trial of the Champion (Heroic)
47496 Trial of the Champion (Heroic)
47497 Trial of the Champion (Heroic)
47498 Trial of the Champion (Heroic)
47500 Trial of the Champion (Heroic)
47501 Trial of the Champion (Heroic)
47502 Trial of the Champion (Heroic)
47503 Trial of the Champion (Heroic)
47504 Trial of the Champion (Heroic)
47508 Trial of the Champion (Heroic)
47509 Trial of the Champion (Heroic)
47510 Trial of the Champion (Heroic)
47511 Trial of the Champion (Heroic)
47512 Trial of the Champion (Heroic)
47514 Trial of the Champion (Heroic)
47522 Trial of the Champion (Heroic)
47527 Trial of the Champion (Heroic)
47529 Trial of the Champion (Heroic)
47560 Trial of the Champion (Heroic)
47561 Trial of the Champion (Heroic)
47562 Trial of the Champion (Heroic)
47563 Trial of the Champion (Heroic)
47564 Trial of the Champion (Heroic)
47565 Trial of the Champion (Heroic)
47566 Trial of the Champion (Heroic)
47567 Trial of the Champion (Heroic)
47568 Trial of the Champion (Heroic)
47569 Trial of the Champion (Heroic)
47578 Trial of the Crusader (10)
47607 Trial of the Crusader (10)
47608 Trial of the Crusader (10)
47609 Trial of the Crusader (10)
47610 Trial of the Crusader (10)
47611 Trial of the Crusader (10)
47612 Trial of the Crusader (10)
47613 Trial of the Crusader (10)
47614 Trial of the Crusader (10)
47615 Trial of the Crusader (10)
47616 Trial of the Crusader (10)
47617 Trial of the Crusader (10)
47618 Trial of the Crusader (10)
47619 Trial of the Crusader (10)
47620 Trial of the Crusader (10)
47621 Trial of the Crusader (10)
47663 Trial of the Crusader (10)
47669 Trial of the Crusader (10)
47676 Trial of the Crusader (10)
47679 Trial of the Crusader (10)
47680 Trial of the Crusader (10)
47683 Trial of the Crusader (10)
47700 Trial of the Crusader (10)
47703 Trial of the Crusader (10)
47711 Trial of the Crusader (10)
47717 Trial of the Crusader (10)
47718 Trial of the Crusader (10)
47719 Trial of the Crusader (10)
47720 Trial of the Crusader (10)
47721 Trial of the Crusader (10)
47724 Trial of the Crusader (10)
47725 Trial of the Crusader (10)
47726 Trial of the Crusader (10)
47727 Trial of the Crusader (10)
47728 Trial of the Crusader (10)
47736 Trial of the Crusader (10)
47737 Trial of the Crusader (10)
47738 Trial of the Crusader (10)
47739 Trial of the Crusader (10)
47740 Trial of the Crusader (10)
47741 Trial of the Crusader (10)
47742 Trial of the Crusader (10)
47743 Trial of the Crusader (10)
47744 Trial of the Crusader (10)
47745 Trial of the Crusader (10)
47746 Trial of the Crusader (10)
47747 Trial of the Crusader (10)
47750 Vault of Archavon (10)
47752 Vault of Archavon (10)
47753 Vault of Archavon (25)
47755 Vault of Archavon (25)
47770 Vault of Archavon (25)
47772 Vault of Archavon (25)
47773 Vault of Archavon (10)
47775 Vault of Archavon (10)
47780 Vault of Archavon (25)
47782 Vault of Archavon (25)
47783 Vault of Archavon (10)
47785 Vault of Archavon (10)
47800 Vault of Archavon (10)
47802 Vault of Archavon (10)
47803 Vault of Archavon (25)
47805 Vault of Archavon (25)
47808 Trial of the Crusader (10)
47809 Trial of the Crusader (10)
47810 Trial of the Crusader (10)
47811 Trial of the Crusader (10)
47812 Trial of the Crusader (10)
47813 Trial of the Crusader (10)
47814 Trial of the Crusader (10)
47815 Trial of the Crusader (10)
47816 Trial of the Crusader (10)
47829 Trial of the Crusader (10)
47830 Trial of the Crusader (10)
47832 Trial of the Crusader (10)
47834 Trial of the Crusader (10)
47835 Trial of the Crusader (10)
47836 Trial of the Crusader (10)
47837 Trial of the Crusader (10)
47838 Trial of the Crusader (10)
47849 Trial of the Crusader (10)
47850 Trial of the Crusader (10)
47851 Trial of the Crusader (10)
47852 Trial of the Crusader (10)
47853 Trial of the Crusader (10)
47854 Trial of the Crusader (10)
47855 Trial of the Crusader (10)
47856 Trial of the Crusader (10)
47857 Trial of the Crusader (10)
47858 Trial of the Crusader (10)
47859 Trial of the Crusader (10)
47860 Trial of the Crusader (10)
47861 Trial of the Crusader (10)
47862 Trial of the Crusader (10)
47863 Trial of the Crusader (10)
47864 Trial of the Crusader (10)
47865 Trial of the Crusader (10)
47866 Trial of the Crusader (10)
47867 Trial of the Crusader (10)
47868 Trial of the Crusader (10)
47869 Trial of the Crusader (10)
47870 Trial of the Crusader (10)
47871 Trial of the Crusader (10)
47872 Trial of the Crusader (10)
47873 Trial of the Crusader (10)
47874 Trial of the Crusader (10)
47875 Trial of the Crusader (10)
47876 Trial of the Crusader (10)
47877 Trial of the Crusader (10)
47878 Trial of the Crusader (10)
47879 Trial of the Crusader (10)
47880 Trial of the Crusader (10)
47881 Trial of the Crusader (10)
47882 Trial of the Crusader (10)
47883 Trial of the Crusader (10)
47884 Trial of the Crusader (10)
47885 Trial of the Crusader (10)
47886 Trial of the Crusader (10)
47887 Trial of the Crusader (10)
47888 Trial of the Crusader (10)
47889 Trial of the Crusader (10)
47890 Trial of the Crusader (10)
47891 Trial of the Crusader (10)
47892 Trial of the Crusader (10)
47893 Trial of the Crusader (10)
47894 Trial of the Crusader (10)
47895 Trial of the Crusader (10)
47896 Trial of the Crusader (10)
47897 Trial of the Crusader (10)
47898 Trial of the Crusader (10)
47899 Trial of the Crusader (10)
47900 Trial of the Crusader (10)
47901 Trial of the Crusader (10)
47902 Trial of the Crusader (10)
47903 Trial of the Crusader (10)
47904 Trial of the Crusader (10)
47905 Trial of the Crusader (10)
47906 Trial of the Crusader (10)
47907 Trial of the Crusader (10)
47908 Trial of the Crusader (10)
47909 Trial of the Crusader (10)
47910 Trial of the Crusader (10)
47911 Trial of the Crusader (10)
47913 Trial of the Crusader (10)
47915 Trial of the Crusader (10H)
47916 Trial of the Crusader (10H)
47917 Trial of the Crusader (10H)
47918 Trial of the Crusader (10H)
47919 Trial of the Crusader (10H)
47920 Trial of the Crusader (10H)
47921 Trial of the Crusader (10H)
47922 Trial of the Crusader (10H)
47923 Trial of the Crusader (10H)
47924 Trial of the Crusader (10H)
47925 Trial of the Crusader (10H)
47926 Trial of the Crusader (10H)
47927 Trial of the Crusader (10H)
47928 Trial of the Crusader (10H)
47929 Trial of the Crusader (10H)
47930 Trial of the Crusader (10H)
47931 Trial of the Crusader (10H)
47932 Trial of the Crusader (10H)
47933 Trial of the Crusader (10H)
47934 Trial of the Crusader (10H)
47935 Trial of the Crusader (10H)
47937 Trial of the Crusader (10H)
47938 Trial of the Crusader (10H)
47939 Trial of the Crusader (10H)
47940 Trial of the Crusader (10H)
47941 Trial of the Crusader (10H)
47942 Trial of the Crusader (10H)
47943 Trial of the Crusader (10H)
47944 Trial of the Crusader (10H)
47945 Trial of the Crusader (10H)
47946 Trial of the Crusader (10H)
47947 Trial of the Crusader (10H)
47948 Trial of the Crusader (10H)
47949 Trial of the Crusader (10H)
47950 Trial of the Crusader (10H)
47951 Trial of the Crusader (10H)
47952 Trial of the Crusader (10H)
47953 Trial of the Crusader (10H)
47954 Trial of the Crusader (10H)
47955 Trial of the Crusader (10H)
47956 Trial of the Crusader (10H)
47957 Trial of the Crusader (10H)
47958 Trial of the Crusader (10H)
47959 Trial of the Crusader (10H)
47960 Trial of the Crusader (10H)
47961 Trial of the Crusader (10H)
47962 Trial of the Crusader (10H)
47963 Trial of the Crusader (10H)
47964 Trial of the Crusader (10H)
47965 Trial of the Crusader (10H)
47966 Trial of the Crusader (10H)
47967 Trial of the Crusader (10H)
47968 Trial of the Crusader (10H)
47969 Trial of the Crusader (10H)
47970 Trial of the Crusader (10H)
47971 Trial of the Crusader (10H)
47972 Trial of the Crusader (10H)
47973 Trial of the Crusader (10H)
47974 Trial of the Crusader (10H)
47975 Trial of the Crusader (10H)
47976 Trial of the Crusader (10H)
47977 Trial of the Crusader (10H)
47978 Trial of the Crusader (10H)
47979 Trial of the Crusader (10H)
47980 Vault of Archavon (10)
47982 Vault of Archavon (10)
47983 Vault of Archavon (25)
47985 Vault of Archavon (25)
47988 Trial of the Crusader (10H)
47989 Trial of the Crusader (10H)
47990 Trial of the Crusader (10H)
47991 Trial of the Crusader (10H)
47992 Trial of the Crusader (10H)
47993 Trial of the Crusader (10H)
47994 Trial of the Crusader (10H)
47995 Trial of the Crusader (10H)
47996 Trial of the Crusader (10H)
47997 Trial of the Crusader (10H)
47998 Trial of the Crusader (10H)
47999 Trial of the Crusader (10H)
48000 Trial of the Crusader (10H)
48001 Trial of the Crusader (10H)
48002 Trial of the Crusader (10H)
48003 Trial of the Crusader (10H)
48004 Trial of the Crusader (10H)
48005 Trial of the Crusader (10H)
48006 Trial of the Crusader (10H)
48007 Trial of the Crusader (10H)
48008 Trial of the Crusader (10H)
48009 Trial of the Crusader (10H)
48010 Trial of the Crusader (10H)
48011 Trial of the Crusader (10H)
48012 Trial of the Crusader (10H)
48013 Trial of the Crusader (10H)
48014 Trial of the Crusader (10H)
48015 Trial of the Crusader (10H)
48016 Trial of the Crusader (10H)
48017 Trial of the Crusader (10H)
48018 Trial of the Crusader (10H)
48019 Trial of the Crusader (10H)
48020 Trial of the Crusader (10H)
48021 Trial of the Crusader (10H)
48022 Trial of the Crusader (10H)
48023 Trial of the Crusader (10H)
48024 Trial of the Crusader (10H)
48025 Trial of the Crusader (10H)
48026 Trial of the Crusader (10H)
48027 Trial of the Crusader (10H)
48028 Trial of the Crusader (10H)
48030 Trial of the Crusader (10H)
48032 Trial of the Crusader (10H)
48034 Trial of the Crusader (10H)
48036 Trial of the Crusader (10H)
48038 Trial of the Crusader (10H)
48039 Trial of the Crusader (10H)
48040 Trial of the Crusader (10H)
48041 Trial of the Crusader (10H)
48042 Trial of the Crusader (10H)
48043 Trial of the Crusader (10H)
48044 Trial of the Crusader (10H)
48045 Trial of the Crusader (10H)
48046 Trial of the Crusader (10H)
48047 Trial of the Crusader (10H)
48048 Trial of the Crusader (10H)
48049 Trial of the Crusader (10H)
48050 Trial of the Crusader (10H)
48051 Trial of the Crusader (10H)
48052 Trial of the Crusader (10H)
48053 Trial of the Crusader (10H)
48054 Trial of the Crusader (10H)
48055 Trial of the Crusader (10H)
48056 Trial of the Crusader (10H)
48064 Vault of Archavon (25)
48066 Vault of Archavon (25)
48072 Vault of Archavon (10)
48074 Vault of Archavon (10)
48077 Vault of Archavon (25)
48079 Vault of Archavon (25)
48094 Vault of Archavon (25)
48096 Vault of Archavon (25)
48097 Vault of Archavon (10)
48099 Vault of Archavon (10)
48133 Vault of Archavon (25)
48135 Vault of Archavon (25)
48150 Vault of Archavon (25)
48152 Vault of Archavon (25)
48153 Vault of Archavon (10)
48163 Vault of Archavon (25)
48165 Vault of Archavon (25)
48180 Vault of Archavon (25)
48182 Vault of Archavon (25)
48192 Vault of Archavon (10)
48193 Vault of Archavon (25)
48195 Vault of Archavon (25)
48210 Vault of Archavon (25)
48212 Vault of Archavon (25)
48220 Vault of Archavon (10)
48222 Vault of Archavon (10)
48224 Vault of Archavon (25)
48226 Vault of Archavon (25)
48239 Vault of Archavon (25)
48241 Vault of Archavon (25)
48244 Vault of Archavon (10)
48246 Vault of Archavon (10)
48252 Vault of Archavon (10)
48254 Vault of Archavon (10)
48256 Vault of Archavon (25)
48258 Vault of Archavon (25)
48271 Vault of Archavon (25)
48273 Vault of Archavon (25)
48276 Vault of Archavon (10)
48278 Vault of Archavon (10)
48286 Vault of Archavon (25)
48288 Vault of Archavon (25)
48301 Vault of Archavon (25)
48303 Vault of Archavon (25)
48317 Vault of Archavon (25)
48319 Vault of Archavon (25)
48332 Vault of Archavon (25)
48334 Vault of Archavon (25)
48347 Vault of Archavon (25)
48349 Vault of Archavon (25)
48362 Vault of Archavon (25)
48364 Vault of Archavon (25)
48367 Vault of Archavon (10)
48375 Vault of Archavon (10)
48377 Vault of Archavon (25)
48379 Vault of Archavon (25)
48387 Vault of Archavon (10)
48389 Vault of Archavon (10)
48392 Vault of Archavon (25)
48394 Vault of Archavon (25)
48445 Vault of Archavon (10)
48446 Vault of Archavon (25)
48452 Vault of Archavon (25)
48457 Vault of Archavon (10)
48459 Vault of Archavon (10)
48462 Vault of Archavon (25)
48464 Vault of Archavon (25)
48476 Vault of Archavon (10)
48480 Vault of Archavon (10)
48482 Vault of Archavon (25)
48484 Vault of Archavon (25)
48497 Vault of Archavon (25)
48499 Vault of Archavon (25)
48502 Vault of Archavon (10)
48504 Vault of Archavon (10)
48533 Vault of Archavon (10)
48537 Vault of Archavon (10)
48539 Vault of Archavon (25)
48541 Vault of Archavon (25)
48554 Vault of Archavon (25)
48556 Vault of Archavon (25)
48561 Vault of Archavon (10)
48574 Vault of Archavon (10)
48576 Vault of Archavon (25)
48578 Vault of Archavon (25)
48591 Vault of Archavon (25)
48593 Vault of Archavon (25)
48608 Vault of Archavon (25)
48610 Vault of Archavon (25)
48623 Vault of Archavon (25)
48625 Vault of Archavon (25)
48638 Vault of Archavon (25)
48640 Vault of Archavon (25)
48655 Vault of Archavon (10)
48658 Vault of Archavon (25)
48660 Vault of Archavon (25)
48666 Trial of the Crusader (10H)
48667 Trial of the Crusader (10H)
48671 Trial of the Crusader (10H)
48672 Trial of the Crusader (10H)
48675 Trial of the Crusader (10H)
48693 Trial of the Crusader (10H)
48695 Trial of the Crusader (10H)
48697 Trial of the Crusader (10H)
48699 Trial of the Crusader (10H)
48701 Trial of the Crusader (10H)
48703 Trial of the Crusader (10H)
48705 Trial of the Crusader (10H)
48708 Trial of the Crusader (10H)
48709 Trial of the Crusader (10H)
48710 Trial of the Crusader (10H)
48711 Trial of the Crusader (10H)
48712 Trial of the Crusader (10H)
48713 Trial of the Crusader (10H)
48714 Trial of the Crusader (10H)
49044 Trial of the Crusader (10H)
49046 Trial of the Crusader (10H)
49231 Trial of the Crusader (10)
49232 Trial of the Crusader (10)
49233 Trial of the Crusader (10H)
49234 Trial of the Crusader (10H)
49235 Trial of the Crusader (10)
49236 Trial of the Crusader (10)
49237 Trial of the Crusader (10H)
49238 Trial of the Crusader (10H)
49295 Onyxia's Lair (10)
49295 Onyxia's Lair (25)
49296 Onyxia's Lair (10)
49297 Onyxia's Lair (10)
49298 Onyxia's Lair (10)
49299 Onyxia's Lair (10)
49301 Onyxia's Lair (10)
49302 Onyxia's Lair (10)
49303 Onyxia's Lair (10)
49304 Onyxia's Lair (10)
49305 Onyxia's Lair (10)
49306 Onyxia's Lair (10)
49307 Onyxia's Lair (10)
49308 Onyxia's Lair (10)
49309 Onyxia's Lair (10)
49310 Onyxia's Lair (10)
49315 Onyxia's Lair (10)
49316 Onyxia's Lair (10)
49317 Onyxia's Lair (10)
49318 Onyxia's Lair (10)
49319 Onyxia's Lair (10)
49320 Onyxia's Lair (10)
49321 Onyxia's Lair (10)
49322 Onyxia's Lair (10)
49323 Onyxia's Lair (10)
49324 Onyxia's Lair (10)
49325 Onyxia's Lair (10)
49326 Onyxia's Lair (10)
49327 Onyxia's Lair (10)
49328 Onyxia's Lair (10)
49329 Onyxia's Lair (10)
49330 Onyxia's Lair (10)
49331 Onyxia's Lair (10)
49332 Onyxia's Lair (10)
49333 Onyxia's Lair (10)
49437 Onyxia's Lair (10)
49463 Onyxia's Lair (10)
49464 Onyxia's Lair (25)
49465 Onyxia's Lair (25)
49466 Onyxia's Lair (25)
49467 Onyxia's Lair (25)
49468 Onyxia's Lair (25)
49469 Onyxia's Lair (25)
49470 Onyxia's Lair (25)
49471 Onyxia's Lair (25)
49472 Onyxia's Lair (25)
49473 Onyxia's Lair (25)
49474 Onyxia's Lair (25)
49475 Onyxia's Lair (25)
49476 Onyxia's Lair (25)
49477 Onyxia's Lair (25)
49478 Onyxia's Lair (25)
49479 Onyxia's Lair (25)
49480 Onyxia's Lair (25)
49481 Onyxia's Lair (25)
49482 Onyxia's Lair (25)
49483 Onyxia's Lair (25)
49484 Onyxia's Lair (25)
49488 Onyxia's Lair (25)
49489 Onyxia's Lair (25)
49490 Onyxia's Lair (25)
49491 Onyxia's Lair (25)
49492 Onyxia's Lair (25)
49493 Onyxia's Lair (25)
49494 Onyxia's Lair (25)
49495 Onyxia's Lair (25)
49496 Onyxia's Lair (25)
49497 Onyxia's Lair (25)
49498 Onyxia's Lair (25)
49499 Onyxia's Lair (25)
49500 Onyxia's Lair (25)
49501 Onyxia's Lair (25)
49636 Onyxia's Lair (10)
49636 Onyxia's Lair (25)
49643 Onyxia's Lair (10)
49643 Onyxia's Lair (25)
49644 Onyxia's Lair (10)
49644 Onyxia's Lair (25)
]]

Engravings["Drops in:"] = setmetatable({}, {
	__index = function(t,i)
		local v = DROP_LOCATIONS:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})
