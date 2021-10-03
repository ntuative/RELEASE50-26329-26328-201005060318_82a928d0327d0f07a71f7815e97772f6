package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_136;
         param1["bound_to_parent_rect"] = const_89;
         param1["child_window"] = const_1001;
         param1["embedded_controller"] = const_346;
         param1["resize_to_accommodate_children"] = const_67;
         param1["input_event_processor"] = const_50;
         param1["internal_event_handling"] = const_569;
         param1["mouse_dragging_target"] = const_207;
         param1["mouse_dragging_trigger"] = const_289;
         param1["mouse_scaling_target"] = const_261;
         param1["mouse_scaling_trigger"] = const_484;
         param1["horizontal_mouse_scaling_trigger"] = const_227;
         param1["vertical_mouse_scaling_trigger"] = const_212;
         param1["observe_parent_input_events"] = const_936;
         param1["optimize_region_to_layout_size"] = const_424;
         param1["parent_window"] = const_858;
         param1["relative_horizontal_scale_center"] = const_163;
         param1["relative_horizontal_scale_fixed"] = const_128;
         param1["relative_horizontal_scale_move"] = const_300;
         param1["relative_horizontal_scale_strech"] = const_272;
         param1["relative_scale_center"] = const_994;
         param1["relative_scale_fixed"] = const_532;
         param1["relative_scale_move"] = const_891;
         param1["relative_scale_strech"] = const_979;
         param1["relative_vertical_scale_center"] = const_167;
         param1["relative_vertical_scale_fixed"] = const_112;
         param1["relative_vertical_scale_move"] = const_345;
         param1["relative_vertical_scale_strech"] = const_265;
         param1["on_resize_align_left"] = const_618;
         param1["on_resize_align_right"] = const_413;
         param1["on_resize_align_center"] = const_473;
         param1["on_resize_align_top"] = const_731;
         param1["on_resize_align_bottom"] = const_402;
         param1["on_resize_align_middle"] = const_360;
         param1["on_accommodate_align_left"] = const_954;
         param1["on_accommodate_align_right"] = const_423;
         param1["on_accommodate_align_center"] = const_527;
         param1["on_accommodate_align_top"] = const_826;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_660;
         param1["route_input_events_to_parent"] = const_393;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_809;
         param1["scalable_with_mouse"] = const_944;
         param1["reflect_horizontal_resize_to_parent"] = const_470;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_280;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
