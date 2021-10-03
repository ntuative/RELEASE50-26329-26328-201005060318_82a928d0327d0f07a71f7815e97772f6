package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_648:int = 2;
      
      public static const const_952:int = 6;
      
      public static const const_649:int = 1;
      
      public static const const_692:int = 3;
      
      public static const const_1009:int = 4;
      
      public static const const_576:int = 5;
       
      
      private var var_2159:String;
      
      private var var_1105:int;
      
      private var var_2160:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1105 = param2;
         var_2160 = param3;
         var_2159 = param4;
      }
      
      public function get time() : String
      {
         return var_2159;
      }
      
      public function get senderId() : int
      {
         return var_1105;
      }
      
      public function get messageText() : String
      {
         return var_2160;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
