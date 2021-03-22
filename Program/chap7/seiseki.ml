(* 目的：名前と成績の組を受け取り、「〇〇さんの評価は△△です」という文字列を返す *)
(* seiseki : string * string -> string *)
let seiseki pattern = match pattern with
    (name, seiseki) -> name ^ "さんの評価は" ^ seiseki ^ "です"

let test1 = seiseki ("石田", "A") = "石田さんの評価はAです"
let test2 = seiseki ("卓也", "S") = "卓也さんの評価はSです"