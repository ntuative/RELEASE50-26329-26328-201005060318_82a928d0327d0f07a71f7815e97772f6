package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboGroupDetailsMessageParser implements IMessageParser
   {
       
      
      private var var_752:String = "";
      
      private var _name:String = "";
      
      private var _roomId:int = -1;
      
      private var var_1010:int = -1;
      
      private var var_1179:String = "";
      
      public function HabboGroupDetailsMessageParser()
      {
         super();
      }
      
      public function get groupId() : int
      {
         return var_1010;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1010 = param1.readInteger();
         if(var_1010 != -1)
         {
            _name = param1.readString();
            var_1179 = param1.readString();
            _roomId = param1.readInteger();
            var_752 = param1.readString();
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1010 = -1;
         _name = "";
         var_1179 = "";
         _roomId = -1;
         var_752 = "";
         return true;
      }
      
      public function get roomName() : String
      {
         return var_752;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get description() : String
      {
         return var_1179;
      }
   }
}
