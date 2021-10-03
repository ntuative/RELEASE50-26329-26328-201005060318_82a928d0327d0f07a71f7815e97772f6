package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2251:Class;
      
      private var var_2252:Class;
      
      private var var_2250:String;
      
      private var var_1368:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2250 = param1;
         var_2252 = param2;
         var_2251 = param3;
         if(rest == null)
         {
            var_1368 = new Array();
         }
         else
         {
            var_1368 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2251;
      }
      
      public function get assetClass() : Class
      {
         return var_2252;
      }
      
      public function get mimeType() : String
      {
         return var_2250;
      }
      
      public function get fileTypes() : Array
      {
         return var_1368;
      }
   }
}
