package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1060:int = -1;
      
      private static const const_765:int = 20;
      
      private static const const_494:int = 9;
       
      
      private var var_585:Boolean = false;
      
      private var var_223:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_223 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_585 = true;
            var_223 = new Array();
            var_223.push(const_1060);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_585)
            {
               var_585 = false;
               var_223 = new Array();
               var_223.push(const_765);
               var_223.push(const_494 + param1);
               var_223.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
