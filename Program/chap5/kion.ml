(* 目的：現在の気温tを受取り、15度以上25度以下かどうかを返す *)
(* kaiteki : int -> bool *)
let kaiteki t = t >= 15 && t <= 25

let test1 = kaiteki 14 = false
let test2 = kaiteki 15 = true
let test3 = kaiteki 25 = true
let test4 = kaiteki 26 = false

(* 目的：現在の気温tを受取り、快適度を表す文字列を返す *)
(* kion : int -> string *)
let kion t = if kaiteki t then "快適"
             else "普通"

let test5 = kion 14 = "普通"
let test6 = kion 15 = "快適"
let test7 = kion 25 = "快適"
let test8 = kion 26 = "普通"