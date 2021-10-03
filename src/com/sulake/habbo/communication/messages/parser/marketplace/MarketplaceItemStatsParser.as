package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1550:Array;
      
      private var var_2054:int;
      
      private var var_2078:int;
      
      private var var_2077:int;
      
      private var var_2079:int;
      
      private var _dayOffsets:Array;
      
      private var var_2080:int;
      
      private var var_1549:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_2078;
      }
      
      public function get historyLength() : int
      {
         return var_2079;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2077;
      }
      
      public function get offerCount() : int
      {
         return var_2080;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1549;
      }
      
      public function get averagePrice() : int
      {
         return var_2054;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2054 = param1.readInteger();
         var_2080 = param1.readInteger();
         var_2079 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1550 = [];
         var_1549 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1550.push(param1.readInteger());
            var_1549.push(param1.readInteger());
            _loc3_++;
         }
         var_2077 = param1.readInteger();
         var_2078 = param1.readInteger();
         return true;
      }
   }
}
