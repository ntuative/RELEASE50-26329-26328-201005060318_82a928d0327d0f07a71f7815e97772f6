package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1555:int = 2;
      
      public static const const_1163:int = 4;
      
      public static const const_1297:int = 1;
      
      public static const const_1181:int = 3;
       
      
      private var var_1086:int = 0;
      
      private var var_925:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1086;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1086 = param1.readInteger();
         if(var_1086 == 3)
         {
            var_925 = param1.readString();
         }
         else
         {
            var_925 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1086 = 0;
         var_925 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_925;
      }
   }
}
