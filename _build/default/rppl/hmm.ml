(* The Zelus compiler, version 2.2-stable
  (2022-01-14-8:43) *)
open Ztypes
open Rppl
type _hmm = unit

let hmm  = 
   let hmm_alloc _ = () in let hmm_copy source dest = () in
  let hmm_reset self  =
    ((()):unit) in 
  let hmm_step self ((prob_16:'a188) , (x_17:'a189)) =
    (0.:float) in
  Cnode { alloc = hmm_alloc; copy = hmm_copy ;
                             reset = hmm_reset ; step = hmm_step }
type ('b , 'a) _main =
  { mutable i_22 : 'b ; mutable m_20 : 'a }

let main  = 
  let Cnode { alloc = i_22_alloc; copy = i_22_copy ;
                                  step = i_22_step ; reset = i_22_reset } = 
  Rppl.infer_pf 100  hmm  in
  let main_alloc _ =
    ();{ m_20 = (42.:float);i_22 = i_22_alloc () (* discrete *)  } in
  let main_copy source dest =
    dest.m_20 <- source.m_20;i_22_copy source.i_22 dest.i_22 (* discrete *) in
  let main_reset self  =
    ((self.m_20 <- 0. ; i_22_reset self.i_22 ):unit) in 
  let main_step self () =
    ((let (x_21:float) = self.m_20 in
      let (obs_19:float) = (+.) x_21  1. in
      let _ = print_float obs_19 in
      let _ = print_string " " in
      let (d_18:(float)Rppl.distribution) = i_22_step self.i_22 obs_19 in
      let _ = print_float (Rppl.mean d_18) in
      let () = print_newline () in
      self.m_20 <- obs_19 ; ()):unit) in
  Cnode { alloc = main_alloc; copy = main_copy ;
                              reset = main_reset ; step = main_step }
