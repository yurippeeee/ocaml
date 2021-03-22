(* int listは
    - []                   空リスト あるいは
    - first :: rest        最初の要素がfirstで残りのリストがrest
    という形*)

(* 目的：リストlstを受け取り、0が含まれていたらtrueを返す *)
(* contain_zero : int list -> bool *)
let rec contain_zero lst = match lst with
    [] -> false
  | first :: rest -> if first = 0 then true
                                  else contain_zero rest

let test1 = contain_zero [] = false
let test2 = contain_zero [0; 2] = true
let test3 = contain_zero [1; 2] = false
let test4 = contain_zero [2; 3; 0; 5; 8; 10] = true
let test5 = contain_zero [2; 3; 1; 5; 8; 10] = false