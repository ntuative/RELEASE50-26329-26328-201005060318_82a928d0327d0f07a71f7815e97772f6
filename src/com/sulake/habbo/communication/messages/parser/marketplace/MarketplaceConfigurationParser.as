package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1692:int;
      
      private var var_1545:int;
      
      private var var_1690:int;
      
      private var var_1691:int;
      
      private var var_1688:int;
      
      private var var_1544:int;
      
      private var var_1689:int;
      
      private var var_1275:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1692;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1545;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1689;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1691;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1688;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1544;
      }
      
      public function get commission() : int
      {
         return var_1690;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1275 = param1.readBoolean();
         var_1690 = param1.readInteger();
         var_1545 = param1.readInteger();
         var_1544 = param1.readInteger();
         var_1691 = param1.readInteger();
         var_1692 = param1.readInteger();
         var_1688 = param1.readInteger();
         var_1689 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1275;
      }
   }
}
