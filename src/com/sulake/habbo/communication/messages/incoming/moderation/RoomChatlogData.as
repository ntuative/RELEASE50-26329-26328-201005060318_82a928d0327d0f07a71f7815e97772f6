package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_752:String;
      
      private var var_1446:Array;
      
      private var var_1447:Boolean;
      
      private var _roomId:int;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         var_1446 = new Array();
         super();
         var_1447 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_752 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1446.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + var_1447 + ", " + _roomId + ", " + var_752 + ", " + chatlog.length);
      }
      
      public function get isPublic() : Boolean
      {
         return var_1447;
      }
      
      public function get roomName() : String
      {
         return var_752;
      }
      
      public function get chatlog() : Array
      {
         return var_1446;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
