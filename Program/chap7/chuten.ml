(* 目的：座標、y座標の組を２つ受け取り、中点の座標を返す *)
(* chuten : int * int -> int * int -> int * int *)
let chuten zahyo1 zahyo2 = match zahyo1 with
  (x1, y1) -> match zahyo2 with
    (x2, y2 ) -> ((x1 + x2) / 2, (y1 + y2) / 2)

let test1 = chuten (1, 2) (3, 4) = (2, 3)
let test2 = chuten (11, 15) (3, 7) = (7, 11)