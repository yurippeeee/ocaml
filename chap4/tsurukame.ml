(* 目的：鶴と亀の数の合計sum1と足の数の合計sum2を受取り、鶴の数を返す *)
(* tsurukame : int -> int -> int *)

let tsurukame sum1 sum2 = sum1 - (sum2 - 2 * sum1) / 2

let test1 = (tsurukame 5 16 = 2)
let test2 = (tsurukame 17 52 = 8)
let test3 = (tsurukame 37 118 = 15)
