package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_948:String = "price_type_none";
      
      public static const const_431:String = "pricing_model_multi";
      
      public static const const_304:String = "price_type_credits";
      
      public static const const_480:String = "price_type_credits_and_pixels";
      
      public static const const_414:String = "pricing_model_bundle";
      
      public static const const_367:String = "pricing_model_single";
      
      public static const const_644:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1173:String = "pricing_model_unknown";
      
      public static const const_448:String = "price_type_pixels";
       
      
      private var var_1861:int;
      
      private var var_824:int;
      
      private var _offerId:int;
      
      private var var_825:int;
      
      private var var_409:String;
      
      private var var_583:String;
      
      private var var_451:ICatalogPage;
      
      private var var_410:IProductContainer;
      
      private var var_1211:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1211 = param1.localizationId;
         var_824 = param1.priceInCredits;
         var_825 = param1.priceInPixels;
         var_451 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_409;
      }
      
      public function get page() : ICatalogPage
      {
         return var_451;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1861 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_410;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_825;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1211 = "";
         var_824 = 0;
         var_825 = 0;
         var_451 = null;
         if(var_410 != null)
         {
            var_410.dispose();
            var_410 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1861;
      }
      
      public function get priceInCredits() : int
      {
         return var_824;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_409 = const_367;
            }
            else
            {
               var_409 = const_431;
            }
         }
         else if(param1.length > 1)
         {
            var_409 = const_414;
         }
         else
         {
            var_409 = const_1173;
         }
      }
      
      public function get priceType() : String
      {
         return var_583;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_409)
         {
            case const_367:
               var_410 = new SingleProductContainer(this,param1);
               break;
            case const_431:
               var_410 = new MultiProductContainer(this,param1);
               break;
            case const_414:
               var_410 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_409);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1211;
      }
      
      private function analyzePriceType() : void
      {
         if(var_824 > 0 && var_825 > 0)
         {
            var_583 = const_480;
         }
         else if(var_824 > 0)
         {
            var_583 = const_304;
         }
         else if(var_825 > 0)
         {
            var_583 = const_448;
         }
         else
         {
            var_583 = const_948;
         }
      }
   }
}
