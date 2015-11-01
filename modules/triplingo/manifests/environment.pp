# modules/triplingo/manifests/environment.pp

 class triplingo::environment {
   include triplingo::apps::mac

   include ruby::1-8-7

   include projects::rbes
 }
