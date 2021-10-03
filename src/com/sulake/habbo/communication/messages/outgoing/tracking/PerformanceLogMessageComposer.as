package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_963:int = 0;
      
      private var var_1280:int = 0;
      
      private var var_1627:String = "";
      
      private var var_964:int = 0;
      
      private var var_2023:String = "";
      
      private var var_2022:int = 0;
      
      private var var_1405:String = "";
      
      private var var_2025:int = 0;
      
      private var var_2024:int = 0;
      
      private var var_1628:String = "";
      
      private var var_2026:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2025 = param1;
         var_1628 = param2;
         var_1405 = param3;
         var_1627 = param4;
         var_2023 = param5;
         if(param6)
         {
            var_1280 = 1;
         }
         else
         {
            var_1280 = 0;
         }
         var_2022 = param7;
         var_2024 = param8;
         var_964 = param9;
         var_2026 = param10;
         var_963 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2025,var_1628,var_1405,var_1627,var_2023,var_1280,var_2022,var_2024,var_964,var_2026,var_963];
      }
      
      public function dispose() : void
      {
      }
   }
}
