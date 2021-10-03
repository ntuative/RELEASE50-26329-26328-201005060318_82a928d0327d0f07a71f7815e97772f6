package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_277:String = "RWFAM_MOVE";
      
      public static const const_706:String = "RWFUAM_ROTATE";
      
      public static const const_524:String = "RWFAM_PICKUP";
       
      
      private var var_1963:int = 0;
      
      private var var_2258:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1963 = param2;
         var_2258 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1963;
      }
      
      public function get furniCategory() : int
      {
         return var_2258;
      }
   }
}
