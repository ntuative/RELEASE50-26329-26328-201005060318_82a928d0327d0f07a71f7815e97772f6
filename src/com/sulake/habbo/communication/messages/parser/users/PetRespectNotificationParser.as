package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1756:int;
      
      private var var_1173:PetData;
      
      private var var_1776:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1756;
      }
      
      public function get petData() : PetData
      {
         return var_1173;
      }
      
      public function flush() : Boolean
      {
         var_1173 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1776;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1756 = param1.readInteger();
         var_1776 = param1.readInteger();
         var_1173 = new PetData(param1);
         return true;
      }
   }
}
