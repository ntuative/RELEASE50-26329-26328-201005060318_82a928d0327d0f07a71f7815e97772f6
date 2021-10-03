package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1061:int = 31;
      
      private static const const_1060:int = 32;
      
      private static const const_493:int = 30;
      
      private static const const_765:int = 20;
      
      private static const const_494:int = 10;
       
      
      private var var_585:Boolean = false;
      
      private var var_223:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_223 = new Array();
         super();
         super.setAnimation(const_493);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_585 = true;
            var_223 = new Array();
            var_223.push(const_1061);
            var_223.push(const_1060);
            return;
         }
         if(param1 > 0 && param1 <= const_494)
         {
            if(var_585)
            {
               var_585 = false;
               var_223 = new Array();
               if(_direction == 2)
               {
                  var_223.push(const_765 + 5 - param1);
                  var_223.push(const_494 + 5 - param1);
               }
               else
               {
                  var_223.push(const_765 + param1);
                  var_223.push(const_494 + param1);
               }
               var_223.push(const_493);
               return;
            }
            super.setAnimation(const_493);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
