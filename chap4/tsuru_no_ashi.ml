(* 目的：鶴の数nを受取り、足の本数の合計を返す *)
(* tsuru_no_ashi int -> int *)
let tsuru_no_ashi n = 2 * n

let test1 = (tsuru_no_ashi 30 = 60)
let test2 = (tsuru_no_ashi 13 = 26)
let test3 = (tsuru_no_ashi 98 = 196)

