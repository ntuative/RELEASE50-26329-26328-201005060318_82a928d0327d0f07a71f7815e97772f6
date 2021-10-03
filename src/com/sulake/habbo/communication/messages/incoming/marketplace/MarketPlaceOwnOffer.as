package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1585:int = 2;
      
      public static const const_1451:int = 1;
      
      public static const const_1514:int = 0;
       
      
      private var var_1292:int;
      
      private var var_163:int;
      
      private var var_2388:int;
      
      private var _offerId:int;
      
      private var var_1964:int;
      
      private var var_1963:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1963 = param2;
         var_1964 = param3;
         var_1292 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1963;
      }
      
      public function get furniType() : int
      {
         return var_1964;
      }
      
      public function get price() : int
      {
         return var_1292;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
