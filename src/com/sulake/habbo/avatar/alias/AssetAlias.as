package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1065:Boolean;
      
      private var _name:String;
      
      private var var_1661:String;
      
      private var var_1066:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1661 = String(param1.@link);
         var_1066 = Boolean(parseInt(param1.@fliph));
         var_1065 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1066;
      }
      
      public function get flipV() : Boolean
      {
         return var_1065;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1661;
      }
   }
}
