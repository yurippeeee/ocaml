(* 目的：2次方程式の係数a,b,cを受取り、判別式の値を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

let test1 = hanbetsushiki 2.0 3.0 4.0 = -23.0
let test2 = hanbetsushiki 3.0 8.0 2.0 = 40.0

(* 目的：2次方程式の係数a,b,cを受取り、解の個数を返す *)
(* kai_no_kosuu : float -> float -> float -> int *)
let kai_no_kosuu a b c = if hanbetsushiki a b c > 0.0 then 2
                         else if hanbetsushiki a b c = 0.0 then 1
                         else 0

let test3 = kai_no_kosuu 2.0 2.0 4.0 = 0
let test4 = kai_no_kosuu 3.0 8.0 2.0 = 2
let test5 = kai_no_kosuu 2.0 4.0 2.0 = 1

(* 目的：2次方程式の係数a,b,cを受取り、虚数解を持つかどうかを返す*)
(* kyosuukai : float -> float -> float -> bool *)
let kyosuukai a b c = hanbetsushiki a b c < 0.0

let test6 = kyosuukai 2.0 2.0 4.0 = true
let test7 = kyosuukai 3.0 8.0 2.0 = false
let test8 = kyosuukai 2.0 4.0 2.0 = false