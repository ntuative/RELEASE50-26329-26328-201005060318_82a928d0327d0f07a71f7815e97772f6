package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2034:Boolean = false;
      
      private var var_2035:int = 0;
      
      private var var_1420:int = 0;
      
      private var var_2033:int = 0;
      
      private var var_1715:Boolean = false;
      
      private var var_1416:int = 0;
      
      private var var_1421:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1416 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2035;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2034;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2034 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1715;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2035 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1420 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1416;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1715 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2033 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1420;
      }
      
      public function get pixelBalance() : int
      {
         return var_2033;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1421 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1421;
      }
   }
}
