(* 学生一人分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae : string;   (* 名前 *)
  tensuu : int;   (* 点数 *)
  seiseki : string;   (* 成績 *)
}

(* 目的：学生のデータgakuseiを受け取り、成績のついたデータを返す *)
(* hyouka : gakusei_t -> gakusei_t *)
let hyouka gakusei = match gakusei with 
  {namae = n; tensuu = t; seiseki = s} -> 
    if t >= 80 then      {namae = n; tensuu = t; seiseki = "A"}
    else if t >= 70 then {namae = n; tensuu = t; seiseki = "B"}
    else if t >= 60 then {namae = n; tensuu = t; seiseki = "C"}
    else                 {namae = n; tensuu = t; seiseki = "D"}

let test1 = hyouka {namae = "石田"; tensuu = 90; seiseki = ""} = {namae = "石田"; tensuu = 90; seiseki = "A"}
let test2 = hyouka {namae = "石田"; tensuu = 80; seiseki = ""} = {namae = "石田"; tensuu = 80; seiseki = "A"}
let test3 = hyouka {namae = "石田"; tensuu = 75; seiseki = ""} = {namae = "石田"; tensuu = 75; seiseki = "B"}
let test4 = hyouka {namae = "石田"; tensuu = 70; seiseki = ""} = {namae = "石田"; tensuu = 70; seiseki = "B"}
let test5 = hyouka {namae = "石田"; tensuu = 65; seiseki = ""} = {namae = "石田"; tensuu = 65; seiseki = "C"}
let test6 = hyouka {namae = "石田"; tensuu = 60; seiseki = ""} = {namae = "石田"; tensuu = 60; seiseki = "C"}
let test7 = hyouka {namae = "石田"; tensuu = 55; seiseki = ""} = {namae = "石田"; tensuu = 55; seiseki = "D"}
