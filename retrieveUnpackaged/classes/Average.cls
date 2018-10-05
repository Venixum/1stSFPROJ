public class Average {

    public Integer getAverage(List<Integer> numList){
      Integer sum = 0;
      Integer avg = 0; 

        for (integer nl = 0; nl<numList.size(); nl++){

            sum += nl;

        }

        return avg = sum/numList.size();
    }

    public Integer getSmallestnum(List<Integer> smallNum){
      
        Integer sn = 0; 

        for (integer i=0; i < smallNum.size(); i++){
          
            if (sn < smallNum[i]){
            sn = smallNum[i];
          } else i++;

        }

        return sn;
    }
   public Integer getLargestnum(List<Integer> largeNum){

      Integer ln = 0; 

        for(Integer i=0; i<largeNum.size();){
            
          if (ln > largeNum[i]){
            ln= largeNum[i];

          }else i++;

        }
        return ln;

    } 

     public void getOddeven(Integer oe){ 

        if (Math.Mod(oe,2) == 0){
          system.debug(oe +'is even number');

        }

        else system.debug(oe + 'is odd number');

     }

     public String getNum2string(Integer num2string){ 

         Integer x = Math.Mod(num2string,10); 
          String ns = String.valueOf(num2string);

         if ((x == 1)&&(x > 20)){
             ns += 'st';
             system.debug(ns);
            return ns;

          }

         else if ((x == 2)&&((x < 10)||(x > 20))){
             ns += 'nd';
             system.debug(ns);
             return ns;
         }

         else if ((x == 3)&&((x < 10)||(x > 20))){
             ns += 'rd';
             system.debug(ns);
             return ns;}
         else {
             ns += 'th';
             
             system.debug(ns);
             return ns;     
         }    

    }   

}