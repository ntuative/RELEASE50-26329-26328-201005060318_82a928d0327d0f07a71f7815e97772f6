package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_444:uint;
      
      private var var_1078:IUnknown;
      
      private var var_1333:String;
      
      private var var_1079:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1079 = param1;
         var_1333 = getQualifiedClassName(var_1079);
         var_1078 = param2;
         var_444 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1079;
      }
      
      public function get disposed() : Boolean
      {
         return var_1078 == null;
      }
      
      public function get references() : uint
      {
         return var_444;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_444) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1078;
      }
      
      public function get iis() : String
      {
         return var_1333;
      }
      
      public function reserve() : uint
      {
         return ++var_444;
      }
      
      public function dispose() : void
      {
         var_1079 = null;
         var_1333 = null;
         var_1078 = null;
         var_444 = 0;
      }
   }
}
