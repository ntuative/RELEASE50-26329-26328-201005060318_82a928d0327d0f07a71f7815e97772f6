package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1532:int;
      
      private var var_2028:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_2028 = param1.readString();
         var_1532 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1532;
      }
      
      public function get productItemType() : String
      {
         return var_2028;
      }
   }
}
