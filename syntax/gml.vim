" Vim syntax file
" Language: Game Maker Language (.gml)
" Maintainer: Ness Morris
" Latest Revision: 2016-08-22

if exists("b:current_syntax")
  finish
endif

" Control structures
syn keyword gmlConditional if else switch
syn keyword gmlStatement break return continue exit
syn keyword gmlLabel case default
syn keyword gmlRepeat while for repeat do while
syn keyword gmlWith with
syn match gmlDefine '\v#define.*'
syn keyword gmlTodo contained TODO FIXME NOTE XXX

syn keyword gmlType var string
syn keyword gmlBoolean true false
syn keyword gmlKeyword self other all noone undefined global
syn keyword gmlBuiltinGlobal score health lives async_load

syn keyword gmlBuiltinScriptVariable argument_count
syn match gmlBuiltinScriptVariable '\v<argument(1?[0-5]|[0-9])>'
syn match gmlBuiltinScriptVariable '\v<argument\ze\[(1?[0-5]|[0-9])\]'

syn match gmlBuiltinFunction '\v<is_array\ze\_s*\('
syn match gmlBuiltinFunction '\v<is_int(32|64)\ze\_s*\('
syn match gmlBuiltinFunction '\v<is_matrix\ze\_s*\('
syn match gmlBuiltinFunction '\v<is_ptr\ze\_s*\('
syn match gmlBuiltinFunction '\v<is_real\ze\_s*\('
syn match gmlBuiltinFunction '\v<is_string\ze\_s*\('
syn match gmlBuiltinFunction '\v<is_undefined\ze\_s*\('

syn match gmlBuiltinFunction '\v<array_length(1|2)d\ze\_s*\('
syn match gmlBuiltinFunction '\v<array_height2d\ze\_s*\('

syn match gmlDSType '\v<ds_type_(map|list|stack|grid|queue|priority)>'
syn match gmlDSFunction '\v<ds_(exists|set_precision)>'
syn match gmlDSFunction '\v<ds_(grid|list|map|queue|stack|priority)_(create|destroy|clear)>'

syn keyword gmlDSGridFunction ds_grid_create ds_grid_destroy ds_grid_width ds_grid_height ds_grid_resize ds_grid_clear ds_grid_set ds_grid_set_disk ds_grid_set_grid_region ds_grid_set_region ds_grid_shuffle ds_grid_sort ds_grid_get ds_grid_get_max ds_grid_get_mean ds_grid_get_min ds_grid_get_sum ds_grid_get_disk_max ds_grid_get_disk_mean ds_grid_get_disk_min ds_grid_get_disk_sum ds_grid_add ds_grid_add_region ds_grid_add_disk ds_grid_add_grid_region ds_grid_multiply ds_grid_multiply_disk ds_grid_multiply_region ds_grid_multiply_grid_region ds_grid_value_exists ds_grid_value_disk_exists ds_grid_value_x ds_grid_value_y ds_grid_value_disk_x ds_grid_value_disk_y ds_grid_copy ds_grid_read ds_grid_write

syn keyword gmlDSListFunction ds_list_create ds_list_destroy ds_list_clear ds_list_empty ds_list_size ds_list_add ds_list_delete ds_list_find_index ds_list_find_value ds_list_insert ds_list_replace ds_list_shuffle ds_list_sort ds_list_copy ds_list_read ds_list_write

syn keyword gmlDSMapFunction ds_map_exists ds_map_create ds_map_add ds_map_clear ds_map_copy ds_map_replace ds_map_delete ds_map_empty ds_map_size ds_map_find_first ds_map_find_last ds_map_find_next ds_map_find_previous ds_map_find_value ds_map_read ds_map_write ds_map_destroy ds_map_secure_save ds_map_secure_load

syn keyword gmlDSJSONFunction ds_list_mark_as_list ds_list_mark_as_map ds_map_add_list ds_map_add_map ds_map_replace_list ds_map_replace_map

syn keyword gmlDSPriorityFunction ds_priority_create ds_priority_destroy ds_priority_clear ds_priority_empty ds_priority_size ds_priority_add ds_priority_change_priority ds_priority_delete_max ds_priority_delete_min ds_priority_delete_value ds_priority_find_max ds_priority_find_min ds_priority_find_priority ds_priority_copy ds_priority_read ds_priority_write

syn keyword gmlDSQueueFunction ds_queue_create ds_queue_destroy ds_queue_clear ds_queue_empty ds_queue_size ds_queue_dequeue ds_queue_enqueue ds_queue_head ds_queue_tail ds_queue_copy ds_queue_read ds_queue_write

syn keyword gmlDSStackFunction ds_stack_create ds_stack_destroy ds_stack_clear ds_stack_empty ds_stack_size ds_stack_copy ds_stack_top ds_stack_pop ds_stack_push ds_stack_read ds_stack_write

syn keyword gmlBufferFunction buffer_create buffer_create_from_vertex_buffer buffer_create_from_vertex_buffer_ext buffer_delete buffer_read buffer_write buffer_fill buffer_seek buffer_tell buffer_peek buffer_poke buffer_save buffer_save_ext buffer_save_async buffer_load buffer_load_ext buffer_load_async buffer_async_group_begin buffer_async_group_option buffer_async_group_end buffer_copy buffer_copy_from_vertex_buffer buffer_get_address buffer_get_size buffer_get_surface buffer_set_surface buffer_resize buffer_sizeof buffer_md5 buffer_sha1 buffer_base64_encode buffer_base64_decode

syn keyword gmlCloudFunction cloud_synchronise cloud_string_save cloud_file_save

syn keyword gmlTimeFunction date_set_timezone date_get_timezone current_time current_second current_minute current_hour current_day current_weekday current_month current_year date_create_datetime date_current_datetime date_compare_date date_compare_datetime date_compare_time date_valid_datetime date_date_of date_time_of date_is_today date_leap_year date_date_string date_datetime_string date_time_string date_second_span date_minute_span date_hour_span date_day_span date_week_span date_month_span date_year_span date_days_in_month date_days_in_year date_get_second date_get_minute date_get_hour date_get_day date_get_weekday date_get_week date_get_month date_get_year date_get_second_of_year date_get_minute_of_year date_get_hour_of_year date_get_day_of_year date_inc_second date_inc_minute date_inc_hour date_inc_day date_inc_week date_inc_month date_inc_year get_timer delta_time

syn keyword gmlDebugFunction debug_mode get_integer get_string show_error show_message show_question show_debug_message show_debug_overlay code_is_compiled fps fps_real

syn keyword gmlDrawingFunction texture_get_width texture_get_height texture_get_texel_width texture_get_texel_height texture_set_interpolation texture_set_interpolation_ext texture_set_blending texture_set_repeat texture_set_repeat_ext texture_set_stage draw_texture_flush draw_enable_drawevent colour_get_blue color_get_blue colour_get_green color_get_green colour_get_red color_get_red colour_get_hue color_get_hue colour_get_saturation color_get_saturation colour_get_value color_get_value draw_getpixel draw_getpixel_ext draw_get_colour draw_get_color draw_get_alpha make_colour_hsv make_color_hsv make_colour_rgb make_color_rgb merge_colour merge_color draw_clear draw_clear_alpha draw_set_alpha draw_set_colour draw_set_color draw_set_colour_write_enable draw_set_color_write_enable draw_set_blend_mode draw_set_blend_mode_ext draw_set_alpha_test draw_set_alpha_test_ref_value draw_get_alpha_test draw_get_alpha_test_ref_value draw_enable_alphablend draw_arrow draw_circle draw_circle_colour draw_circle_color draw_ellipse draw_ellipse_colour draw_ellipse_color draw_line draw_line_colour draw_line_color draw_line_width draw_line_width_colour draw_line_width_color draw_point draw_point_colour draw_point_color draw_rectangle draw_rectangle_colour draw_rectangle_color draw_roundrect draw_roundrect_colour draw_roundrect_color draw_roundrect_ext draw_roundrect_colour_ext draw_roundrect_color_ext draw_triangle draw_triangle_colour draw_triangle_color draw_set_circle_precision draw_button draw_healthbar draw_path draw_primitive_begin draw_primitive_begin_texture draw_primitive_end draw_vertex draw_vertex_colour draw_vertex_color draw_vertex_texture draw_vertex_texture_colour draw_vertex_texture_color draw_self draw_sprite draw_sprite_ext draw_sprite_general draw_sprite_part draw_sprite_part_ext draw_sprite_stretched draw_sprite_stretched_ext draw_sprite_pos draw_sprite_tiled draw_sprite_tiled_ext draw_enable_swf_aa draw_set_swf_aa_level draw_get_swf_aa_level draw_skeleton draw_skeleton_collision draw_skeleton_time draw_background draw_background_ext draw_background_part draw_background_part_ext draw_background_stretched draw_background_stretched_ext draw_background_tiled draw_background_tiled_ext draw_background_general draw_surface draw_surface_ext draw_surface_part draw_surface_part_ext draw_surface_stretched draw_surface_stretched_ext draw_surface_tiled draw_surface_tiled_ext draw_surface_general draw_set_font draw_set_halign draw_set_valign draw_text draw_text_ext draw_text_colour draw_text_color draw_text_transformed draw_text_ext_colour draw_text_ext_color draw_text_ext_transformed draw_text_transformed_colour draw_text_transformed_color draw_text_ext_transformed_colour draw_text_ext_transformed_color draw_highscore

syn keyword gml3DDrawingFunction d3d_primitive_begin d3d_vertex d3d_vertex_colour d3d_vertex_color d3d_primitive_end d3d_primitive_begin_texture d3d_vertex_texture d3d_vertex_texture_colour d3d_vertex_texture_color d3d_draw_block d3d_draw_cylinder d3d_draw_cone d3d_draw_ellipsoid d3d_draw_wall d3d_draw_floor d3d_set_fog d3d_set_lighting d3d_set_shading d3d_light_define_direction d3d_light_define_point d3d_light_enable d3d_light_define_ambient d3d_vertex_normal d3d_vertex_normal_colour d3d_vertex_normal_color d3d_vertex_normal_texture d3d_vertex_normal_texture_colour d3d_vertex_normal_texture_color d3d_model_create d3d_model_destroy d3d_model_clear d3d_model_save d3d_model_load d3d_model_draw d3d_model_primitive_begin d3d_model_vertex d3d_model_vertex_colour d3d_model_vertex_color d3d_model_vertex_texture d3d_model_vertex_texture_colour d3d_model_vertex_texture_color d3d_model_vertex_normal d3d_model_vertex_normal_colour d3d_model_vertex_normal_color d3d_model_vertex_normal_texture d3d_model_vertex_normal_texture_colour d3d_model_vertex_normal_texture_color d3d_model_primitive_end d3d_model_block d3d_model_cylinder d3d_model_cone d3d_model_ellipsoid d3d_model_wall d3d_model_floor d3d_set_projection d3d_set_projection_ext d3d_set_projection_ortho d3d_set_projection_perspective d3d_start d3d_end d3d_set_hidden d3d_set_perspective d3d_set_depth d3d_set_culling d3d_set_zwriteenable d3d_transform_set_identity d3d_transform_set_translation d3d_transform_set_scaling d3d_transform_set_rotation_x d3d_transform_set_rotation_y d3d_transform_set_rotation_z d3d_transform_set_rotation_axis d3d_transform_add_translation d3d_transform_add_scaling d3d_transform_add_rotation_x d3d_transform_add_rotation_y d3d_transform_add_rotation_z d3d_transform_add_rotation_axis d3d_transform_stack_clear d3d_transform_stack_empty d3d_transform_stack_push d3d_transform_stack_pop d3d_transform_stack_top d3d_transform_stack_discard d3d_transform_vertex

syn keyword gmlFileFunction directory_exists directory_create directory_destroy temp_directory working_directory program_directory base64_encode base64_decode json_encode json_decode md5_string_utf8 md5_string_unicode md5_file sha1_string_utf8 sha1_string_unicode sha1_file zip_unzip

syn keyword gmlBinaryFileFunction file_bin_open file_bin_rewrite file_bin_close file_bin_size file_bin_position file_bin_seek file_bin_write_byte file_bin_read_byte

syn keyword gmlFileSystemFunction file_exists file_delete file_rename file_copy file_find_first file_find_next file_find_close file_attributes filename_name filename_path filename_dir filename_drive filename_ext filename_change_ext get_open_filename get_open_filename_ext get_save_filename get_save_filename_ext

syn keyword gmlTextFileFunction get_open_filename get_open_filename_ext get_save_filename get_save_filename_ext

syn keyword gmlIniFileFunction ini_open ini_close ini_write_real ini_write_string ini_read_real ini_read_string ini_key_exists ini_section_exists ini_key_delete ini_section_delete ini_open_from_string

syn keyword gmlAssetFunction asset_get_index asset_get_type

syn match gmlBackgroundFunction '\v<background_(index|visible|alpha|blend|x|y|foreground|hspeed|vspeed|htiled|vtiled|width|height|xscale|yscale|colour color|showcolour showcolor)'
syn match gmlBackgroundFunction '\v<background_get_(name|width|height|texture|uvs)'
syn keyword gmlBackgroundFunction background_exists background_add background_replace background_duplicate background_assign background_create_colour background_create_color background_create_gradient background_create_from_surface background_set_alpha_from_background background_save background_delete

syn keyword gmlBackgroundTileFunction tile_layer_depth tile_layer_find tile_layer_hide tile_layer_show tile_layer_shift tile_layer_delete tile_layer_delete_at tile_get_background tile_get_alpha tile_get_visible tile_get_blend tile_get_depth tile_get_width tile_get_height tile_get_left tile_get_top tile_get_x tile_get_y tile_get_xscale tile_get_yscale tile_get_count tile_get_id tile_get_ids tile_get_ids_at_depth tile_exists tile_add tile_delete tile_set_background tile_set_visible tile_set_alpha tile_set_blend tile_set_depth tile_set_position tile_set_region tile_set_scale

syn keyword gmlFontFunction font_get_name font_get_fontname font_get_first font_get_last font_get_italic font_get_bold font_get_size font_get_texture font_get_uvs font_set_cache_size font_exists font_add font_add_sprite font_add_sprite_ext font_replace font_replace_sprite font_replace_sprite_ext font_delete

syn keyword gmlAudioFunction audio_exists audio_get_name audio_get_type audio_play_sound audio_play_sound_at audio_pause_sound audio_pause_all audio_resume_sound audio_resume_all audio_stop_sound audio_stop_all audio_is_playing audio_is_paused audio_create_stream audio_destroy_stream audio_sound_set_track_position audio_sound_get_track_position audio_sound_length audio_sound_pitch audio_sound_get_pitch audio_falloff_set_model audio_sound_gain audio_sound_get_gain audio_master_gain audio_set_master_gain audio_get_master_gain audio_channel_num audio_debug audio_system

syn keyword gmlAudioEmitterFunction audio_emitter_create audio_emitter_exists audio_emitter_position audio_emitter_velocity audio_emitter_falloff audio_emitter_gain audio_emitter_pitch audio_emitter_free audio_play_sound_on audio_emitter_get_gain audio_emitter_get_pitch audio_emitter_get_x audio_emitter_get_y audio_emitter_get_z audio_emitter_get_vx audio_emitter_get_vy audio_emitter_get_vz

syn keyword gmlAudioListenerFunction audio_listener_position audio_listener_velocity audio_listener_orientation audio_listener_get_data audio_listener_set_position audio_listener_set_velocity audio_listener_set_orientation audio_get_listener_count audio_get_listener_info audio_set_listener_mask audio_sound_set_listener_mask audio_emitter_set_listener_mask audio_get_listener_mask audio_sound_get_listener_mask audio_emitter_get_listener_mask

syn keyword gmlAudioGroupFunction audio_group_load audio_group_unload audio_group_is_loaded audio_group_load_progress audio_group_name audio_group_stop audio_group_set_gain

syn keyword gmlAudioBufferFunction audio_create_buffer_sound audio_free_buffer_sound audio_create_play_queue audio_free_play_queue audio_queue_sound audio_start_recording audio_stop_recording audio_get_recorder_count audio_get_recorder_info

syn keyword gmlAudioSyncFunction audio_create_sync_group audio_play_in_sync_group audio_start_sync_group audio_stop_sync_group audio_pause_sync_group audio_resume_sync_group audio_sync_group_get_track_pos audio_destroy_sync_group audio_sync_group_debug audio_sync_group_is_playing

syn keyword gmlSpriteFunction sprite_get_name sprite_get_number sprite_get_width sprite_get_height sprite_get_xoffset sprite_get_yoffset sprite_get_bbox_bottom sprite_get_bbox_left sprite_get_bbox_right sprite_get_bbox_top sprite_get_tpe sprite_get_texture sprite_get_uvs sprite_exists sprite_add sprite_replace sprite_duplicate sprite_assign sprite_merge sprite_create_from_surface sprite_add_from_surface sprite_collision_mask sprite_set_offset sprite_delete sprite_set_alpha_from_sprite sprite_set_cache_size sprite_set_cache_size_ext sprite_save sprite_save_strip

syn keyword gmlSkeletalAnimationFunction skeleton_animation_get skeleton_animation_set skeleton_animation_get_ext skeleton_animation_set_ext skeleton_animation_get_duration skeleton_animation_mix skeleton_animation_list skeleton_animation_clear skeleton_skin_get skeleton_skin_set skeleton_skin_list skeleton_attachment_get skeleton_attachment_set skeleton_attachment_create skeleton_bone_data_get skeleton_bone_data_set skeleton_bone_state_get skeleton_bone_state_set skeleton_slot_data skeleton_collision_draw_set draw_skeleton draw_skeleton_collision draw_skeleton_time

syn keyword gmlHTML5Function url_open url_open_ext url_open_full url_get_domain browser_height browser_width browser_input_capture webgl_enabled clickable_exists clickable_add clickable_add_ext clickable_change clickable_change_ext clickable_set_style clickable_delete

syn keyword gmlIAPFunction iap_activate iap_status iap_enumerate_products iap_restore_all iap_acquire iap_consume iap_product_details iap_purchase_details iap_is_purchased

syn keyword gmlRandomFunction choose random random_range irandom irandom_range random_set_seed random_get_seed random_use_old_version randomize

syn keyword gmlTrigFunction arccos arcsin arctan arctan2 sin tan cos darccos darcsin darctan darctan2 dsin dtan dcos degtorad radtodeg lengthdir_x lengthdir_y

syn keyword gmlRoundFunction round floor frac abs sign ceil max mean median min lerp clamp

syn keyword gmlMathFunction exp ln power sqr sqrt log2 log10 logn int64

syn keyword gmlVectorFunction point_direction point_distance point_distance_3d dot_product dot_product_3d dot_product_normalised dot_product_normalised_3d angle_difference

syn keyword gmlMiscFunction game_id game_save_id game_display_name game_project_name game_end game_restart game_load game_load_buffer game_save game_save_buffer script_exists script_get_name script_execute gml_release_mode gml_pragma parameter_count parameter_string environment_get_variable external_define external_call external_free cursor_sprite alarm_set alarm_get GM_build_date GM_version

syn keyword gmlMatrixFunction matrix_get matrix_set matrix_build matrix_multiply is_matrix

syn keyword gmlVirtualKeyFunction virtual_key_add virtual_key_show virtual_key_hide virtual_key_delete

syn keyword gmlDeviceInputFunction device_mouse_check_button device_mouse_check_button_pressed device_mouse_check_button_released device_mouse_dbclick_enable device_mouse_x device_mouse_y device_mouse_raw_x device_mouse_raw_y device_mouse_x_to_gui device_mouse_y_to_gui device_is_keypad_open device_get_tilt_x device_get_tilt_y device_get_tilt_z

syn keyword gmlGamepadFunction gamepad_is_supported gamepad_get_device_count gamepad_is_connected gamepad_get_description gamepad_get_button_threshold gamepad_set_button_threshold gamepad_axis_count gamepad_axis_value gamepad_button_check gamepad_button_check_pressed gamepad_button_check_released gamepad_button_count gamepad_button_value gamepad_set_vibration gamepad_set_axis_deadzone gamepad_set_colour gamepad_set_color

syn keyword gmlImmersionHapticFunction immersion_play_effect immersion_stop

syn keyword gmlJoystickFunction joystick_exists joystick_name joystick_axes joystick_buttons joystick_has_pov joystick_direction joystick_check_button joystick_xpos joystick_ypos joystick_zpos joystick_rpos joystick_upos joystick_vpos joystick_pov

syn keyword gmlKeyboardConstant vk_nokey vk_anykey vk_left vk_right vk_up vk_down vk_enter vk_escape vk_space vk_shift vk_control vk_alt vk_backspace vk_tab vk_home vk_end vk_delete vk_insert vk_pageup vk_pagedown vk_pause vk_printscreen vk_multiply vk_divide vk_add vk_subtract vk_decimal

syn match gmlKeyboardConstant 'vk_f[0-9]'
syn match gmlKeyboardConstant 'vk_f1[0-2]'
syn match gmlKeyboardConstant 'vk_numpad[0-9]'

syn keyword gmlKeyboardModifierConstant vk_lshift vk_lcontrol vk_lalt vk_rshift vk_rcontrol vk_ralt

syn keyword gmlKeyboardFunction io_clear keyboard_check keyboard_check_pressed keyboard_check_released keyboard_check_direct keyboard_clear keyboard_key_press keyboard_key_release keyboard_key keyboard_lastkey keyboard_lastchar keyboard_string keyboard_set_map keyboard_get_map keyboard_unset_map keyboard_get_numlock keyboard_set_numlock

syn keyword gmlMouseFunction mouse_button mouse_check_button mouse_check_button_pressed mouse_check_button_released mouse_clear mouse_last_button mouse_wheel_up mouse_wheel_down mouse_x mouse_y

syn keyword gmlMouseConstant mb_left mb_middle mb_right mb_none mb_any

syn keyword gmlCollisionFunction place_empty place_free place_meeting position_empty position_meeting position_change position_destroy collision_circle collision_ellipse collision_line collision_point collision_rectangle point_in_rectangle point_in_triangle point_in_circle rectangle_in_rectangle rectangle_in_triangle rectangle_in_circle

syn keyword gmlMotionPlanningFunction mp_linear_step mp_linear_step_object mp_linear_path mp_linear_path_object mp_potential_settings mp_potential_step mp_potential_step_object mp_potential_path mp_potential_path_object mp_grid_create mp_grid_destroy mp_grid_path mp_grid_add_cell mp_grid_add_instances mp_grid_add_rectangle mp_grid_get_cell mp_grid_clear_all mp_grid_clear_cell mp_grid_clear_rectangle mp_grid_to_ds_grid mp_grid_draw

syn keyword gmlBuiltinMovementVariable direction friction gravity gravity_direction hspeed vspeed speed x y xprevious yprevious xstart ystart

syn keyword gmlMovementFunction distance_to_object distance_to_point motion_add motion_set move_towards_point move_bounce_all move_bounce_solid move_contact_all move_contact_solid move_outside_all move_outside_solid move_random move_snap place_snapped move_wrap

syn keyword gmlNetworkFunction network_create_server network_create_server_raw network_create_socket network_create_socket_ext network_connect network_connect_raw network_resolve network_set_config network_set_timeout network_send_broadcast network_send_packet network_send_raw network_send_udp network_send_udp_raw network_destroy

syn keyword gmlBuiltinInstanceVariable instance_id instance_count

syn keyword gmlBuiltinInstanceProperty id solid visible persistent depth alarm object_index sprite_index sprite_width sprite_height sprite_xoffset sprite_yoffset image_alpha image_angle image_blend image_index image_number image_speed image_xscale image_yscale mask_index bbox_bottom bbox_left bbox_right bbox_top

syn keyword gmlPathFunction path_start path_end path_add path_add_point path_change_point path_insert_point path_delete_point path_clear_points path_append path_assign path_delete path_duplicate path_flip path_mirror path_reverse path_rotate path_scale path_set_closed path_set_kind path_set_precision path_shift path_exists path_get_closed path_get_kind path_get_length path_get_name path_get_number path_get_point_speed path_get_point_x path_get_point_y path_get_precision path_get_speed path_get_x path_get_y

syn keyword gmlPathVariable path_index path_position path_positionprevious path_speed path_scale path_orientation path_endaction

syn keyword gmlBuiltinInstanceFunction instance_change instance_copy instance_create instance_destroy instance_exists instance_find instance_furthest instance_nearest instance_number instance_place instance_position

syn keyword gmlGlobalInstanceFunction instance_activate_all instance_activate_object instance_activate_region instance_deactivate_all instance_deactivate_object instance_deactivate_region

syn keyword gmlGlobalObjectFunction object_exists object_index object_get_depth object_get_mask object_get_name object_get_parent object_get_persistent object_get_solid object_get_sprite object_get_visible object_get_physics object_is_ancestor object_set_depth object_set_mask object_set_persistent object_set_solid object_set_sprite object_set_visible

syn keyword gmlEventFunction event_inherited event_perform event_perform_object event_user

syn keyword gmlEventVariable event_action event_number event_object event_type

syn keyword gmlOSFunction os_browser os_device os_type os_version os_is_paused os_is_network_connected os_get_config os_get_language os_get_region os_get_info os_powersave_enable os_lock_orientation

syn keyword gmlSimpleParticleFunction effect_create_below effect_create_above effect_clear

syn keyword gmlParticleEffectConstant ef_cloud ef_ellipse ef_explosion ef_firework ef_flare ef_rain ef_ring ef_smoke ef_smokeup ef_snow ef_spark ef_star

syn keyword gmlParticleEffectFunction part_system_exists part_system_create part_system_clear part_system_depth part_system_position part_system_destroy part_particles_clear part_particles_count part_system_automatic_update part_system_automatic_draw part_system_update part_system_drawit part_system_draw_order part_particles_create part_particles_create_colour part_particles_create_color part_type_exists part_type_create part_type_destroy part_type_clear part_type_shape part_type_sprite part_type_size part_type_scale part_type_speed part_type_direction part_type_gravity part_type_orientation part_type_colour_mix part_type_color_mix part_type_colour_rgb part_type_color_rgb part_type_colour_hsv part_type_color_hsv part_type_colour1 part_type_color1 part_type_colour2 part_type_color2 part_type_colour3 part_type_color3 part_type_alpha1 part_type_alpha2 part_type_alpha3 part_type_blend part_type_life part_type_step part_type_death

syn keyword gmlParticleEmitterFunction part_emitter_exists part_emitter_create part_emitter_clear part_emitter_region part_emitter_burst part_emitter_stream part_emitter_destroy part_emitter_destroy_all

syn keyword gmlPhysicsFunction physics_test_overlap physics_mass_properties

syn keyword gmlPhysicsFixtureFunction physics_fixture_create physics_fixture_bind physics_fixture_bind_ext physics_fixture_set_collision_group physics_fixture_delete physics_remove_fixture physics_fixture_set_box_shape physics_fixture_set_circle_shape physics_fixture_set_edge_shape physics_fixture_set_chain_shape physics_fixture_set_polygon_shape physics_fixture_add_point physics_fixture_set_density physics_fixture_set_friction physics_fixture_set_linear_damping physics_fixture_set_angular_damping physics_fixture_set_restitution physics_fixture_set_sensor physics_fixture_set_kinematic physics_fixture_set_awake physics_get_friction physics_get_density physics_get_restitution physics_set_friction physics_set_density physics_set_restitution physics_mass_properties

syn keyword gmlPhysicsForceFunction physics_apply_force physics_apply_impulse physics_apply_local_force physics_apply_local_impulse physics_apply_torque physics_apply_angular_impulse

syn keyword gmlPhysicsJointFunction physics_joint_distance_create physics_joint_revolute_create physics_joint_prismatic_create physics_joint_pulley_create physics_joint_gear_create physics_joint_rope_create physics_joint_wheel_create physics_joint_weld_create physics_joint_friction_create physics_joint_delete physics_joint_enable_motor physics_joint_get_value physics_joint_set_value

syn keyword gmlPhysicsJointConstant phy_joint_anchor_1_x phy_joint_anchor_2_x phy_joint_anchor_1_y phy_joint_anchor_2_y phy_joint_reaction_force_x phy_joint_reaction_force_y phy_joint_reaction_torque phy_joint_max_motor_force phy_joint_max_motor_torque phy_joint_motor_force phy_joint_motor_speed phy_joint_motor_torque phy_joint_angle phy_joint_angle_limits phy_joint_upper_angle_limit phy_joint_lower_angle_limit phy_joint_translation phy_joint_speed phy_joint_length_1 phy_joint_length_2 phy_joint_damping_ratio phy_joint_frequency phy_joint_max_torque phy_joint_max_force phy_join_max_length

syn keyword gmlPhysicsVariable phy_active phy_angular_velocity phy_angular_damping phy_linear_velocity_x phy_linear_velocity_y phy_linear_damping phy_speed_x phy_speed_y phy_position_x phy_position_y phy_position_xprevious phy_position_yprevious phy_rotation phy_fixed_rotation phy_bullet phy_speed phy_com_x phy_com_y phy_dynamic phy_kinematic phy_inertia phy_mass phy_sleeping phy_collision_points phy_collision_x phy_collision_y phy_col_normal_x phy_col_normal_y

syn keyword gmlPhysicsParticleFunction physics_particle_count physics_particle_group_count physics_particle_set_max_count physics_particle_set_radius physics_particle_set_density physics_particle_set_damping physics_particle_set_gravity_scale physics_particle_get_max_count physics_particle_get_radius physics_particle_get_density physics_particle_get_damping physics_particle_get_gravity_scale physics_particle_set_flags physics_particle_set_category_flags physics_particle_set_group_flags physics_particle_get_group_flags physics_particle_group_get_inertia physics_particle_group_get_centre_x physics_particle_group_get_centre_y physics_particle_group_get_vel_x physics_particle_group_get_vel_y physics_particle_group_get_ang_vel physics_particle_group_get_x physics_particle_group_get_y physics_particle_group_get_angle physics_particle_get_data physics_particle_get_data_particle physics_particle_group_get_data physics_particle_create physics_particle_group_begin physics_particle_group_circle physics_particle_group_box physics_particle_group_polygon physics_particle_group_add_point physics_particle_group_end physics_particle_group_join physics_particle_group_delete physics_particle_delete physics_particle_delete_region_circle physics_particle_delete_region_box physics_particle_delete_region_poly physics_particle_draw physics_particle_draw_ext 

syn keyword gmlPhysicsWorldFunction physics_world_create physics_world_gravity physics_world_update_iterations physics_world_update_speed physics_world_draw_debug physics_draw_debug physics_pause_enable

syn keyword gmlPushNotificationFunction push_local_notification push_get_first_local_notification push_get_next_local_notification push_cancel_local_notification

syn keyword gmlRoomFunction room_exists room_first room_last room_next room_previous room room_speed room_height room_width room_persistent room_caption room_get_name room_goto room_goto_next room_goto_previous room_restart room_add room_duplicate room_assign room_instance_add room_instance_clear room_tile_add room_tile_add_ext room_tile_clear room_set_background room_set_background_colour room_set_background_color room_set_height room_set_width room_set_persistent room_set_view room_set_view_enabled

syn keyword gmlShaderFunction shader_set shader_get_uniform shader_get_sampler_index shader_set_uniform_f shader_set_uniform_f_array shader_set_uniform_i shader_set_uniform_i_array shader_set_uniform_matrix shader_set_uniform_matrix_array shader_reset shader_is_compiled shaders_are_supported shader_enable_corner_id

syn keyword gmlShaderConstant MATRIX_VIEW MATRIX_PROJECTION MATRIX_WORLD MATRIX_WORLD_VIEW MATRIX_WORLD_VIEW_PROJECTION MATRIX_MAX MAX_VS_LIGHTS gm_Matrices gm_BaseTexture gm_LightingEnabled gm_FogStart gm_RcpFogRange gm_PS_FogEnabled gm_FogColour gm_VS_FogEnabled gm_AlphaTestEnabled gm_AlphaRefValue

" TODO: add steam integration functions

syn keyword gmlStringFunction ansi_char chr ord real is_string string string_byte_at string_byte_length string_set_byte_at string_char_at string_ord_at string_copy string_count string_delete string_digits string_format string_insert string_length string_letters string_lettersdigits string_lower string_pos string_repeat string_replace string_replace_all string_upper string_height string_height_ext string_width string_width_ext clipboard_has_text clipboard_get_text clipboard_set_text

syn keyword gmlSurfaceFunction surface_exists surface_create surface_create_ext surface_resize surface_set_target surface_set_target_ext surface_reset_target surface_copy surface_copy_part surface_get_height surface_get_width surface_get_texture surface_getpixel surface_getpixel_ext surface_free surface_save surface_save_part

syn keyword gmlApplicationSurfaceFunction applciation_surface application_surface_enable application_surface_is_enabled application_get_position application_surface_draw_enable

syn keyword gmlTimelineFunction timeline_exists timeline_get_name timeline_add timeline_delete timeline_moment_add_script timeline_moment_clear timeline_clear timeline_size timeline_max_moment timeline_index timeline_running timeline_speed timeline_position timeline_loop

syn keyword gmlDisplayFunction display_reset display_get_height display_get_width display_get_orientation display_get_dpi_x display_get_dpi_y display_set_gui_size display_set_gui_maximise display_get_gui_width display_get_gui_height display_set_windows_vertex_buffer_method display_set_windows_alternate_sync display_get_windows_vertex_buffer_method display_get_windows_alternate_sync display_mouse_get_x display_mouse_get_y display_mouse_set screen_save screen_save_part

syn keyword gmlWindowFunction window_center window_handle window_get_caption window_get_colour window_get_color window_get_fullscreen window_get_height window_get_width window_get_x window_get_y window_get_cursor window_get_visible_rects window_mouse_get_x window_mouse_get_y window_mouse_set window_set_caption window_set_colour window_set_color window_set_fullscreen window_set_position window_set_size window_set_rectangle window_set_cursor window_set_min_width window_set_max_width window_set_min_height window_set_max_height window_has_focus window_device

syn keyword gmlViewFunction view_enabled view_current view_visible view_object view_angle view_xview view_yview view_hview view_wview view_hborder view_vborder view_hspeed view_vspeed view_xport view_yport view_hport view_wport view_surface_id window_view_mouse_get_x window_view_mouse_get_y window_views_mouse_get_x window_views_mouse_get_y

" TODO: add windows 8 functions

syn match gmlVariableName '\v\I\i{,63}' contained
syn match gmlReal '\v<-?(\d+\.)?\d+>'

" Strings and chars
syn region gmlString start=/\v\z("|')/ skip=/\v\\./ end=/\v\z1/
syn match  gmlChar /'.'/

    " Unary operators
syn match gmlUnaryOperator '\v\!\ze([^=]|$)'|  " !
syn match gmlUnaryOperator '\v\~'|             " ~

    " Arithmetic operators
syn match gmlArithmeticOperator '\v\+'|        " +
syn match gmlArithmeticOperator '\v-'|         " -
syn match gmlArithmeticOperator '\v([^\/]|^)\zs\*\ze([^\/]|$)'|        " *
syn match gmlArithmeticOperator '\v/@<!//@!'|  " /
syn match gmlArithmeticOperator '\v<div>'|     " div
syn match gmlArithmeticOperator '\v\%'|        " %
syn match gmlArithmeticOperator '\v<mod>'|     " mod

    " Assignment operators
syn match gmlAssignmentOperator '\v\+\='|      " +=
syn match gmlAssignmentOperator '\v\-\='|      " -=
syn match gmlAssignmentOperator '\v\*\='|      " *=
syn match gmlAssignmentOperator '\v/\='|       " /=
syn match gmlAssignmentOperator '\v\='|        " =
syn match gmlAssignmentOperator '\v\+\+'|      " ++
syn match gmlAssignmentOperator '\v\-\-'|      " --

    " Comparison operators
syn match gmlComparisonOperator '\v\<'|        " <
syn match gmlComparisonOperator '\v\<\='|      " <=
syn match gmlComparisonOperator '\v\>'|        " >
syn match gmlComparisonOperator '\v\>\='|      " >=
syn match gmlComparisonOperator '\v\!\='|      " !=
syn match gmlComparisonOperator '\v\=\='|      " ==

    " Bitwise operators
syn match gmlBitwiseOperator '\v\|'|           " |
syn match gmlBitwiseOperator '\v\&'|           " &
syn match gmlBitwiseOperator '\v\^'|           " ^
syn match gmlBitwiseOperator '\v\<\<'|         " <<
syn match gmlBitwiseOperator '\v\>\>'|         " >>

    " Boolean operators
syn match gmlBooleanOperator '\v\&\&'|         " &&
syn match gmlBooleanOperator '\v\|\|'|         " ||
syn match gmlBooleanOperator '\v\^\^'|         " ^^

    " Accessors
syn match gmlAccessorOperator '\v\[\zs\s*\|'|  " ds_list[| ]
syn match gmlAccessorOperator '\v\[\zs\s*\?'|  " ds_map[? ]
syn match gmlAccessorOperator '\v\[\zs\s*\#'|  " ds_grid[# ]
syn match gmlAccessorOperator '\v\[\zs\s*\@'|  " array[@ ]

" Comments
syn region gmlLineComment start='\v((\/)@<!\/{2}(\/)@!|\/{4,})' end='\v$' keepend contains=gmlTodo
syn region gmlDocComment start='\v(\/)@<!\/{3}(\/)@!' end='\v$' keepend contains=gmlTodo
syn region gmlBlockComment start='\v\/\*' end='\v\*\/' contains=gmlTodo fold extend

" Folded regions

syn region gmlParenPair start='(' end=')' transparent extend
syn region gmlCodeBlock start='\v\{' end='\v\}' transparent extend fold
" syn region gmlFunctionDefine start='\v#define \I\i*\_.{-}\{' end='\v\}' transparent keepend fold

syn sync fromstart

" Link syntax groups to common highlighting groups

hi def link gmlConditional                Conditional
hi def link gmlStatement                  Statement
hi def link gmlRepeat                     Repeat
hi def link gmlWith                       Statement
hi def link gmlLabel                      Label
hi def link gmlDefine                     Macro

hi def link gmlBuiltinGlobal              gmlFunction
hi def link gmlDSFunction                 gmlFunction
hi def link gmlDSGridFunction             gmlFunction
hi def link gmlDSMapFunction              gmlFunction
hi def link gmlDSListFunction             gmlFunction
hi def link gmlDSQueueFunction            gmlFunction
hi def link gmlDSPriorityFunction         gmlFunction
hi def link gmlDSStackFunction            gmlFunction
hi def link gmlDSJSONFunction             gmlFunction
hi def link gmlCloudFunction              gmlFunction
hi def link gmlTimeFunction               gmlFunction
hi def link gmlDebugFunction              gmlFunction
hi def link gmlDrawingFunction            gmlFunction
hi def link gml3DDrawingFunction          gmlFunction
hi def link gmlFileFunction               gmlFunction
hi def link gmlBinaryFileFunction         gmlFunction
hi def link gmlFileSystemFunction         gmlFunction
hi def link gmlTextFileFunction           gmlFunction
hi def link gmlIniFileFunction            gmlFunction
hi def link gmlAssetFunction              gmlFunction
hi def link gmlBackgroundFunction         gmlFunction
hi def link gmlBackgroundTileFunction     gmlFunction
hi def link gmlFontFunction               gmlFunction
hi def link gmlAudioFunction              gmlFunction
hi def link gmlAudioEmitterFunction       gmlFunction
hi def link gmlAudioListenerFunction      gmlFunction
hi def link gmlAudioGroupFunction         gmlFunction
hi def link gmlAudioBufferFunction        gmlFunction
hi def link gmlAudioSyncFunction          gmlFunction
hi def link gmlSpriteFunction             gmlFunction
hi def link gmlSkeletalAnimationFunction  gmlFunction
hi def link gmlHTML5Function              gmlFunction
hi def link gmlIAPFunction                gmlFunction
hi def link gmlRandomFunction             gmlFunction
hi def link gmlTrigFunction               gmlFunction
hi def link gmlRoundFunction              gmlFunction
hi def link gmlMathFunction               gmlFunction
hi def link gmlVectorFunction             gmlFunction
hi def link gmlMiscFunction               gmlFunction
hi def link gmlMatrixFunction             gmlFunction
hi def link gmlVirtualKeyFunction         gmlFunction
hi def link gmlDeviceInputFunction        gmlFunction
hi def link gmlGamepadFunction            gmlFunction
hi def link gmlImmersionHapticFunction    gmlFunction
hi def link gmlJoystickFunction           gmlFunction
hi def link gmlKeyboardFunction           gmlFunction
hi def link gmlMouseFunction              gmlFunction
hi def link gmlCollisionFunction          gmlFunction
hi def link gmlMotionPlanningFunction     gmlFunction
hi def link gmlMovementFunction           gmlFunction
hi def link gmlNetworkFunction            gmlFunction
hi def link gmlPathFunction               gmlFunction
hi def link gmlBuiltinInstanceFunction    gmlFunction
hi def link gmlGlobalInstanceFunction     gmlFunction
hi def link gmlGlobalObjectFunction       gmlFunction
hi def link gmlEventFunction              gmlFunction
hi def link gmlOSFunction                 gmlFunction
hi def link gmlSimpleParticleFunction     gmlFunction
hi def link gmlParticleEffectFunction     gmlFunction
hi def link gmlParticleEmitterFunction    gmlFunction
hi def link gmlPhysicsFunction            gmlFunction
hi def link gmlPhysicsFixtureFunction     gmlFunction
hi def link gmlPhysicsForceFunction       gmlFunction
hi def link gmlPhysicsJointFunction       gmlFunction
hi def link gmlPhysicsParticleFunction    gmlFunction
hi def link gmlPhysicsWorldFunction       gmlFunction
hi def link gmlPushNotificationFunction   gmlFunction
hi def link gmlRoomFunction               gmlFunction
hi def link gmlShaderFunction             gmlFunction
hi def link gmlStringFunction             gmlFunction
hi def link gmlSurfaceFunction            gmlFunction
hi def link gmlApplicationSurfaceFunction gmlFunction
hi def link gmlTimelineFunction           gmlFunction
hi def link gmlDisplayFunction            gmlFunction
hi def link gmlWindowFunction             gmlFunction
hi def link gmlViewFunction               gmlFunction

hi def link gmlFunction                   Function


hi def link gmlKeyboardConstant           gmlConstant
hi def link gmlKeyboardModifierConstant   gmlConstant
hi def link gmlMouseConstant              gmlConstant
hi def link gmlParticleEffectConstant     gmlConstant
hi def link gmlPhysicsJointConstant       gmlConstant
hi def link gmlShaderConstant             gmlConstant

hi def link gmlConstant                   Constant


hi def link gmlBuiltinMovementVariable    gmlBuiltinVariable
hi def link gmlBuiltinInstanceVariable    gmlBuiltinVariable
hi def link gmlBuiltinInstanceProperty    gmlBuiltinVariable
hi def link gmlPathVariable               gmlBuiltinVariable
hi def link gmlEventVariable              gmlBuiltinVariable
hi def link gmlPhysicsVariable            gmlBuiltinVariable

hi def link gmlBuiltinVariable            Identifier


hi def link gmlKeyword                    Keyword

hi def link gmlTodo                       Todo

hi def link gmlType                       Type
hi def link gmlDSType                     Type
hi def link gmlReal                       Float
hi def link gmlBoolean                    Boolean

hi def link gmlString                     String
hi def link gmlCharacter                  Character

hi def link gmlUnaryOperator              Operator
hi def link gmlArithmeticOperator         Operator
hi def link gmlAssignmentOperator         Operator
hi def link gmlComparisonOperator         Operator
hi def link gmlBitwiseOperator            Operator
hi def link gmlBooleanOperator            Operator
hi def link gmlAccessorOperator           Operator

hi def link gmlDocComment                 Comment
hi def link gmlLineComment                Comment
hi def link gmlBlockComment               Comment


let b:current_syntax = "gml"
