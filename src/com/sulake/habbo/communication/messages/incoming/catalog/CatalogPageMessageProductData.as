package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_228:String = "e";
      
      public static const const_84:String = "i";
      
      public static const const_81:String = "s";
       
      
      private var var_1107:String;
      
      private var var_1369:String;
      
      private var var_1372:int;
      
      private var var_2076:int;
      
      private var var_1108:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1369 = param1.readString();
         var_2076 = param1.readInteger();
         var_1107 = param1.readString();
         var_1108 = param1.readInteger();
         var_1372 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1108;
      }
      
      public function get productType() : String
      {
         return var_1369;
      }
      
      public function get expiration() : int
      {
         return var_1372;
      }
      
      public function get furniClassId() : int
      {
         return var_2076;
      }
      
      public function get extraParam() : String
      {
         return var_1107;
      }
   }
}
