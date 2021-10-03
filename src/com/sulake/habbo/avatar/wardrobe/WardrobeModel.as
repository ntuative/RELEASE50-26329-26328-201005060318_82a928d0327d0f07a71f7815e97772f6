package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.common.ISideContentModel;
   import com.sulake.habbo.communication.messages.incoming.avatar.OutfitData;
   
   public class WardrobeModel implements ISideContentModel
   {
       
      
      private var _view:WardrobeView;
      
      private var var_165:Boolean = false;
      
      private var var_28:HabboAvatarEditor;
      
      private var var_473:Map;
      
      public function WardrobeModel(param1:HabboAvatarEditor)
      {
         super();
         var_28 = param1;
      }
      
      private function isSlotEnabled(param1:int) : Boolean
      {
         if(param1 <= 5)
         {
            return var_28.sessionData.hasUserRight("fuse_use_wardrobe");
         }
         return var_28.sessionData.hasUserRight("fuse_larger_wardrobe");
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         if(!var_165)
         {
            init();
         }
         return _view.getWindowContainer();
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var_28 = null;
         for each(_loc1_ in var_473)
         {
            _loc1_.dispose();
            _loc1_ = null;
         }
         var_473 = null;
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
         var_165 = false;
      }
      
      public function updateView() : void
      {
         _view.update();
      }
      
      public function reset() : void
      {
         var_165 = false;
      }
      
      private function init() : void
      {
         var _loc2_:* = null;
         if(false)
         {
            var_28.handler.getWardrobe();
         }
         if(var_473)
         {
            for each(_loc2_ in var_473)
            {
               _loc2_.dispose();
               _loc2_ = null;
            }
         }
         var_473 = new Map();
         var _loc1_:int = 1;
         while(_loc1_ <= 10)
         {
            var_473.add(_loc1_,new WardrobeSlot(var_28,_loc1_,isSlotEnabled(_loc1_)));
            _loc1_++;
         }
         if(_view)
         {
            _view.dispose();
         }
         _view = new WardrobeView(this);
         var_165 = true;
         updateView();
      }
      
      public function get slots() : Array
      {
         return var_473.getValues();
      }
      
      public function updateSlots(param1:int, param2:Array) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!var_165)
         {
            return;
         }
         for each(_loc4_ in param2)
         {
            _loc3_ = var_473.getValue(_loc4_.slotId) as WardrobeSlot;
            if(_loc3_)
            {
               _loc3_.update(_loc4_.figureString,_loc4_.gender,isSlotEnabled(_loc3_.id));
            }
         }
      }
      
      public function get controller() : HabboAvatarEditor
      {
         return var_28;
      }
   }
}
