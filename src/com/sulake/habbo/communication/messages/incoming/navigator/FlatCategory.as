package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_348:Boolean;
      
      private var var_1242:int;
      
      private var var_1536:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1242 = param1.readInteger();
         var_1536 = param1.readString();
         var_348 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_348;
      }
      
      public function get nodeName() : String
      {
         return var_1536;
      }
      
      public function get nodeId() : int
      {
         return var_1242;
      }
   }
}
