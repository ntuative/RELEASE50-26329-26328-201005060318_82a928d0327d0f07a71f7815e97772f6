package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1098:int = 1;
      
      private static const const_1060:int = 3;
      
      private static const const_1099:int = 2;
      
      private static const const_1100:int = 15;
       
      
      private var var_903:int;
      
      private var var_223:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_223 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1099)
         {
            var_223 = new Array();
            var_223.push(const_1098);
            var_903 = const_1100;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_903 > 0)
         {
            --var_903;
         }
         if(var_903 == 0)
         {
            if(false)
            {
               super.setAnimation(var_223.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
