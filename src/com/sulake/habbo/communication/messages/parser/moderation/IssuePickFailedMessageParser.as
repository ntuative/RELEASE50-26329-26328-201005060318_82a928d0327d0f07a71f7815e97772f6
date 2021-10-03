package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_2013:String;
      
      private var var_2151:int;
      
      private var var_1925:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1925 = param1.readInteger();
         var_2151 = param1.readInteger();
         var_2013 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_1925;
      }
      
      public function get pickerUserId() : int
      {
         return var_2151;
      }
      
      public function get pickerUserName() : String
      {
         return var_2013;
      }
   }
}
