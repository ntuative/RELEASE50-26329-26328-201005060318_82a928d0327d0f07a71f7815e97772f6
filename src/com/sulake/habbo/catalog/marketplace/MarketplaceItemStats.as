package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1550:Array;
      
      private var var_2054:int;
      
      private var var_2078:int;
      
      private var var_2079:int;
      
      private var var_2077:int;
      
      private var _dayOffsets:Array;
      
      private var var_2080:int;
      
      private var var_1549:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1550;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1550 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_2078;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1549 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_2054 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_2079;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2077;
      }
      
      public function get offerCount() : int
      {
         return var_2080;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_2080 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1549;
      }
      
      public function get averagePrice() : int
      {
         return var_2054;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_2077 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_2079 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_2078 = param1;
      }
   }
}
