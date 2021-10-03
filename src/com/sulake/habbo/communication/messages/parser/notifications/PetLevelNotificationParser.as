package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_312:String;
      
      private var var_1674:int;
      
      private var var_1673:String;
      
      private var var_1053:int;
      
      private var var_1219:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1219;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1219 = param1.readInteger();
         var_1673 = param1.readString();
         var_1674 = param1.readInteger();
         var_312 = param1.readString();
         var_1053 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1673;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function get petType() : int
      {
         return var_1053;
      }
      
      public function get level() : int
      {
         return var_1674;
      }
   }
}
