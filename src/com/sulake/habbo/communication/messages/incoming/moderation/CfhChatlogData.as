package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1807:int;
      
      private var var_985:int;
      
      private var var_1808:int;
      
      private var var_1449:int;
      
      private var var_116:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1449 = param1.readInteger();
         var_1808 = param1.readInteger();
         var_985 = param1.readInteger();
         var_1807 = param1.readInteger();
         var_116 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1449);
      }
      
      public function get chatRecordId() : int
      {
         return var_1807;
      }
      
      public function get reportedUserId() : int
      {
         return var_985;
      }
      
      public function get callerUserId() : int
      {
         return var_1808;
      }
      
      public function get callId() : int
      {
         return var_1449;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_116;
      }
   }
}
