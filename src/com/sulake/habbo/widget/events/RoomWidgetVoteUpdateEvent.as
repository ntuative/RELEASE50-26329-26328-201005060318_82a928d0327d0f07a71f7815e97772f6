package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_132:String = "RWPUE_VOTE_RESULT";
      
      public static const const_114:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1250:int;
      
      private var var_1067:String;
      
      private var var_674:Array;
      
      private var var_960:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1067 = param2;
         var_960 = param3;
         var_674 = param4;
         if(var_674 == null)
         {
            var_674 = [];
         }
         var_1250 = param5;
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
