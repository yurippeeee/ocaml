(* 週30時間未満の時給(円) *)
let jikyu = 950

(* 週30時間以上の時給(円) *)
let yugu_jikyu = 980

(* 基本給(円) *)
let kihonkyu = 100

(* 目的：働いた時間xを受取り、アルバイト代を算出する *)
(* kyuyo : int -> int *)
let kyuyo x = kihonkyu + x * (if x < 30 then jikyu else yugu_jikyu)

let test1 = (kyuyo 25 = 23850)
let test2 = (kyuyo 28 = 26700)
let test3 = (kyuyo 31 = 30480)
