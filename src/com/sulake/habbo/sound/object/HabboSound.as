package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1087:SoundChannel = null;
      
      private var var_926:Boolean;
      
      private var var_1088:Sound = null;
      
      private var var_688:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1088 = param1;
         var_1088.addEventListener(Event.COMPLETE,onComplete);
         var_688 = 1;
         var_926 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_926;
      }
      
      public function stop() : Boolean
      {
         var_1087.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_926 = false;
         var_1087 = var_1088.play(0);
         this.volume = var_688;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_688;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1087.position;
      }
      
      public function get length() : Number
      {
         return var_1088.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_688 = param1;
         if(var_1087 != null)
         {
            var_1087.soundTransform = new SoundTransform(var_688);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_926 = true;
      }
   }
}
