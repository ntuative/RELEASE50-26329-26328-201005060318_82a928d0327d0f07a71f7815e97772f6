package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1508:String;
      
      private var var_641:String;
      
      private var var_1509:String;
      
      private var var_1507:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1507 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1508 = _loc5_[0];
         var_1509 = _loc5_[1];
         _name = param2;
         var_641 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1508;
      }
      
      public function get languageCode() : String
      {
         return var_1507;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_641;
      }
      
      public function get encoding() : String
      {
         return var_1509;
      }
      
      public function get id() : String
      {
         return var_1507 + "_" + var_1508 + "." + var_1509;
      }
   }
}
