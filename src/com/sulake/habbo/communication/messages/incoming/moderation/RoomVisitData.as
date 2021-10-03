package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_752:String;
      
      private var var_1932:int;
      
      private var var_1447:Boolean;
      
      private var _roomId:int;
      
      private var var_1933:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1447 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_752 = param1.readString();
         var_1933 = param1.readInteger();
         var_1932 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1447;
      }
      
      public function get roomName() : String
      {
         return var_752;
      }
      
      public function get enterMinute() : int
      {
         return var_1932;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1933;
      }
   }
}
