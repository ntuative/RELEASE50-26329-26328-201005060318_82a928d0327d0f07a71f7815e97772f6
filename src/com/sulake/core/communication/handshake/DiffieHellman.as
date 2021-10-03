package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1183:BigInteger;
      
      private var var_597:BigInteger;
      
      private var var_1444:BigInteger;
      
      private var var_1445:BigInteger;
      
      private var var_1802:BigInteger;
      
      private var var_1803:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1183 = param1;
         var_1444 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1802.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1445 = new BigInteger();
         var_1445.fromRadix(param1,param2);
         var_1802 = var_1445.modPow(var_597,var_1183);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1803.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1183.toString() + ",generator: " + var_1444.toString() + ",secret: " + param1);
         var_597 = new BigInteger();
         var_597.fromRadix(param1,param2);
         var_1803 = var_1444.modPow(var_597,var_1183);
         return true;
      }
   }
}
