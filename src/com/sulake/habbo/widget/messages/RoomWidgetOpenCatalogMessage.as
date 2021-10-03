package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_813:String = "RWOCM_CLUB_MAIN";
      
      public static const const_511:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1663:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_511);
         var_1663 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1663;
      }
   }
}
