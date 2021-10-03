package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_132:String = "RSPE_VOTE_RESULT";
      
      public static const const_114:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1250:int = 0;
      
      private var var_1067:String = "";
      
      private var var_674:Array;
      
      private var var_960:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_960 = [];
         var_674 = [];
         super(param1,param2,param7,param8);
         var_1067 = param3;
         var_960 = param4;
         var_674 = param5;
         if(var_674 == null)
         {
            var_674 = [];
         }
         var_1250 = param6;
      }
      
      public function get votes() : Array
      {
         return var_674.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1250;
      }
      
      public function get question() : String
      {
         return var_1067;
      }
      
      public function get choices() : Array
      {
         return var_960.slice();
      }
   }
}
