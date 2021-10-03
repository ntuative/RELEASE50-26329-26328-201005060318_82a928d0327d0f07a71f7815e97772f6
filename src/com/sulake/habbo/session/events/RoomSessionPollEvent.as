package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_121:String = "RSPE_POLL_CONTENT";
      
      public static const const_125:String = "RSPE_POLL_OFFER";
      
      public static const const_64:String = "RSPE_POLL_ERROR";
       
      
      private var var_1046:Array = null;
      
      private var var_1266:String = "";
      
      private var var_1223:String;
      
      private var var_1267:String = "";
      
      private var var_1047:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_1046;
      }
      
      public function get startMessage() : String
      {
         return var_1266;
      }
      
      public function get summary() : String
      {
         return var_1223;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1266 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1047 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1223 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1047;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1267 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1267;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1046 = param1;
      }
   }
}
