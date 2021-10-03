package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1969:Date;
      
      private var var_1252:Boolean = false;
      
      private var _type:int;
      
      private var var_382:BitmapData;
      
      private var var_252:Boolean = false;
      
      private var var_1159:int;
      
      private var var_594:int = 1;
      
      private var var_1039:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_382;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_594;
         if(var_594 < 0)
         {
            var_594 = 0;
         }
         var_1039 = var_1159;
         var_252 = false;
         var_1252 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1039 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_252;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_382 = param1;
      }
      
      public function get duration() : int
      {
         return var_1159;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1252;
      }
      
      public function get effectsInInventory() : int
      {
         return var_594;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_382;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_252)
         {
            var_1969 = new Date();
         }
         var_252 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_594 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_252)
         {
            _loc1_ = var_1039 - (new Date().valueOf() - var_1969.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1039;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1252 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1159 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
