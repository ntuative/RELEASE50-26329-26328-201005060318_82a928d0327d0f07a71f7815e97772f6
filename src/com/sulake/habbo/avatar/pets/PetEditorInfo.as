package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1698:Boolean;
      
      private var var_1697:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1698 = Boolean(parseInt(param1.@club));
         var_1697 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1698;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1697;
      }
   }
}
