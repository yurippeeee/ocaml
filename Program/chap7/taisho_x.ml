(* 目的：x座標、y座標の組を受け取り、x軸について対象な座標を返す *)
(* taisho_x : int * int -> int * int *)
let taisho_x zahyo = match zahyo with
  (x, y) -> (x, -y)

let test1 = taisho_x (2, 3) = (2, -3)
let test2 = taisho_x (-4, 2) = (-4, -2)
let test3 = taisho_x (5, -19) = (5, 19)