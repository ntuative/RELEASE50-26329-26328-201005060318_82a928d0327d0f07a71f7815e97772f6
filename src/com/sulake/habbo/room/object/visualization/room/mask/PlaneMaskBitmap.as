package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_54:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1;
      
      private var var_1773:Number = -1;
      
      private var var_842:IGraphicAsset = null;
      
      private var var_1771:Number = 1;
      
      private var var_1772:Number = -1;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1, param3:Number = 1, param4:Number = -1, param5:Number = 1)
      {
         super();
         var_1773 = param2;
         _normalMaxX = param3;
         var_1772 = param4;
         var_1771 = param5;
         var_842 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1771;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1773;
      }
      
      public function get normalMinY() : Number
      {
         return var_1772;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_842;
      }
      
      public function dispose() : void
      {
         var_842 = null;
      }
   }
}
