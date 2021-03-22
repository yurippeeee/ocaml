(* Chapter8 問題8.5, 8.6, 8.7 *)

(* 駅名の情報（漢字の駅名、ひらがなの駅名、ローマ字の駅名、所属する路線名）を表す型 *)
type ekimei_t = {
  kanji : string;    (* 漢字の駅名 *)
  kana : string;     (* ひらがなの駅名 *)
  romaji : string;   (* ローマ字の駅名 *)
  shozoku : string;  (* 所属する路線名の駅名 *)
}

(* 駅と駅の接続情報（起点の駅名、終点の駅名、経由する路線名、２駅間の距離、所要時間）を表す型 *)
type ekikan_t = {
  kiten : string;    (* 起点の駅名 *)
  shuten : string;   (* 終点の駅名 *)
  keiyu : string;    (* 経由する路線名 *)
  kyori : float;     (* ２駅間の距離 *)
  jikan : int;       (* 起点の駅名 *)
}

(* 目的：駅名のデータekimeiを受け取り、「"路線名"、"駅名"("かな")」という文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with 
  {kanji = kj; kana = kn; romaji = r; shozoku = s} -> s ^ "、" ^ kj ^ "(" ^ kn ^ ")"

let test1 = hyoji { kanji = "茅場町"; kana = "かやばちょう"; romaji = "kayabatyo"; shozoku = "東西線" } = "東西線、茅場町(かやばちょう)"
let test1 = hyoji { kanji = "綱島"; kana = "つなしま"; romaji = "tsunashima"; shozoku = "東横線" } = "東横線、綱島(つなしま)"