package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_596:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_197:String;
      
      private var var_708:String;
      
      private var var_1516:String;
      
      private var var_151:int = -1;
      
      private var var_28:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_151 = param2;
         var_1516 = param3;
         var_197 = param4;
         var_708 = param5;
         var_28 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1516;
      }
      
      public function get colorHex() : String
      {
         return var_708;
      }
      
      public function get text() : String
      {
         return var_197;
      }
      
      public function get objectId() : int
      {
         return var_151;
      }
      
      public function get controller() : Boolean
      {
         return var_28;
      }
   }
}
