package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_348:Boolean;
      
      private var var_197:String;
      
      private var var_1160:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_197 = param1;
         var_1160 = param2;
         var_348 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1160;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_348 = param1;
      }
      
      public function get text() : String
      {
         return var_197;
      }
      
      public function get visible() : Boolean
      {
         return var_348;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1160 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_197 = param1;
      }
   }
}
