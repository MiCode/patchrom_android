.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$System$InclusiveFloatRangeValidator;,
        Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;,
        Landroid/provider/Settings$System$DiscreteValueValidator;,
        Landroid/provider/Settings$System$Validator;
    }
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"

.field public static final ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"

.field public static final ADVANCED_SETTINGS_DEFAULT:I = 0x0

.field private static final ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"

.field private static final ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"

.field public static final BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"

.field private static final BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIM_SCREEN:Ljava/lang/String; = "dim_screen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"

.field public static final DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"

.field public static final DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final EGG_MODE:Ljava/lang/String; = "egg_mode"

.field public static final EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"

.field public static final END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field private static final END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field private static final FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HEARING_AID:Ljava/lang/String; = "hearing_aid"

.field public static final HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY:Ljava/lang/String; = "hide_rotation_lock_toggle_for_accessibility"

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen.disabled"

.field public static final LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_ENABLED:Ljava/lang/String; = "lock_to_app_enabled"

.field public static final LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"

.field private static final MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final MICROPHONE_MUTE:Ljava/lang/String; = "microphone_mute"

.field private static final MICROPHONE_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"

.field private static final MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"

.field private static final MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field public static final NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field private static final NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POINTER_LOCATION:Ljava/lang/String; = "pointer_location"

.field public static final POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final POINTER_SPEED:Ljava/lang/String; = "pointer_speed"

.field public static final POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVATE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field public static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field public static final SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field private static final SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"

.field private static final SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"

.field public static final SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"

.field private static final SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_TOUCHES:Ljava/lang/String; = "show_touches"

.field public static final SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"

.field public static final SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"

.field public static final SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"

.field public static final SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"

.field public static final SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"

.field public static final SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_system_version"

.field public static final TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"

.field private static final TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"

.field private static final TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"

.field private static final TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TIME_12_24:Ljava/lang/String; = "time_12_24"

.field public static final TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE:Ljava/lang/String; = "tty_mode"

.field public static final TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_ROTATION:Ljava/lang/String; = "user_rotation"

.field public static final USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$System$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"

.field private static final VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field private static final VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field private static final VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field public static final VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"

.field public static final VOLUME_MASTER:Ljava/lang/String; = "volume_master"

.field public static final VOLUME_MASTER_MUTE:Ljava/lang/String; = "volume_master_mute"

.field private static final VOLUME_MASTER_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String;

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WHEN_TO_MAKE_WIFI_CALLS:Ljava/lang/String; = "when_to_make_wifi_calls"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ORIENTATION_LISTENER_LOG:Ljava/lang/String; = "window_orientation_listener_log"

.field public static final WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final sBooleanValidator:Landroid/provider/Settings$System$Validator;

.field private static final sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

.field private static final sUriValidator:Landroid/provider/Settings$System$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-string v1, "sys.settings_system_version"

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "GET_system"

    const-string v4, "PUT_system"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_biometric_weak_flags"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "logging_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "parental_control_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "parental_control_last_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "parental_control_redirect_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "settings_classname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ap_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_background_check_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_background_check_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_background_check_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_initial_ignored_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_max_ap_checks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ping_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "wifi_watchdog_ping_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "auto_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "auto_time_zone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "car_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "car_undock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "desk_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "desk_undock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dock_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "lock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "unlock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "low_battery_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "power_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "stay_on_while_plugged_in"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "wifi_sleep_policy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "mode_ringer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "window_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "transition_animation_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "animator_duration_scale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "fancy_ime_animations"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "compatibility_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "emergency_tone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "call_auto_retry"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "debug_app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "wait_for_debugger"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "show_processes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "always_finish_activities"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "tzinfo_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "tzinfo_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "selinux_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "selinux_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "sms_short_codes_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "sms_short_codes_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cert_pin_content_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cert_pin_metadata_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$1;

    invoke-direct {v0}, Landroid/provider/Settings$System$1;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$2;

    invoke-direct {v0}, Landroid/provider/Settings$System$2;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$3;

    invoke-direct {v0}, Landroid/provider/Settings$System$3;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v5, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v5, v6}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$4;

    invoke-direct {v0}, Landroid/provider/Settings$System$4;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$5;

    invoke-direct {v0}, Landroid/provider/Settings$System$5;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    const/16 v1, 0xff

    invoke-direct {v0, v5, v1}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;-><init>(FF)V

    sput-object v0, Landroid/provider/Settings$System;->SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_MASTER_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->MICROPHONE_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "volume_voice"

    aput-object v1, v0, v5

    const-string v1, "volume_system"

    aput-object v1, v0, v7

    const-string v1, "volume_ring"

    aput-object v1, v0, v6

    const-string v1, "volume_music"

    aput-object v1, v0, v8

    const-string v1, "volume_alarm"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "volume_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    sget-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    const-string v0, "ringtone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

    const-string v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    const-string v0, "alarm_alert"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/provider/Settings$System$6;

    invoke-direct {v0}, Landroid/provider/Settings$System$6;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$7;

    invoke-direct {v0}, Landroid/provider/Settings$System$7;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "12"

    aput-object v2, v1, v5

    const-string v2, "24"

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$System;->TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$8;

    invoke-direct {v0}, Landroid/provider/Settings$System$8;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v5, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$System;->USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v5, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$System;->TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SIP_ALWAYS"

    aput-object v2, v1, v5

    const-string v2, "SIP_ADDRESS_ONLY"

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$System;->SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;

    const/high16 v1, -0x3f200000    # -7.0f

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-direct {v0, v1, v2}, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;-><init>(FF)V

    sput-object v0, Landroid/provider/Settings$System;->POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    sput-object v0, Landroid/provider/Settings$System;->LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    new-instance v0, Landroid/provider/Settings$System$9;

    invoke-direct {v0}, Landroid/provider/Settings$System$9;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "stay_on_while_plugged_in"

    aput-object v1, v0, v5

    const-string v1, "wifi_use_static_ip"

    aput-object v1, v0, v7

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v6

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v8

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "wifi_static_dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_discoverability"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_discoverability_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dim_screen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "screen_off_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "screen_brightness"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "screen_brightness_mode"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "screen_auto_brightness_adj"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "vibrate_input_devices"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mode_ringer_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "auto_replace"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "auto_caps"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "auto_punctuate"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "auto_time"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "auto_time_zone"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "time_12_24"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "date_format"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "dtmf_tone_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "hearing_aid"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "tty_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "sound_effects_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "haptic_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "power_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "dock_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "lockscreen_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "show_web_suggestions"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "notification_light_pulse"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "sip_call_options"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "sip_receive_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "pointer_speed"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "lock_to_app_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "notification_sound"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "end_button_behavior"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "wifi_use_static_ip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "wifi_static_ip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "wifi_static_gateway"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "wifi_static_netmask"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "wifi_static_dns1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "wifi_static_dns2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "bluetooth_discoverability"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "bluetooth_discoverability_timeout"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "next_alarm_formatted"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "font_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "dim_screen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "screen_off_timeout"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "screen_brightness"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "screen_brightness_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "mode_ringer_streams_affected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "mute_streams_affected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "vibrate_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "volume_ring"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "volume_system"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "volume_voice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "volume_music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "volume_alarm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "volume_notification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "volume_bluetooth_sco"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "ringtone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "notification_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "alarm_alert"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "auto_replace"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "auto_caps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "auto_punctuate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "show_password"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "SHOW_GTALK_SERVICE_STATUS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "wallpaper_activity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "time_12_24"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "date_format"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "setup_wizard_has_run"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "accelerometer_rotation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "user_rotation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "dtmf_tone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "sound_effects_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "haptic_feedback_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "show_web_suggestions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "wifi_use_static_ip"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "end_button_behavior"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "advanced_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "screen_auto_brightness_adj"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "vibrate_input_devices"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "volume_master"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "volume_master_mute"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "microphone_mute"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "notifications_use_ring_volume"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "vibrate_in_silent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "media_button_receiver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "hide_rotation_lock_toggle_for_accessibility"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "vibrate_when_ringing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "dtmf_tone_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "hearing_aid"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "tty_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "notification_light_pulse"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "pointer_location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "show_touches"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "window_orientation_listener_log"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "power_sounds_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "dock_sounds_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "lockscreen_sounds_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "lockscreen.disabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "low_battery_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "desk_dock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "desk_undock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "car_dock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "car_undock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "lock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "unlock_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "sip_receive_calls"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "sip_call_options"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "SIP_ALWAYS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "SIP_ADDRESS_ONLY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "SIP_ASK_ME_EACH_TIME"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "pointer_speed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "lock_to_app_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "egg_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "end_button_behavior"

    sget-object v2, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "wifi_use_static_ip"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "bluetooth_discoverability"

    sget-object v2, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "bluetooth_discoverability_timeout"

    sget-object v2, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "next_alarm_formatted"

    sget-object v2, Landroid/provider/Settings$System;->NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "font_scale"

    sget-object v2, Landroid/provider/Settings$System;->FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "dim_screen"

    sget-object v2, Landroid/provider/Settings$System;->DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "screen_off_timeout"

    sget-object v2, Landroid/provider/Settings$System;->SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "screen_brightness"

    sget-object v2, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "screen_brightness_mode"

    sget-object v2, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "mode_ringer_streams_affected"

    sget-object v2, Landroid/provider/Settings$System;->MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "mute_streams_affected"

    sget-object v2, Landroid/provider/Settings$System;->MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "vibrate_on"

    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "ringtone"

    sget-object v2, Landroid/provider/Settings$System;->RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "notification_sound"

    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "alarm_alert"

    sget-object v2, Landroid/provider/Settings$System;->ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "auto_replace"

    sget-object v2, Landroid/provider/Settings$System;->TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "auto_caps"

    sget-object v2, Landroid/provider/Settings$System;->TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "auto_punctuate"

    sget-object v2, Landroid/provider/Settings$System;->TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "show_password"

    sget-object v2, Landroid/provider/Settings$System;->TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "SHOW_GTALK_SERVICE_STATUS"

    sget-object v2, Landroid/provider/Settings$System;->SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "wallpaper_activity"

    sget-object v2, Landroid/provider/Settings$System;->WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "time_12_24"

    sget-object v2, Landroid/provider/Settings$System;->TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "date_format"

    sget-object v2, Landroid/provider/Settings$System;->DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "setup_wizard_has_run"

    sget-object v2, Landroid/provider/Settings$System;->SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "accelerometer_rotation"

    sget-object v2, Landroid/provider/Settings$System;->ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "user_rotation"

    sget-object v2, Landroid/provider/Settings$System;->USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "dtmf_tone"

    sget-object v2, Landroid/provider/Settings$System;->DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "sound_effects_enabled"

    sget-object v2, Landroid/provider/Settings$System;->SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "haptic_feedback_enabled"

    sget-object v2, Landroid/provider/Settings$System;->HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "show_web_suggestions"

    sget-object v2, Landroid/provider/Settings$System;->SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "wifi_use_static_ip"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "end_button_behavior"

    sget-object v2, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "advanced_settings"

    sget-object v2, Landroid/provider/Settings$System;->ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "screen_auto_brightness_adj"

    sget-object v2, Landroid/provider/Settings$System;->SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "vibrate_input_devices"

    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "volume_master_mute"

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_MASTER_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "microphone_mute"

    sget-object v2, Landroid/provider/Settings$System;->MICROPHONE_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "notifications_use_ring_volume"

    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "vibrate_in_silent"

    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "media_button_receiver"

    sget-object v2, Landroid/provider/Settings$System;->MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "hide_rotation_lock_toggle_for_accessibility"

    sget-object v2, Landroid/provider/Settings$System;->HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "vibrate_when_ringing"

    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "dtmf_tone_type"

    sget-object v2, Landroid/provider/Settings$System;->DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "hearing_aid"

    sget-object v2, Landroid/provider/Settings$System;->HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "tty_mode"

    sget-object v2, Landroid/provider/Settings$System;->TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "notification_light_pulse"

    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "pointer_location"

    sget-object v2, Landroid/provider/Settings$System;->POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "show_touches"

    sget-object v2, Landroid/provider/Settings$System;->SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "window_orientation_listener_log"

    sget-object v2, Landroid/provider/Settings$System;->WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "lockscreen_sounds_enabled"

    sget-object v2, Landroid/provider/Settings$System;->LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "lockscreen.disabled"

    sget-object v2, Landroid/provider/Settings$System;->LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "sip_receive_calls"

    sget-object v2, Landroid/provider/Settings$System;->SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "sip_call_options"

    sget-object v2, Landroid/provider/Settings$System;->SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "SIP_ALWAYS"

    sget-object v2, Landroid/provider/Settings$System;->SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "SIP_ADDRESS_ONLY"

    sget-object v2, Landroid/provider/Settings$System;->SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "SIP_ASK_ME_EACH_TIME"

    sget-object v2, Landroid/provider/Settings$System;->SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "pointer_speed"

    sget-object v2, Landroid/provider/Settings$System;->POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "lock_to_app_enabled"

    sget-object v2, Landroid/provider/Settings$System;->LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "egg_mode"

    sget-object v2, Landroid/provider/Settings$System;->EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "wifi_static_ip"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "wifi_static_gateway"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "wifi_static_netmask"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "wifi_static_dns1"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    const-string v1, "wifi_static_dns2"

    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "date_format"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "haptic_feedback_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "sound_effects_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "show_password"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "time_12_24"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static canWrite(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static clearConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "inoutConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V

    return-void
.end method

.method public static getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    .prologue
    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .prologue
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":F
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .prologue
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .local v2, "value":J
    :goto_0
    return-wide v2

    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getMovedToSecureSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getNonLegacyMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method public static getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "SHOW_GTALK_SERVICE_STATUS"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Global, returning read-only value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Global, returning read-only global URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasInterestingConfigurationChanges(I)Z
    .locals 1
    .param p0, "changes"    # I

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    .prologue
    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .prologue
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Global, value is unchanged."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V

    return-void
.end method

.method public static setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v1, "SHOW_GTALK_SERVICE_STATUS"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
