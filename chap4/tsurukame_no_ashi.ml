(* 目的：鶴の数mと亀の数nを受取り、足の合計本数を返す *)
(* tsurukame_no_ashi int -> int -> int*)

let tsurukame_no_ashi m n = m * 2 + n * 4

let test1 = (tsurukame_no_ashi 4 9 = 44)
let test2 = (tsurukame_no_ashi 5 4 = 26)
let test3 = (tsurukame_no_ashi 10 30 = 140)
