package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1671:String;
      
      private var var_603:String;
      
      private var var_1525:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1525 = param1.readInteger();
         var_1671 = param1.readString();
         var_603 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_603;
      }
      
      public function get figureString() : String
      {
         return var_1671;
      }
      
      public function get slotId() : int
      {
         return var_1525;
      }
   }
}
