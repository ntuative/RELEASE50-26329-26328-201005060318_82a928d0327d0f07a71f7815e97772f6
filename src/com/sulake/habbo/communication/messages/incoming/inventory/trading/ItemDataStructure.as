package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1033:String;
      
      private var var_1679:int;
      
      private var var_2128:int;
      
      private var var_1567:int;
      
      private var var_2130:int;
      
      private var _category:int;
      
      private var var_2401:int;
      
      private var var_2132:int;
      
      private var var_2126:int;
      
      private var var_2131:int;
      
      private var var_2127:int;
      
      private var var_2129:Boolean;
      
      private var var_1387:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1679 = param1;
         var_1033 = param2;
         var_2128 = param3;
         var_2131 = param4;
         _category = param5;
         var_1387 = param6;
         var_1567 = param7;
         var_2126 = param8;
         var_2132 = param9;
         var_2127 = param10;
         var_2130 = param11;
         var_2129 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2131;
      }
      
      public function get extra() : int
      {
         return var_1567;
      }
      
      public function get stuffData() : String
      {
         return var_1387;
      }
      
      public function get groupable() : Boolean
      {
         return var_2129;
      }
      
      public function get creationMonth() : int
      {
         return var_2127;
      }
      
      public function get roomItemID() : int
      {
         return var_2128;
      }
      
      public function get itemType() : String
      {
         return var_1033;
      }
      
      public function get itemID() : int
      {
         return var_1679;
      }
      
      public function get songID() : int
      {
         return var_1567;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2126;
      }
      
      public function get creationYear() : int
      {
         return var_2130;
      }
      
      public function get creationDay() : int
      {
         return var_2132;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
