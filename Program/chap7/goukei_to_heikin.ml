let kamoku_suu = 5.

(* 目的：国語・数学・英語・理科・社会の点数を受取り、合計点と平均点の組を返す *)
(* goukei : int -> int -> int -> int -> int -> int *)
let goukei n_lang math eng sci soci = n_lang + math + eng + sci + soci

let test1 = goukei 20 30 40 50 60 = 200
let test2 = goukei 15 15 15 15 15 = 75

(* 目的：国語・数学・英語・理科・社会の点数を受取り、合計点と平均点の組を返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int * float *)
let goukei_to_heikin n_lang math eng sci soci 
    = (goukei n_lang math eng sci soci
        , (float_of_int (goukei n_lang math eng sci soci)) /. kamoku_suu)

let test3 = goukei_to_heikin 20 30 40 50 60 = (200, 40.)
let test4 = goukei_to_heikin 15 15 15 15 15 = (75, 15.)
let test5 = goukei_to_heikin 23 24 22 23 22 = (114, 22.8)