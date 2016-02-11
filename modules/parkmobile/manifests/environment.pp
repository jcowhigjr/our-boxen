# modules/parkmobile/manifests/environment.pp

 class parkmobile::environment {
   #include parkmobile::apps::mac

   include ruby::2-1-7

   include projects::cape_app
   include projects::payment_microservice
 }
