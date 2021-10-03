package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_853:Array;
      
      private var var_824:int;
      
      private var var_1211:String;
      
      private var _offerId:int;
      
      private var var_825:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1211 = param1.readString();
         var_824 = param1.readInteger();
         var_825 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_853 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_853.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_853;
      }
      
      public function get priceInCredits() : int
      {
         return var_824;
      }
      
      public function get localizationId() : String
      {
         return var_1211;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_825;
      }
   }
}
