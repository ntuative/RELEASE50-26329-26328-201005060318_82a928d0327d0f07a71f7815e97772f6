package com.sulake.habbo.avatar.animation
{
   import com.sulake.habbo.avatar.AvatarStructure;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import flash.utils.Dictionary;
   
   public class AnimationLayerData implements IAnimationLayerData
   {
      
      public static const const_521:String = "bodypart";
      
      public static const const_364:String = "fx";
       
      
      private var _items:Dictionary;
      
      private var _id:String;
      
      private var _dx:int;
      
      private var var_1425:IActiveActionData;
      
      private var _type:String;
      
      private var var_1728:int;
      
      private var var_507:int;
      
      private var var_986:String;
      
      private var var_1270:int;
      
      private var var_1180:int;
      
      private var var_1181:int;
      
      public function AnimationLayerData(param1:AvatarStructure, param2:XML, param3:String, param4:int, param5:IActionDefinition)
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         _items = new Dictionary();
         super();
         var_507 = param4;
         _id = String(param2.@id);
         var_1728 = parseInt(param2.@frame);
         _dx = parseInt(param2.@dx);
         var_1181 = parseInt(param2.@dy);
         var_1180 = parseInt(param2.@dz);
         var_1270 = parseInt(param2.@dd);
         _type = param3;
         var_986 = String(param2.@base);
         for each(_loc6_ in param2.item)
         {
            _items[String(_loc6_.@id)] = String(_loc6_.@base);
         }
         _loc7_ = "";
         if(var_986 != "")
         {
            _loc7_ = String(baseAsInt());
         }
         if(param5 != null)
         {
            var_1425 = new ActiveActionData(param5.state,_loc7_);
            var_1425.definition = param5;
         }
      }
      
      public function get items() : Dictionary
      {
         return _items;
      }
      
      public function baseAsInt() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_986.length)
         {
            _loc1_ += var_986.charCodeAt(_loc2_);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get frameCounter() : int
      {
         return var_507;
      }
      
      public function get base() : String
      {
         return var_986;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get dx() : int
      {
         return _dx;
      }
      
      public function get dz() : int
      {
         return var_1180;
      }
      
      public function get animationFrame() : int
      {
         return var_1728;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get dy() : int
      {
         return var_1181;
      }
      
      public function get action() : IActiveActionData
      {
         return var_1425;
      }
      
      public function get directionOffset() : int
      {
         return var_1270;
      }
   }
}
