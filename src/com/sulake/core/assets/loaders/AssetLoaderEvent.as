package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_958:String = "AssetLoaderEventUnload";
      
      public static const const_47:String = "AssetLoaderEventError";
      
      public static const const_980:String = "AssetLoaderEventOpen";
      
      public static const const_993:String = "AssetLoaderEventProgress";
      
      public static const const_909:String = "AssetLoaderEventStatus";
      
      public static const const_37:String = "AssetLoaderEventComplete";
       
      
      private var var_163:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_163 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_163;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_163);
      }
   }
}
