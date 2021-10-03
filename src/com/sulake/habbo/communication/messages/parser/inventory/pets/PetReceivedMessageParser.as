package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_987:PetData;
      
      private var var_1426:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1426 = param1.readBoolean();
         var_987 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1426 + ", " + var_987.id + ", " + var_987.name + ", " + pet.figure + ", " + var_987.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1426;
      }
      
      public function get pet() : PetData
      {
         return var_987;
      }
   }
}
