package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_603:String;
      
      private var _id:int;
      
      private var var_1851:String = "";
      
      private var var_1850:int;
      
      private var var_1852:String;
      
      private var var_1853:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1850 = parseInt(param1.@pattern);
         var_603 = String(param1.@gender);
         var_1853 = Boolean(parseInt(param1.@colorable));
         var_1851 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1851;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1853;
      }
      
      public function get gender() : String
      {
         return var_603;
      }
      
      public function get patternId() : int
      {
         return var_1850;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1852;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1852 = param1;
      }
   }
}
