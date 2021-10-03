package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_357:Number = 0.5;
      
      private static const const_800:int = 3;
      
      private static const const_1132:Number = 1;
       
      
      private var var_2266:Boolean = false;
      
      private var var_2269:Boolean = false;
      
      private var var_1111:int = 0;
      
      private var var_290:Vector3d = null;
      
      private var var_2262:int = 0;
      
      private var var_2265:int = 0;
      
      private var var_2271:Boolean = false;
      
      private var var_2270:int = -2;
      
      private var var_2267:Boolean = false;
      
      private var var_2264:int = 0;
      
      private var var_2268:int = -1;
      
      private var var_454:Vector3d = null;
      
      private var var_2263:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2262;
      }
      
      public function get targetId() : int
      {
         return var_2268;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2264 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2262 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2266 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2268 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2269 = param1;
      }
      
      public function dispose() : void
      {
         var_454 = null;
         var_290 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_454 == null)
         {
            var_454 = new Vector3d();
         }
         var_454.assign(param1);
         var_1111 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2270;
      }
      
      public function get screenHt() : int
      {
         return var_2263;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2265 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_290;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2263 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2264;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2266;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2269;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_454 != null && var_290 != null)
         {
            ++var_1111;
            _loc2_ = Vector3d.dif(var_454,var_290);
            if(_loc2_.length <= const_357)
            {
               var_290 = var_454;
               var_454 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_357 * (const_800 + 1))
               {
                  _loc2_.mul(const_357);
               }
               else if(var_1111 <= const_800)
               {
                  _loc2_.mul(const_357);
               }
               else
               {
                  _loc2_.mul(const_1132);
               }
               var_290 = Vector3d.sum(var_290,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2271 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2265;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2267 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2270 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_290 != null)
         {
            return;
         }
         var_290 = new Vector3d();
         var_290.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2271;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2267;
      }
   }
}
