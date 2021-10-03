package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_404:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_325:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_812:int;
      
      private var var_252:Boolean;
      
      private var var_1917:Boolean;
      
      private var var_1602:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_812 = param2;
         var_1917 = param3;
         var_252 = param4;
         var_1602 = param5;
      }
      
      public function get position() : int
      {
         return var_812;
      }
      
      public function get isActive() : Boolean
      {
         return var_252;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1602;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1917;
      }
   }
}
