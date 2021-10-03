package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1854:Number;
      
      private var var_581:Number = 0;
      
      private var var_1855:Number;
      
      private var var_580:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1854 = param1;
         var_1855 = param2;
      }
      
      public function update() : void
      {
         var_580 += var_1855;
         var_581 += var_580;
         if(var_581 > 0)
         {
            var_581 = 0;
            var_580 = var_1854 * -1 * var_580;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_580 = param1;
         var_581 = 0;
      }
      
      public function get location() : Number
      {
         return var_581;
      }
   }
}
