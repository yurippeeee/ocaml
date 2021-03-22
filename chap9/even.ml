(* int listは
    - []                   空リスト あるいは
    - first :: rest        最初の要素がfirstで残りのリストがrest
    という形*)

(* 目的：int型のリストlstを受け取り、その中の偶数のみのリストを返す *)
(* even : int list -> int *)
let rec even lst = match lst with
    [] -> []
  | first :: rest -> if first mod 2 = 0 then first :: even rest
                                        else even rest

let test1 = even [] = []
let test2 = even [2; 1] = [2]
let test3 = even [3; 1] = []
let test4 = even [1; 3; 6; 3; 8] = [6; 8]
let test5 = even [1; 3; 5; 3; 9] = []