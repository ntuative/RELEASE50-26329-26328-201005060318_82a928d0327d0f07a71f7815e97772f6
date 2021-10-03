package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_964:String = "select_outfit";
       
      
      private var var_1709:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_964);
         var_1709 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1709;
      }
   }
}
