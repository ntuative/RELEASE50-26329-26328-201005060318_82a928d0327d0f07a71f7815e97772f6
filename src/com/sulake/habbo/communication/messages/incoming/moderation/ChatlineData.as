package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1607:String;
      
      private var var_1823:int;
      
      private var var_1822:int;
      
      private var var_1820:int;
      
      private var var_1821:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1823 = param1.readInteger();
         var_1820 = param1.readInteger();
         var_1822 = param1.readInteger();
         var_1821 = param1.readString();
         var_1607 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1607;
      }
      
      public function get hour() : int
      {
         return var_1823;
      }
      
      public function get minute() : int
      {
         return var_1820;
      }
      
      public function get chatterName() : String
      {
         return var_1821;
      }
      
      public function get chatterId() : int
      {
         return var_1822;
      }
   }
}
