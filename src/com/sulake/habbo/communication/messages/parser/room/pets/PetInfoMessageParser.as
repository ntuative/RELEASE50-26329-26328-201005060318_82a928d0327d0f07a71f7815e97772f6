package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1724:int;
      
      private var var_312:String;
      
      private var var_1674:int;
      
      private var var_1756:int;
      
      private var var_1725:int;
      
      private var var_1891:int;
      
      private var _nutrition:int;
      
      private var var_1219:int;
      
      private var var_1892:int;
      
      private var var_1894:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1721:int;
      
      private var var_1893:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1674;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1891;
      }
      
      public function flush() : Boolean
      {
         var_1219 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1892;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1894;
      }
      
      public function get maxNutrition() : int
      {
         return var_1893;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1756;
      }
      
      public function get petId() : int
      {
         return var_1219;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1219 = param1.readInteger();
         _name = param1.readString();
         var_1674 = param1.readInteger();
         var_1892 = param1.readInteger();
         var_1725 = param1.readInteger();
         var_1894 = param1.readInteger();
         _energy = param1.readInteger();
         var_1891 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1893 = param1.readInteger();
         var_312 = param1.readString();
         var_1756 = param1.readInteger();
         var_1721 = param1.readInteger();
         var_1724 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1725;
      }
      
      public function get ownerId() : int
      {
         return var_1721;
      }
      
      public function get age() : int
      {
         return var_1724;
      }
   }
}
