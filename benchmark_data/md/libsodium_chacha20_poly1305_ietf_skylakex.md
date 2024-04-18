[//]: # (@generated)

| operation     | cycles              |
|---------------|---------------------|
| encrypt_empty |   685.4416 ± 8.3461 |
| aad empty     |   685.8088 ± 6.8295 |
| decrypt empty |   715.6659 ± 6.1929 |
| encrypt empty |   690.1524 ± 7.3979 |

| bytes   | aad                 | decrypt             | encrypt             |
|---------|---------------------|---------------------|---------------------|
| 16b     |    45.7141 ± 0.3868 |    78.2888 ± 0.6581 |    76.2850 ± 1.0026 |
| 32b     |    23.6037 ± 0.1889 |    39.9221 ± 0.3028 |    38.8587 ± 0.5223 |
| 48b     |    16.3262 ± 0.1748 |    27.4698 ± 0.2516 |    27.0885 ± 0.1921 |
| 64b     |    13.0142 ± 0.2878 |    21.0360 ± 0.3121 |    20.4883 ± 0.2994 |
| 80b     |    10.7849 ± 0.1443 |    22.8879 ± 0.1920 |    22.1791 ± 0.3441 |
| 96b     |     9.2189 ± 0.0799 |    19.2306 ± 0.1354 |    18.7235 ± 0.1703 |
| 112b    |     8.2251 ± 0.0740 |    16.8811 ± 0.1509 |    16.6768 ± 0.0998 |
| 128b    |     7.4808 ± 0.0784 |    14.8093 ± 0.1296 |    14.4890 ± 0.1462 |
| 144b    |     6.8869 ± 0.0725 |    16.5305 ± 0.1755 |    16.2354 ± 0.2018 |
| 160b    |     6.4640 ± 0.0846 |    15.2792 ± 0.1998 |    15.0215 ± 0.1620 |
| 176b    |     6.0915 ± 0.0832 |    14.2231 ± 0.1519 |    13.8752 ± 0.1053 |
| 192b    |     5.7108 ± 0.0498 |    12.8981 ± 0.1252 |    12.7176 ± 0.1600 |
| 208b    |     5.3782 ± 0.0429 |    14.1220 ± 0.1417 |    13.8812 ± 0.0824 |
| 224b    |     5.1628 ± 0.0430 |    13.3304 ± 0.1631 |    13.0388 ± 0.0702 |
| 240b    |     4.9646 ± 0.0492 |    12.6608 ± 0.0756 |    12.4270 ± 0.1056 |
| 256b    |     4.7708 ± 0.0596 |    11.7691 ± 0.0668 |    11.7060 ± 0.1126 |
| 384b    |     3.8872 ± 0.0276 |    10.8489 ± 0.1146 |    10.6535 ± 0.0997 |
| 512b    |     3.4684 ± 0.0351 |    10.5078 ± 0.1117 |    10.3289 ± 0.0884 |
| 640b    |     3.2080 ± 0.0310 |    10.1529 ± 0.1105 |    10.0238 ± 0.0727 |
| 768b    |     3.0068 ± 0.0218 |     9.8931 ± 0.0602 |     9.9298 ± 0.0720 |
| 896b    |     2.8603 ± 0.0249 |     9.7396 ± 0.0690 |     9.7325 ± 0.0783 |
| 1kb     |     2.7553 ± 0.0264 |     9.6204 ± 0.0802 |     9.5645 ± 0.0653 |
| 1.125kb |     2.6661 ± 0.0180 |     9.5094 ± 0.0734 |     9.4636 ± 0.0800 |
| 1.25kb  |     2.6202 ± 0.0167 |     9.4281 ± 0.0680 |     9.3958 ± 0.0777 |
| 1.375kb |     2.5591 ± 0.0172 |     9.3099 ± 0.0464 |     9.3209 ± 0.0794 |
| 1.5kb   |     2.5368 ± 0.0133 |     9.3903 ± 0.0854 |     9.2844 ± 0.0442 |
| 1.625kb |     2.5298 ± 0.0247 |     9.2843 ± 0.0708 |     9.3064 ± 0.0785 |
| 1.75kb  |     2.4794 ± 0.0155 |     9.1976 ± 0.0485 |     9.2151 ± 0.0564 |
| 1.875kb |     2.4645 ± 0.0201 |     9.2554 ± 0.1135 |     9.2164 ± 0.0667 |
| 2kb     |     2.4189 ± 0.0127 |     9.2056 ± 0.0645 |     9.2126 ± 0.0740 |
| 2.125kb |     2.4091 ± 0.0152 |     9.1579 ± 0.0577 |     9.1223 ± 0.0594 |
| 2.25kb  |     2.4046 ± 0.0136 |     9.2194 ± 0.0680 |     9.1779 ± 0.0754 |
| 2.375kb |     2.3825 ± 0.0132 |     9.1945 ± 0.0574 |     9.1735 ± 0.0608 |
| 2.5kb   |     2.3814 ± 0.0120 |     9.1746 ± 0.0698 |     9.1304 ± 0.0590 |
| 2.625kb |     2.3592 ± 0.0127 |     9.1585 ± 0.0703 |     9.1184 ± 0.0643 |
| 2.75kb  |     2.3499 ± 0.0149 |     9.0789 ± 0.0409 |     9.1391 ± 0.0597 |
| 2.875kb |     2.3503 ± 0.0192 |     9.0955 ± 0.0695 |     9.1097 ± 0.0686 |
| 3kb     |     2.3393 ± 0.0146 |     9.0819 ± 0.0780 |     9.1513 ± 0.0696 |
| 3.125kb |     2.3161 ± 0.0164 |     9.0850 ± 0.0669 |     9.0926 ± 0.0653 |
| 3.25kb  |     2.3226 ± 0.0159 |     9.0625 ± 0.0517 |     9.1248 ± 0.0783 |
| 3.375kb |     2.3013 ± 0.0191 |     9.0851 ± 0.0722 |     9.0432 ± 0.0621 |
| 3.5kb   |     2.2898 ± 0.0122 |     9.0369 ± 0.0595 |     9.0524 ± 0.0941 |
| 3.625kb |     2.3032 ± 0.0160 |     9.0575 ± 0.0531 |     9.0869 ± 0.0813 |
| 3.75kb  |     2.2834 ± 0.0164 |     9.0889 ± 0.0597 |     9.0159 ± 0.0648 |
| 3.875kb |     2.2820 ± 0.0157 |     9.0603 ± 0.0475 |     8.9925 ± 0.0652 |
| 4kb     |     2.2647 ± 0.0123 |     9.0237 ± 0.0578 |     9.0431 ± 0.0726 |
| 16kb    |     2.1267 ± 0.0113 |     8.9192 ± 0.1081 |     8.9087 ± 0.0709 |
| 32kb    |     2.1124 ± 0.0130 |     8.8249 ± 0.0565 |     8.8554 ± 0.0544 |
| 48kb    |     2.1075 ± 0.0162 |     8.8627 ± 0.0603 |     8.8609 ± 0.0602 |
| 64kb    |     2.0950 ± 0.0107 |     8.8535 ± 0.0933 |     8.8316 ± 0.0741 |
| 80kb    |     2.0812 ± 0.0095 |     8.7920 ± 0.0600 |     8.7787 ± 0.0720 |
| 96kb    |     2.0815 ± 0.0107 |     8.7959 ± 0.0689 |     8.7853 ± 0.0605 |
| 112kb   |     2.0936 ± 0.0149 |     8.7948 ± 0.0682 |     8.8482 ± 0.0767 |
| 128kb   |     2.0914 ± 0.0101 |     8.8081 ± 0.0408 |     8.8290 ± 0.0643 |
| 256kb   |     2.0866 ± 0.0139 |     8.8264 ± 0.0512 |     8.8229 ± 0.0469 |
| 384kb   |     2.0806 ± 0.0098 |     8.8888 ± 0.0680 |     8.8446 ± 0.0660 |
| 512kb   |     2.1066 ± 0.0195 |     8.8528 ± 0.0563 |     8.9636 ± 0.1056 |
| 640kb   |     2.0876 ± 0.0114 |     8.7787 ± 0.0539 |     8.8706 ± 0.0718 |
| 768kb   |     2.0767 ± 0.0107 |     8.8102 ± 0.0542 |     8.7938 ± 0.0455 |
| 896kb   |     2.0799 ± 0.0145 |     8.8481 ± 0.1079 |     8.8065 ± 0.0598 |
| 1mb     |     2.0842 ± 0.0143 |     8.8499 ± 0.0753 |     8.8030 ± 0.0562 |

| metadata  |                                           |
|-----------|-------------------------------------------|
| algorithm | chacha20_poly1305_ietf                    |
| cpu       | IntelSkylakeX (06_55H)                    |
| library   | libsodium                                 |
| path      | libsodium_chacha20_poly1305_ietf_skylakex |
| primitive | aead                                      |
| profile   | skylakex                                  |
| version   | 1.0.19                                    |