package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_987:PetData;
      
      private var var_2171:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_987 = null;
         return true;
      }
      
      public function get purchased() : Boolean
      {
         return var_2171;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_987 = new PetData(param1);
         var_2171 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return var_987;
      }
   }
}
