package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditFurniUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_700:String = "RWCFUE_CREDIT_FURNI_UPDATE";
       
      
      private var var_151:int;
      
      private var var_1968:Number;
      
      public function RoomWidgetCreditFurniUpdateEvent(param1:String, param2:int, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_1968 = param3;
         var_151 = param2;
      }
      
      public function get creditValue() : Number
      {
         return var_1968;
      }
      
      public function get objectId() : int
      {
         return var_151;
      }
   }
}
