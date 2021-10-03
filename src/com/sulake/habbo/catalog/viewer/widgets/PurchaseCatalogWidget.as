package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2092:XML;
      
      private var var_1556:ITextWindow;
      
      private var var_1555:ITextWindow;
      
      private var var_2089:XML;
      
      private var var_896:IWindowContainer;
      
      private var var_2340:ITextWindow;
      
      private var var_2091:String = "";
      
      private var var_2400:IButtonWindow;
      
      private var var_2093:XML;
      
      private var var_1554:ITextWindow;
      
      private var var_2090:XML;
      
      private var var_895:IButtonWindow;
      
      private var var_78:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_304:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2089) as IWindowContainer;
               break;
            case Offer.const_448:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2090) as IWindowContainer;
               break;
            case Offer.const_480:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2092) as IWindowContainer;
               break;
            case Offer.const_644:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2093) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_896 != null)
            {
               _window.removeChild(var_896);
               var_896.dispose();
            }
            var_896 = _loc2_;
            _window.addChild(_loc2_);
            var_896.x = 0;
            var_896.y = 0;
         }
         var_1554 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1555 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1556 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2340 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_895 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_895 != null)
         {
            var_895.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_895.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_78 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_78,page,var_2091);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_2089 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_2090 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_2092 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_2093 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_845,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_2091 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_78 = param1.offer;
         attachStub(var_78.priceType);
         if(var_1554 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_78.priceInCredits));
            var_1554.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1555 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_78.priceInPixels));
            var_1555.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1556 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_78.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_78.priceInPixels));
            var_1556.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_895 != null)
         {
            var_895.enable();
         }
      }
   }
}
