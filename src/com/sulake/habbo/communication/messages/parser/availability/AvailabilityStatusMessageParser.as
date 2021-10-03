package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1017:Boolean;
      
      private var var_1330:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1017 = param1.readInteger() > 0;
         var_1330 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1017;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1330;
      }
      
      public function flush() : Boolean
      {
         var_1017 = false;
         var_1330 = false;
         return true;
      }
   }
}
