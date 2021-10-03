package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_666:int = -1;
      
      public static const const_903:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1764:int = -1;
      
      private var var_83:int = 0;
      
      private var var_1172:int = 1;
      
      private var var_804:int = 1;
      
      private var var_1765:Boolean = false;
      
      private var var_1763:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_83 = param2;
         _y = param3;
         var_1765 = param5;
         if(param4 < 0)
         {
            param4 = const_666;
         }
         var_804 = param4;
         var_1172 = param4;
         if(param6 >= 0)
         {
            var_1764 = param6;
            var_1763 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_804 > 0 && param1 > var_804)
         {
            param1 = var_804;
         }
         var_1172 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_804;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1763;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_804 < 0)
         {
            return const_666;
         }
         return var_1172;
      }
      
      public function get activeSequence() : int
      {
         return var_1764;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1765;
      }
      
      public function get x() : int
      {
         return var_83;
      }
   }
}
