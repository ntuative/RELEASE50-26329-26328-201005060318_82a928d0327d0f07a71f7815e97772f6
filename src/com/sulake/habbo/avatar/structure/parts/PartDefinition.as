package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1561:int = -1;
      
      private var var_1313:Boolean;
      
      private var var_1312:String;
      
      private var var_2098:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2098 = String(param1["set-type"]);
         var_1312 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1313 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1561 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1312;
      }
      
      public function get staticId() : int
      {
         return var_1561;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1561 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1313;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1313 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1312 = param1;
      }
      
      public function get setType() : String
      {
         return var_2098;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
