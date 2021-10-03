package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_235:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2274:Boolean = false;
      
      private var var_2273:int = 0;
      
      private var var_2275:int = 0;
      
      private var var_2120:int;
      
      private var var_2272:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_235,param6,param7);
         var_2272 = param1;
         var_2275 = param2;
         var_2273 = param3;
         var_2274 = param4;
         var_2120 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_2120;
      }
      
      public function get pastPeriods() : int
      {
         return var_2273;
      }
      
      public function get periodsLeft() : int
      {
         return var_2275;
      }
      
      public function get daysLeft() : int
      {
         return var_2272;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2274;
      }
   }
}
