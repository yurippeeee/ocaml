(* int listは
    - []                   空リスト あるいは
    - first :: rest        最初の要素がfirstで残りのリストがrest
    という形*)

(* 目的：int型のリストlstを受け取り、リストの長さを返す *)
(* length : int list -> int *)
let rec length lst = match lst with
    [] -> 0
  | first :: rest -> 1 + length rest

let test1 = length [] = 0
let test2 = length [1; 0] = 2
let test3 = length [10; 15; 22; 11; 5] = 5