package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_769:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_769 = new ByteArray();
         var_769.writeShort(param1);
         var_769.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_769.position = 0;
         if(false)
         {
            _loc1_ = var_769.readShort();
            var_769.position = 0;
         }
         return _loc1_;
      }
   }
}
