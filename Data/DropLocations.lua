
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
21525 Auchenai Crypts
21525 Shadow Labyrinth (Heroic)
21525 The Oculus
21525 The Shattered Halls (Heroic)
21903 Karazhan
21904 Karazhan
21905 The Arcatraz
21906 The Mechanar (Normal)
21907 The Mechanar (Heroic)
22206 Halls of Stone (Normal)
22206 The Old Kingdom (Heroic)
22206 Utgarde Keep
22533 The Steamvault (Heroic)
22543 Mana-Tombs (Heroic)
22544 Auchenai Crypts (Heroic)
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
33117 The Mechanar (Normal)
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
34699 Magisters' Terrace
34700 Magisters' Terrace
34701 Magisters' Terrace
34702 Magisters' Terrace
34703 Magisters' Terrace
34704 Magisters' Terrace
34705 Magisters' Terrace
34706 Magisters' Terrace
34707 Magisters' Terrace
34708 Magisters' Terrace
34783 Magisters' Terrace
34788 Magisters' Terrace
34789 Magisters' Terrace
34790 Magisters' Terrace (Normal)
34791 Magisters' Terrace
34792 Magisters' Terrace
34793 Magisters' Terrace
34794 Magisters' Terrace
34795 Magisters' Terrace
34796 Magisters' Terrace
34797 Magisters' Terrace
34798 Magisters' Terrace
34799 Magisters' Terrace
34807 Magisters' Terrace
34808 Magisters' Terrace
34809 Magisters' Terrace
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
39139 Naxxramas (Normal)
39140 Naxxramas (Normal)
39141 Naxxramas (Normal)
39146 Naxxramas (Normal)
39152 Drak'Tharon Keep (Normal)
39152 Gundrak (Normal)
39152 Naxxramas (Heroic)
39152 The Obsidian Sanctum (Heroic)
39152 The Violet Hold (Normal)
39152 Utgarde Pinnacle (Normal)
39152 Vault of Archavon
39188 Naxxramas (Normal)
39189 Naxxramas (Normal)
39190 Naxxramas (Normal)
39191 Naxxramas (Normal)
39192 Naxxramas (Normal)
39193 Naxxramas (Normal)
39195 Naxxramas (Normal)
39196 Naxxramas (Normal)
39197 Naxxramas (Normal)
39198 Naxxramas (Normal)
39199 Naxxramas (Normal)
39200 Naxxramas (Normal)
39215 Naxxramas (Normal)
39216 Naxxramas (Normal)
39217 Naxxramas (Normal)
39221 Naxxramas (Normal)
39224 Naxxramas (Normal)
39225 Naxxramas (Normal)
39226 Naxxramas (Normal)
39228 Naxxramas (Normal)
39229 Naxxramas (Normal)
39230 Naxxramas (Normal)
39231 Naxxramas (Normal)
39232 Naxxramas (Normal)
39233 Naxxramas (Normal)
39234 Naxxramas (Normal)
39236 Naxxramas (Normal)
39237 Naxxramas (Normal)
39239 Naxxramas (Normal)
39240 Naxxramas (Normal)
39241 Naxxramas (Normal)
39242 Naxxramas (Normal)
39243 Naxxramas (Normal)
39244 Naxxramas (Normal)
39245 Naxxramas (Normal)
39246 Naxxramas (Normal)
39247 Naxxramas (Normal)
39248 Naxxramas (Normal)
39249 Naxxramas (Normal)
39250 Naxxramas (Normal)
39251 Naxxramas (Normal)
39252 Naxxramas (Normal)
39254 Naxxramas (Normal)
39255 Naxxramas (Normal)
39256 Naxxramas (Normal)
39257 Naxxramas (Normal)
39258 Naxxramas (Normal)
39259 Naxxramas (Normal)
39260 Naxxramas (Normal)
39261 Naxxramas (Normal)
39262 Naxxramas (Normal)
39267 Naxxramas (Normal)
39270 Naxxramas (Normal)
39271 Naxxramas (Normal)
39272 Naxxramas (Normal)
39273 Naxxramas (Normal)
39274 Naxxramas (Normal)
39275 Naxxramas (Normal)
39276 Naxxramas (Normal)
39277 Naxxramas (Normal)
39278 Naxxramas (Normal)
39279 Naxxramas (Normal)
39280 Naxxramas (Normal)
39281 Naxxramas (Normal)
39282 Naxxramas (Normal)
39284 Naxxramas (Normal)
39285 Naxxramas (Normal)
39291 Naxxramas (Normal)
39292 Naxxramas (Normal)
39293 Naxxramas (Normal)
39294 Naxxramas (Normal)
39295 Naxxramas (Normal)
39296 Naxxramas (Normal)
39297 Naxxramas (Normal)
39298 Naxxramas (Normal)
39299 Naxxramas (Normal)
39306 Naxxramas (Normal)
39307 Naxxramas (Normal)
39308 Naxxramas (Normal)
39309 Naxxramas (Normal)
39311 Naxxramas (Normal)
39344 Naxxramas (Normal)
39345 Naxxramas (Normal)
39369 Naxxramas (Normal)
39379 Naxxramas (Normal)
39386 Naxxramas (Normal)
39388 Naxxramas (Normal)
39389 Naxxramas (Normal)
39390 Naxxramas (Normal)
39391 Naxxramas (Normal)
39392 Naxxramas (Normal)
39393 Naxxramas (Normal)
39394 Naxxramas (Normal)
39395 Naxxramas (Normal)
39396 Naxxramas (Normal)
39397 Naxxramas (Normal)
39398 Naxxramas (Normal)
39399 Naxxramas (Normal)
39401 Naxxramas (Normal)
39403 Naxxramas (Normal)
39404 Naxxramas (Normal)
39405 Naxxramas (Normal)
39407 Naxxramas (Normal)
39408 Naxxramas (Normal)
39409 Naxxramas (Normal)
39415 Naxxramas (Normal)
39416 Naxxramas (Normal)
39417 Naxxramas (Normal)
39419 Naxxramas (Normal)
39420 Naxxramas (Normal)
39421 Naxxramas (Normal)
39422 Naxxramas (Normal)
39423 Naxxramas (Normal)
39424 Naxxramas (Normal)
39425 Naxxramas (Normal)
39426 Naxxramas (Normal)
39427 Naxxramas (Normal)
39467 Naxxramas (Normal)
39468 Naxxramas (Normal)
39470 Naxxramas (Normal)
39473 Naxxramas (Normal)
39492 Vault of Archavon (Normal)
39493 Vault of Archavon (Normal)
39495 Vault of Archavon (Normal)
39497 Vault of Archavon (Normal)
39498 Vault of Archavon (Normal)
39500 Vault of Archavon (Normal)
39515 Vault of Archavon (Normal)
39517 Vault of Archavon (Normal)
39519 Vault of Archavon (Normal)
39523 Vault of Archavon (Normal)
39528 Vault of Archavon (Normal)
39530 Vault of Archavon (Normal)
39534 Halls of Lightning (Normal)
39535 Halls of Lightning (Normal)
39536 Halls of Lightning (Normal)
39539 Vault of Archavon (Normal)
39543 Vault of Archavon (Normal)
39546 Vault of Archavon (Normal)
39554 Vault of Archavon (Normal)
39555 Vault of Archavon (Normal)
39557 Vault of Archavon (Normal)
39558 Vault of Archavon (Normal)
39560 Vault of Archavon (Normal)
39564 Vault of Archavon (Normal)
39579 Vault of Archavon (Normal)
39580 Vault of Archavon (Normal)
39582 Vault of Archavon (Normal)
39589 Vault of Archavon (Normal)
39593 Vault of Archavon (Normal)
39595 Vault of Archavon (Normal)
39606 Vault of Archavon (Normal)
39607 Vault of Archavon (Normal)
39609 Vault of Archavon (Normal)
39611 Vault of Archavon (Normal)
39612 Vault of Archavon (Normal)
39617 Vault of Archavon (Normal)
39620 Vault of Archavon (Normal)
39622 Vault of Archavon (Normal)
39623 Vault of Archavon (Normal)
39626 Vault of Archavon (Normal)
39630 Vault of Archavon (Normal)
39634 Vault of Archavon (Normal)
39638 Vault of Archavon (Normal)
39639 Vault of Archavon (Normal)
39657 Halls of Lightning (Normal)
39701 Naxxramas (Heroic)
39702 Naxxramas (Heroic)
39703 Naxxramas (Heroic)
39704 Naxxramas (Heroic)
39706 Naxxramas (Heroic)
39712 Naxxramas (Heroic)
39714 Naxxramas (Heroic)
39716 Naxxramas (Heroic)
39718 Naxxramas (Heroic)
39719 Naxxramas (Heroic)
39720 Naxxramas (Heroic)
39721 Naxxramas (Heroic)
39722 Naxxramas (Heroic)
39723 Naxxramas (Heroic)
39725 Naxxramas (Heroic)
39726 Naxxramas (Heroic)
39727 Naxxramas (Heroic)
39728 Naxxramas (Heroic)
39729 Naxxramas (Heroic)
39730 Naxxramas (Heroic)
39731 Naxxramas (Heroic)
39732 Naxxramas (Heroic)
39734 Naxxramas (Heroic)
39735 Naxxramas (Heroic)
39756 Naxxramas (Heroic)
39757 Naxxramas (Heroic)
39758 Naxxramas (Heroic)
39759 Naxxramas (Heroic)
39760 Naxxramas (Heroic)
39761 Naxxramas (Heroic)
39763 Naxxramas (Heroic)
39764 Naxxramas (Heroic)
39765 Naxxramas (Heroic)
39766 Naxxramas (Heroic)
39767 Naxxramas (Heroic)
39768 Naxxramas (Heroic)
39769 Karazhan
40060 Naxxramas (Heroic)
40061 Naxxramas (Heroic)
40062 Naxxramas (Heroic)
40063 Naxxramas (Heroic)
40064 Naxxramas (Heroic)
40065 Naxxramas (Heroic)
40069 Naxxramas (Heroic)
40071 Naxxramas (Heroic)
40074 Naxxramas (Heroic)
40075 Naxxramas (Heroic)
40080 Naxxramas (Heroic)
40107 Naxxramas (Heroic)
40108 Naxxramas (Heroic)
40184 Naxxramas (Heroic)
40185 Naxxramas (Heroic)
40186 Naxxramas (Heroic)
40188 Naxxramas (Heroic)
40189 Naxxramas (Heroic)
40190 Naxxramas (Heroic)
40191 Naxxramas (Heroic)
40192 Naxxramas (Heroic)
40193 Naxxramas (Heroic)
40194 The Eye of Eternity (Heroic)
40196 Naxxramas (Heroic)
40197 Naxxramas (Heroic)
40198 Naxxramas (Heroic)
40200 Naxxramas (Heroic)
40201 Naxxramas (Heroic)
40203 Naxxramas (Heroic)
40204 Naxxramas (Heroic)
40205 Naxxramas (Heroic)
40207 Naxxramas (Heroic)
40208 Naxxramas (Heroic)
40209 Naxxramas (Heroic)
40210 Naxxramas (Heroic)
40233 Naxxramas (Heroic)
40234 Naxxramas (Heroic)
40235 Naxxramas (Heroic)
40236 Naxxramas (Heroic)
40237 Naxxramas (Heroic)
40238 Naxxramas (Heroic)
40239 Naxxramas (Heroic)
40240 Naxxramas (Heroic)
40241 Naxxramas (Heroic)
40242 Naxxramas (Heroic)
40243 Naxxramas (Heroic)
40244 Naxxramas (Heroic)
40245 Naxxramas (Heroic)
40247 Naxxramas (Heroic)
40249 Naxxramas (Heroic)
40250 Naxxramas (Heroic)
40251 Naxxramas (Heroic)
40252 Naxxramas (Heroic)
40253 Naxxramas (Heroic)
40254 Naxxramas (Heroic)
40255 Naxxramas (Heroic)
40256 Naxxramas (Heroic)
40257 Naxxramas (Heroic)
40258 Naxxramas (Heroic)
40259 Naxxramas (Heroic)
40260 Naxxramas (Heroic)
40261 Naxxramas (Heroic)
40262 Naxxramas (Heroic)
40263 Naxxramas (Heroic)
40264 Naxxramas (Heroic)
40265 Naxxramas (Heroic)
40266 Naxxramas (Heroic)
40267 Naxxramas (Heroic)
40268 Naxxramas (Heroic)
40269 Naxxramas (Heroic)
40271 Naxxramas (Heroic)
40272 Naxxramas (Heroic)
40273 Naxxramas (Heroic)
40274 Naxxramas (Heroic)
40275 Naxxramas (Heroic)
40277 Naxxramas (Heroic)
40278 Naxxramas (Heroic)
40279 Naxxramas (Heroic)
40280 Naxxramas (Heroic)
40281 Naxxramas (Heroic)
40283 Naxxramas (Heroic)
40284 Naxxramas (Heroic)
40285 Naxxramas (Heroic)
40286 Naxxramas (Heroic)
40287 Naxxramas (Heroic)
40288 Naxxramas (Heroic)
40289 Naxxramas (Heroic)
40294 Naxxramas (Heroic)
40296 Naxxramas (Heroic)
40297 Naxxramas (Heroic)
40298 Naxxramas (Heroic)
40299 Naxxramas (Heroic)
40300 Naxxramas (Heroic)
40301 Naxxramas (Heroic)
40303 Naxxramas (Heroic)
40304 Naxxramas (Heroic)
40306 Naxxramas (Heroic)
40315 Naxxramas (Heroic)
40316 Naxxramas (Heroic)
40317 Naxxramas (Heroic)
40318 Naxxramas (Heroic)
40319 Naxxramas (Heroic)
40320 Naxxramas (Heroic)
40321 Naxxramas (Heroic)
40322 Naxxramas (Heroic)
40323 Naxxramas (Heroic)
40324 Naxxramas (Heroic)
40325 Naxxramas (Heroic)
40326 Naxxramas (Heroic)
40327 Naxxramas (Heroic)
40328 Naxxramas (Heroic)
40329 Naxxramas (Heroic)
40330 Naxxramas (Heroic)
40331 Naxxramas (Heroic)
40332 Naxxramas (Heroic)
40333 Naxxramas (Heroic)
40334 Naxxramas (Heroic)
40335 Naxxramas (Heroic)
40336 Naxxramas (Heroic)
40337 Naxxramas (Heroic)
40339 Naxxramas (Heroic)
40340 Naxxramas (Heroic)
40341 Naxxramas (Heroic)
40342 Naxxramas (Heroic)
40343 Naxxramas (Heroic)
40344 Naxxramas (Heroic)
40345 Naxxramas (Heroic)
40346 Naxxramas (Heroic)
40348 Naxxramas (Heroic)
40349 Naxxramas (Heroic)
40350 Naxxramas (Heroic)
40351 Naxxramas (Heroic)
40352 Naxxramas (Heroic)
40363 Naxxramas (Heroic)
40365 Naxxramas (Heroic)
40366 Naxxramas (Heroic)
40367 Naxxramas (Heroic)
40368 Naxxramas (Heroic)
40369 Naxxramas (Heroic)
40370 Naxxramas (Heroic)
40371 Naxxramas (Heroic)
40372 Naxxramas (Heroic)
40373 Naxxramas (Heroic)
40374 Naxxramas (Heroic)
40375 Naxxramas (Heroic)
40376 Naxxramas (Heroic)
40377 Naxxramas (Heroic)
40378 Naxxramas (Heroic)
40379 Naxxramas (Heroic)
40380 Naxxramas (Heroic)
40381 Naxxramas (Heroic)
40382 Naxxramas (Heroic)
40383 Naxxramas (Heroic)
40384 Naxxramas (Heroic)
40385 Naxxramas (Heroic)
40386 Naxxramas (Heroic)
40387 Naxxramas (Heroic)
40388 Naxxramas (Heroic)
40395 Naxxramas (Heroic)
40396 Naxxramas (Heroic)
40398 Naxxramas (Heroic)
40399 Naxxramas (Heroic)
40400 Naxxramas (Heroic)
40401 Naxxramas (Heroic)
40402 Naxxramas (Heroic)
40403 Naxxramas (Heroic)
40405 Naxxramas (Heroic)
40406 Naxxramas (Heroic)
40407 Naxxramas (Heroic)
40408 Naxxramas (Heroic)
40409 Naxxramas (Heroic)
40410 Naxxramas (Heroic)
40412 Naxxramas (Heroic)
40414 Naxxramas (Heroic)
40415 Vault of Archavon (Heroic)
40417 Vault of Archavon (Heroic)
40418 Vault of Archavon (Heroic)
40422 Vault of Archavon (Heroic)
40423 Vault of Archavon (Heroic)
40427 The Obsidian Sanctum (Normal)
40428 The Obsidian Sanctum (Normal)
40429 The Obsidian Sanctum (Normal)
40430 The Obsidian Sanctum (Normal)
40431 The Obsidian Sanctum (Heroic)
40432 The Obsidian Sanctum (Heroic)
40437 The Obsidian Sanctum (Heroic)
40438 The Obsidian Sanctum (Heroic)
40445 Vault of Archavon (Heroic)
40446 The Obsidian Sanctum (Heroic)
40448 Vault of Archavon (Heroic)
40449 Vault of Archavon (Heroic)
40451 The Obsidian Sanctum (Heroic)
40453 The Obsidian Sanctum (Heroic)
40454 Vault of Archavon (Heroic)
40455 The Obsidian Sanctum (Heroic)
40457 Vault of Archavon (Heroic)
40458 Vault of Archavon (Heroic)
40460 Vault of Archavon (Heroic)
40462 Vault of Archavon (Heroic)
40463 Vault of Archavon (Heroic)
40466 Vault of Archavon (Heroic)
40468 Vault of Archavon (Heroic)
40469 Vault of Archavon (Heroic)
40471 Vault of Archavon (Heroic)
40472 Vault of Archavon (Heroic)
40475 The Eye of Eternity (Normal)
40486 The Eye of Eternity (Normal)
40488 The Eye of Eternity (Normal)
40489 The Eye of Eternity (Normal)
40490 Drak'Tharon Keep (Heroic)
40491 The Eye of Eternity (Normal)
40493 Vault of Archavon (Heroic)
40495 Vault of Archavon (Heroic)
40496 Vault of Archavon (Heroic)
40497 The Eye of Eternity (Normal)
40500 Vault of Archavon (Heroic)
40503 Vault of Archavon (Heroic)
40504 Vault of Archavon (Heroic)
40506 Vault of Archavon (Heroic)
40508 Vault of Archavon (Heroic)
40509 Vault of Archavon (Heroic)
40511 The Eye of Eternity (Normal)
40512 Vault of Archavon (Heroic)
40514 Vault of Archavon (Heroic)
40515 Vault of Archavon (Heroic)
40517 Vault of Archavon (Heroic)
40519 The Eye of Eternity (Normal)
40520 Vault of Archavon (Heroic)
40522 Vault of Archavon (Heroic)
40523 Vault of Archavon (Heroic)
40525 Vault of Archavon (Heroic)
40526 The Eye of Eternity (Normal)
40527 Vault of Archavon (Heroic)
40529 Vault of Archavon (Heroic)
40531 The Eye of Eternity (Heroic)
40532 The Eye of Eternity (Heroic)
40539 The Eye of Eternity (Heroic)
40541 The Eye of Eternity (Heroic)
40543 The Eye of Eternity (Heroic)
40544 Vault of Archavon (Heroic)
40545 Vault of Archavon (Heroic)
40547 Vault of Archavon (Heroic)
40549 The Eye of Eternity (Heroic)
40550 Vault of Archavon (Heroic)
40552 Vault of Archavon (Heroic)
40555 The Eye of Eternity (Heroic)
40556 Vault of Archavon (Heroic)
40559 Vault of Archavon (Heroic)
40560 The Eye of Eternity (Heroic)
40561 The Eye of Eternity (Heroic)
40562 The Eye of Eternity (Heroic)
40563 Vault of Archavon (Heroic)
40564 The Eye of Eternity (Heroic)
40566 The Eye of Eternity (Heroic)
40567 Vault of Archavon (Heroic)
40569 Vault of Archavon (Heroic)
40570 Vault of Archavon (Heroic)
40572 Vault of Archavon (Heroic)
40574 Vault of Archavon (Heroic)
40575 Vault of Archavon (Heroic)
40577 Vault of Archavon (Heroic)
40579 Vault of Archavon (Heroic)
40580 Vault of Archavon (Heroic)
40583 Vault of Archavon (Heroic)
40588 The Eye of Eternity (Heroic)
40589 The Eye of Eternity (Heroic)
40590 The Eye of Eternity (Heroic)
40591 The Eye of Eternity (Heroic)
40592 The Eye of Eternity (Heroic)
40594 The Eye of Eternity (Heroic)
40602 Naxxramas (Heroic)
40610 Naxxramas (Normal)
40611 Naxxramas (Normal)
40612 Naxxramas (Normal)
40613 The Obsidian Sanctum (Normal)
40614 The Obsidian Sanctum (Normal)
40615 The Obsidian Sanctum (Normal)
40616 Naxxramas (Normal)
40617 Naxxramas (Normal)
40618 Naxxramas (Normal)
40619 Naxxramas (Normal)
40620 Naxxramas (Normal)
40621 Naxxramas (Normal)
40622 Naxxramas (Normal)
40623 Naxxramas (Normal)
40624 Naxxramas (Normal)
40625 Naxxramas (Heroic)
40626 Naxxramas (Heroic)
40627 Naxxramas (Heroic)
40628 The Obsidian Sanctum (Heroic)
40629 The Obsidian Sanctum (Heroic)
40630 The Obsidian Sanctum (Heroic)
40631 Naxxramas (Heroic)
40632 Naxxramas (Heroic)
40633 Naxxramas (Heroic)
40634 Naxxramas (Heroic)
40635 Naxxramas (Heroic)
40636 Naxxramas (Heroic)
40637 Naxxramas (Heroic)
40638 Naxxramas (Heroic)
40639 Naxxramas (Heroic)
40752 Azjol-Nerub (Heroic)
40752 Drak'Tharon Keep (Heroic)
40752 Gundrak (Heroic)
40752 Halls of Lightning (Heroic)
40752 Halls of Stone (Heroic)
40752 Naxxramas (Normal)
40752 The Culling of Stratholme (Heroic)
40752 The Eye of Eternity (Normal)
40752 The Nexus (Heroic)
40752 The Obsidian Sanctum (Normal)
40752 The Oculus (Heroic)
40752 The Old Kingdom (Heroic)
40752 The Violet Hold (Heroic)
40752 Utgarde Keep (Heroic)
40752 Utgarde Pinnacle (Heroic)
40752 Vault of Archavon (Normal)
40753 Naxxramas (Heroic)
40753 The Eye of Eternity (Heroic)
40753 The Obsidian Sanctum (Heroic)
40753 Vault of Archavon (Heroic)
40781 Vault of Archavon (Normal)
40782 Vault of Archavon (Normal)
40783 Vault of Archavon (Normal)
40784 Vault of Archavon (Heroic)
40785 Vault of Archavon (Heroic)
40786 Vault of Archavon (Heroic)
40801 Vault of Archavon (Normal)
40802 Vault of Archavon (Normal)
40803 Vault of Archavon (Normal)
40804 Vault of Archavon (Heroic)
40805 Vault of Archavon (Heroic)
40806 Vault of Archavon (Heroic)
40840 Vault of Archavon (Normal)
40841 Vault of Archavon (Normal)
40842 Vault of Archavon (Normal)
40844 Vault of Archavon (Heroic)
40845 Vault of Archavon (Heroic)
40846 Vault of Archavon (Heroic)
40904 Vault of Archavon (Normal)
40905 Vault of Archavon (Heroic)
40925 Vault of Archavon (Normal)
40926 Vault of Archavon (Heroic)
40937 Vault of Archavon (Normal)
40938 Vault of Archavon (Heroic)
40990 Vault of Archavon (Heroic)
40991 Vault of Archavon (Heroic)
41000 Vault of Archavon (Heroic)
41005 Vault of Archavon (Normal)
41006 Vault of Archavon (Heroic)
41026 Vault of Archavon (Heroic)
41031 Vault of Archavon (Normal)
41032 Vault of Archavon (Heroic)
41079 Vault of Archavon (Normal)
41080 Vault of Archavon (Heroic)
41085 Vault of Archavon (Normal)
41086 Vault of Archavon (Heroic)
41135 Vault of Archavon (Normal)
41136 Vault of Archavon (Heroic)
41141 Vault of Archavon (Normal)
41142 Vault of Archavon (Heroic)
41162 Vault of Archavon (Normal)
41198 Vault of Archavon (Heroic)
41203 Vault of Archavon (Normal)
41204 Vault of Archavon (Heroic)
41286 Vault of Archavon (Heroic)
41291 Vault of Archavon (Normal)
41292 Vault of Archavon (Heroic)
41296 Vault of Archavon (Normal)
41297 Vault of Archavon (Heroic)
41302 Vault of Archavon (Normal)
41303 Vault of Archavon (Heroic)
41308 Vault of Archavon (Normal)
41309 Vault of Archavon (Heroic)
41314 Vault of Archavon (Normal)
41315 Vault of Archavon (Heroic)
41648 Vault of Archavon (Normal)
41649 Vault of Archavon (Heroic)
41653 Vault of Archavon (Normal)
41654 Vault of Archavon (Heroic)
41660 Vault of Archavon (Heroic)
41665 Vault of Archavon (Normal)
41666 Vault of Archavon (Heroic)
41765 Vault of Archavon (Normal)
41766 Vault of Archavon (Heroic)
41771 Vault of Archavon (Normal)
41772 Vault of Archavon (Heroic)
41790 The Old Kingdom (Heroic)
41791 The Violet Hold (Heroic)
41792 Halls of Stone (Heroic)
41793 Utgarde Keep (Heroic)
41794 The Nexus (Heroic)
41795 Drak'Tharon Keep (Heroic)
41796 Azjol-Nerub (Heroic)
41797 Utgarde Pinnacle
41798 The Oculus (Normal)
41799 Halls of Lightning
41857 Vault of Archavon (Normal)
41858 Vault of Archavon (Heroic)
41862 Vault of Archavon (Normal)
41863 Vault of Archavon (Heroic)
41872 Vault of Archavon (Normal)
41873 Vault of Archavon (Heroic)
41919 Vault of Archavon (Normal)
41920 Vault of Archavon (Heroic)
41925 Vault of Archavon (Normal)
41926 Vault of Archavon (Heroic)
41938 Vault of Archavon (Normal)
41939 Vault of Archavon (Heroic)
41950 Vault of Archavon (Normal)
41951 Vault of Archavon (Heroic)
41957 Vault of Archavon (Normal)
41958 Vault of Archavon (Heroic)
41969 Vault of Archavon (Normal)
41970 Vault of Archavon (Heroic)
41997 Vault of Archavon (Heroic)
42001 Vault of Archavon (Normal)
42003 Vault of Archavon (Normal)
42004 Vault of Archavon (Heroic)
42015 Vault of Archavon (Normal)
42016 Vault of Archavon (Heroic)
43085 The Culling of Stratholme (Heroic)
43228 Azjol-Nerub
43228 Drak'Tharon Keep
43228 Gundrak
43228 Halls of Lightning
43228 Halls of Stone
43228 The Culling of Stratholme
43228 The Nexus
43228 The Oculus
43228 The Old Kingdom
43228 The Violet Hold
43228 Utgarde Keep
43228 Utgarde Pinnacle
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
43345 The Obsidian Sanctum
43346 The Obsidian Sanctum (Heroic)
43347 The Obsidian Sanctum (Normal)
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
43507 Naxxramas (Heroic)
43507 The Old Kingdom (Normal)
43507 Vault of Archavon (Heroic)
43508 Naxxramas (Normal)
43509 Naxxramas (Heroic)
43510 Naxxramas (Heroic)
43510 Vault of Archavon (Heroic)
43951 The Culling of Stratholme (Heroic)
43952 The Eye of Eternity (Heroic)
43953 The Eye of Eternity (Normal)
43954 The Obsidian Sanctum (Heroic)
43988 The Obsidian Sanctum (Normal)
43989 The Obsidian Sanctum (Normal)
43990 The Obsidian Sanctum (Normal)
43991 The Obsidian Sanctum (Normal)
43992 The Obsidian Sanctum (Normal)
44000 The Obsidian Sanctum (Heroic)
44002 The Obsidian Sanctum (Heroic)
44003 The Obsidian Sanctum (Heroic)
44004 The Obsidian Sanctum (Heroic)
44005 The Obsidian Sanctum (Heroic)
44006 The Obsidian Sanctum (Heroic)
44007 The Obsidian Sanctum (Heroic)
44008 The Obsidian Sanctum (Heroic)
44011 The Obsidian Sanctum (Heroic)
44151 Utgarde Pinnacle (Heroic)
44569 Naxxramas (Normal)
44577 Naxxramas (Heroic)
44731 Halls of Stone
44731 The Old Kingdom
44731 Utgarde Keep
]]

Engravings["Drops in:"] = setmetatable({}, {
	__index = function(t,i)
		local v = DROP_LOCATIONS:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})
