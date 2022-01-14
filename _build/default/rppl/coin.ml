(* The Zelus compiler, version 2.2-stable
  (2022-01-14-8:43) *)
open Ztypes
open Rppl
type _coin = unit

let coin  = 
   let coin_alloc _ = () in let coin_copy source dest = () in
  let coin_reset self  =
    ((()):unit) in 
  let coin_step self ((prob_14:'a182) , (x_15:'a183)) =
    (0.:float) in
  Cnode { alloc = coin_alloc; copy = coin_copy ;
                              reset = coin_reset ; step = coin_step }
type ('a) _main =
  { mutable i_18 : 'a }

let main  = 
  let Cnode { alloc = i_18_alloc; copy = i_18_copy ;
                                  step = i_18_step ; reset = i_18_reset } = 
  Rppl.infer_importance 1000  coin  in
  let main_alloc _ =
    ();{ i_18 = i_18_alloc () (* discrete *)  } in
  let main_copy source dest =
    i_18_copy source.i_18 dest.i_18 (* discrete *) in
  let main_reset self  =
    (i_18_reset self.i_18 :unit) in 
  let main_step self () =
    ((let (obs_17:int) = Rppl.draw (Rppl.bernoulli 0.3) in
      let _ = print_int obs_17 in
      let _ = print_string " " in
      let (d_16:(float)Rppl.distribution) = i_18_step self.i_18 obs_17 in
      let _ = print_float (Rppl.mean d_16) in
      let () = print_newline () in
      ()):unit) in
  Cnode { alloc = main_alloc; copy = main_copy ;
                              reset = main_reset ; step = main_step }
