package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1155:int;
      
      private var var_1131:int;
      
      private var var_1154:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1155;
      }
      
      public function flush() : Boolean
      {
         var_1131 = 0;
         var_1155 = 0;
         var_1154 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1131;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1155 = param1.readInteger();
         var_1131 = param1.readInteger();
         var_1154 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1154;
      }
   }
}
