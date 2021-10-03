package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_827:String = "inventory_badges";
      
      public static const const_1284:String = "inventory_clothes";
      
      public static const const_1258:String = "inventory_furniture";
      
      public static const const_510:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_978:String = "inventory_effects";
       
      
      private var var_1998:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_510);
         var_1998 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1998;
      }
   }
}
