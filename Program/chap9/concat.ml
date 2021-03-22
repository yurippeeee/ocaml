(* string listは
    - []                   空リスト あるいは
    - first :: rest        最初の要素がfirstで残りのリストがrest
    という形*)

(* 目的：string型のリストlstを受け取り、リスト内の文字列すべてを連結した文字列を返す *)
(* concat : string list -> string *)
let rec concat lst = match lst with
    [] -> ""
  | first :: rest -> first ^ concat rest

let test1 = concat [] = ""
let test2 = concat ["愛"] = "愛"
let test3 = concat ["石田"; " 卓也"] = "石田 卓也"
let test4 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"