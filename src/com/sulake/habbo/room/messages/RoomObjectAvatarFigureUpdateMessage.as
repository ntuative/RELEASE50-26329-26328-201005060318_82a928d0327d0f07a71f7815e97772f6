package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2021:String;
      
      private var var_312:String;
      
      private var var_603:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_312 = param1;
         var_603 = param2;
         var_2021 = param3;
      }
      
      public function get race() : String
      {
         return var_2021;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function get gender() : String
      {
         return var_603;
      }
   }
}
