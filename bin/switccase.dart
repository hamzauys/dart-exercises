 void main(){

    final int classDegree = 2;

    bool ispassed = true;

    const int highsuccess = 2;

    const int averagesuccess = 1;

    const int failed = 0;

    switch (classDegree){
        case highsuccess:
         print("aferin");
         ispassed = true;
         break;
        
        case averagesuccess:
         print("olur");
         ispassed = true;
         break;

        
        case failed: 
         print("kotü");
         ispassed = true;

         break;

 
         default:
          print("basarisiz");
          ispassed = false;
    }
    print("derece:  $ispassed");
 }





    