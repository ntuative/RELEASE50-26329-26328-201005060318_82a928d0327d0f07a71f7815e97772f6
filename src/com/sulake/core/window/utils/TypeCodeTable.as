package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_729;
         param1["bitmap"] = const_728;
         param1["border"] = const_597;
         param1["border_notify"] = const_1403;
         param1["button"] = const_450;
         param1["button_thick"] = const_567;
         param1["button_icon"] = const_1269;
         param1["button_group_left"] = const_631;
         param1["button_group_center"] = const_549;
         param1["button_group_right"] = const_607;
         param1["canvas"] = const_530;
         param1["checkbox"] = const_523;
         param1["closebutton"] = const_926;
         param1["container"] = const_324;
         param1["container_button"] = const_630;
         param1["display_object_wrapper"] = const_659;
         param1["dropmenu"] = const_449;
         param1["dropmenu_item"] = const_438;
         param1["frame"] = const_314;
         param1["frame_notify"] = const_1358;
         param1["header"] = const_595;
         param1["icon"] = const_1026;
         param1["itemgrid"] = const_861;
         param1["itemgrid_horizontal"] = const_457;
         param1["itemgrid_vertical"] = const_525;
         param1["itemlist"] = const_996;
         param1["itemlist_horizontal"] = const_293;
         param1["itemlist_vertical"] = const_343;
         param1["maximizebox"] = const_1341;
         param1["menu"] = const_1270;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_808;
         param1["minimizebox"] = const_1248;
         param1["notify"] = const_1249;
         param1["null"] = const_705;
         param1["password"] = const_556;
         param1["radiobutton"] = const_696;
         param1["region"] = const_478;
         param1["restorebox"] = const_1281;
         param1["scaler"] = const_665;
         param1["scaler_horizontal"] = const_1219;
         param1["scaler_vertical"] = const_1289;
         param1["scrollbar_horizontal"] = const_391;
         param1["scrollbar_vertical"] = const_640;
         param1["scrollbar_slider_button_up"] = const_931;
         param1["scrollbar_slider_button_down"] = const_933;
         param1["scrollbar_slider_button_left"] = const_912;
         param1["scrollbar_slider_button_right"] = const_920;
         param1["scrollbar_slider_bar_horizontal"] = const_837;
         param1["scrollbar_slider_bar_vertical"] = const_916;
         param1["scrollbar_slider_track_horizontal"] = const_969;
         param1["scrollbar_slider_track_vertical"] = const_895;
         param1["scrollable_itemlist"] = const_1215;
         param1["scrollable_itemlist_vertical"] = const_462;
         param1["scrollable_itemlist_horizontal"] = const_977;
         param1["selector"] = const_586;
         param1["selector_list"] = const_647;
         param1["submenu"] = const_808;
         param1["tab_button"] = const_662;
         param1["tab_container_button"] = const_822;
         param1["tab_context"] = const_370;
         param1["tab_content"] = const_823;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_698;
         param1["input"] = const_658;
         param1["toolbar"] = const_1287;
         param1["tooltip"] = const_291;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
