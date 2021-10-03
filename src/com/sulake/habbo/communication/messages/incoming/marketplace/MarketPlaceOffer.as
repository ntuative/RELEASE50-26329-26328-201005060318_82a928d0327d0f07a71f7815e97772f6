package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1292:int;
      
      private var var_2055:int = -1;
      
      private var var_163:int;
      
      private var var_2054:int;
      
      private var var_1964:int;
      
      private var _offerId:int;
      
      private var var_1291:int;
      
      private var var_1963:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1963 = param2;
         var_1964 = param3;
         var_1292 = param4;
         var_163 = param5;
         var_2055 = param6;
         var_2054 = param7;
         var_1291 = param8;
      }
      
      public function get status() : int
      {
         return var_163;
      }
      
      public function get price() : int
      {
         return var_1292;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_2055;
      }
      
      public function get offerCount() : int
      {
         return var_1291;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1964;
      }
      
      public function get averagePrice() : int
      {
         return var_2054;
      }
      
      public function get furniId() : int
      {
         return var_1963;
      }
   }
}
