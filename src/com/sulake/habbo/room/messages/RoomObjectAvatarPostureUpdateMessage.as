package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1735:String;
      
      private var var_925:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1735 = param1;
         var_925 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1735;
      }
      
      public function get parameter() : String
      {
         return var_925;
      }
   }
}
