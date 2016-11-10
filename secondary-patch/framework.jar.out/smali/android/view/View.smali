.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$SendViewStateChangedAccessibilityEvent;,
        Landroid/view/View$MatchLabelForPredicate;,
        Landroid/view/View$MatchIdPredicate;,
        Landroid/view/View$AccessibilityDelegate;,
        Landroid/view/View$SendViewScrolledAccessibilityEvent;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnApplyWindowInsetsListener;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnContextClickListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnHoverListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;,
        Landroid/view/View$OnScrollChangeListener;,
        Landroid/view/View$DeclaredOnClickListener;,
        Landroid/view/View$ListenerInfo;,
        Landroid/view/View$ForegroundInfo;,
        Landroid/view/View$TintInfo;,
        Landroid/view/View$TransformationInfo;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_CURSOR_POSITION_UNDEFINED:I = -0x1

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field static final ACCESSIBILITY_LIVE_REGION_DEFAULT:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field static final ALL_RTL_PROPERTIES_RESOLVED:I = 0x60010220

.field public static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final CLICKABLE:I = 0x4000

.field static final CONTEXT_CLICKABLE:I = 0x800000

.field private static final DBG:Z = false

.field public static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field static final DISABLED:I = 0x20

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field static final DRAG_MASK:I = 0x3

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final ENABLED_STATE_SET:[I

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field public static final FIND_VIEWS_WITH_ACCESSIBILITY_NODE_PROVIDERS:I = 0x4

.field public static final FIND_VIEWS_WITH_CONTENT_DESCRIPTION:I = 0x2

.field public static final FIND_VIEWS_WITH_TEXT:I = 0x1

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field protected static final FOCUSED_SELECTED_STATE_SET:[I

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_STATE_SET:[I

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field static final IMPORTANT_FOR_ACCESSIBILITY_DEFAULT:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final INVISIBLE:I = 0x4

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LAYOUT_DIRECTION_DEFAULT:I = 0x2

.field private static final LAYOUT_DIRECTION_FLAGS:[I

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field static final LAYOUT_DIRECTION_RESOLVED_DEFAULT:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final LAYOUT_DIRECTION_UNDEFINED:I = -0x1

.field static final LONG_CLICKABLE:I = 0x200000

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final NAVIGATION_BAR_TRANSIENT:I = 0x8000000

.field public static final NAVIGATION_BAR_TRANSLUCENT:I = -0x80000000

.field public static final NAVIGATION_BAR_UNHIDE:I = 0x20000000

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final OPTIONAL_FITS_SYSTEM_WINDOWS:I = 0x800

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PARENT_SAVE_DISABLED:I = 0x20000000

.field static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field static final PFLAG2_ACCESSIBILITY_FOCUSED:I = 0x4000000

.field static final PFLAG2_ACCESSIBILITY_LIVE_REGION_MASK:I = 0x1800000

.field static final PFLAG2_ACCESSIBILITY_LIVE_REGION_SHIFT:I = 0x17

.field static final PFLAG2_DRAG_CAN_ACCEPT:I = 0x1

.field static final PFLAG2_DRAG_HOVERED:I = 0x2

.field static final PFLAG2_DRAWABLE_RESOLVED:I = 0x40000000

.field static final PFLAG2_HAS_TRANSIENT_STATE:I = -0x80000000

.field static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_MASK:I = 0x700000

.field static final PFLAG2_IMPORTANT_FOR_ACCESSIBILITY_SHIFT:I = 0x14

.field static final PFLAG2_LAYOUT_DIRECTION_MASK:I = 0xc

.field static final PFLAG2_LAYOUT_DIRECTION_MASK_SHIFT:I = 0x2

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED:I = 0x20

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_MASK:I = 0x30

.field static final PFLAG2_LAYOUT_DIRECTION_RESOLVED_RTL:I = 0x10

.field static final PFLAG2_PADDING_RESOLVED:I = 0x20000000

.field static final PFLAG2_SUBTREE_ACCESSIBILITY_STATE_CHANGED:I = 0x8000000

.field private static final PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

.field static final PFLAG2_TEXT_ALIGNMENT_MASK:I = 0xe000

.field static final PFLAG2_TEXT_ALIGNMENT_MASK_SHIFT:I = 0xd

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED:I = 0x10000

.field private static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x20000

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK:I = 0xe0000

.field static final PFLAG2_TEXT_ALIGNMENT_RESOLVED_MASK_SHIFT:I = 0x11

.field private static final PFLAG2_TEXT_DIRECTION_FLAGS:[I

.field static final PFLAG2_TEXT_DIRECTION_MASK:I = 0x1c0

.field static final PFLAG2_TEXT_DIRECTION_MASK_SHIFT:I = 0x6

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED:I = 0x200

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x400

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK:I = 0x1c00

.field static final PFLAG2_TEXT_DIRECTION_RESOLVED_MASK_SHIFT:I = 0xa

.field static final PFLAG2_VIEW_QUICK_REJECTED:I = 0x10000000

.field static final PFLAG3_APPLYING_INSETS:I = 0x20

.field static final PFLAG3_ASSIST_BLOCKED:I = 0x100

.field static final PFLAG3_CALLED_SUPER:I = 0x10

.field static final PFLAG3_FITTING_SYSTEM_WINDOWS:I = 0x40

.field static final PFLAG3_IS_LAID_OUT:I = 0x4

.field static final PFLAG3_MEASURE_NEEDED_BEFORE_LAYOUT:I = 0x8

.field static final PFLAG3_NESTED_SCROLLING_ENABLED:I = 0x80

.field static final PFLAG3_SCROLL_INDICATOR_BOTTOM:I = 0x200

.field static final PFLAG3_SCROLL_INDICATOR_END:I = 0x2000

.field static final PFLAG3_SCROLL_INDICATOR_LEFT:I = 0x400

.field static final PFLAG3_SCROLL_INDICATOR_RIGHT:I = 0x800

.field static final PFLAG3_SCROLL_INDICATOR_START:I = 0x1000

.field static final PFLAG3_SCROLL_INDICATOR_TOP:I = 0x100

.field static final PFLAG3_VIEW_IS_ANIMATING_ALPHA:I = 0x2

.field static final PFLAG3_VIEW_IS_ANIMATING_TRANSFORM:I = 0x1

.field static final PFLAG_ACTIVATED:I = 0x40000000

.field static final PFLAG_ALPHA_SET:I = 0x40000

.field static final PFLAG_ANIMATION_STARTED:I = 0x10000

.field private static final PFLAG_AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final PFLAG_CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final PFLAG_DIRTY:I = 0x200000

.field static final PFLAG_DIRTY_MASK:I = 0x600000

.field static final PFLAG_DIRTY_OPAQUE:I = 0x400000

.field private static final PFLAG_DOES_NOTHING_REUSE_PLEASE:I = 0x20000000

.field static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field static final PFLAG_DRAWING_CACHE_VALID:I = 0x8000

.field static final PFLAG_DRAWN:I = 0x20

.field static final PFLAG_DRAW_ANIMATION:I = 0x40

.field static final PFLAG_FOCUSED:I = 0x2

.field static final PFLAG_FORCE_LAYOUT:I = 0x1000

.field static final PFLAG_HAS_BOUNDS:I = 0x10

.field private static final PFLAG_HOVERED:I = 0x10000000

.field static final PFLAG_INVALIDATED:I = -0x80000000

.field static final PFLAG_IS_ROOT_NAMESPACE:I = 0x8

.field static final PFLAG_LAYOUT_REQUIRED:I = 0x2000

.field static final PFLAG_MEASURED_DIMENSION_SET:I = 0x800

.field static final PFLAG_OPAQUE_BACKGROUND:I = 0x800000

.field static final PFLAG_OPAQUE_MASK:I = 0x1800000

.field static final PFLAG_OPAQUE_SCROLLBARS:I = 0x1000000

.field private static final PFLAG_PREPRESSED:I = 0x2000000

.field private static final PFLAG_PRESSED:I = 0x4000

.field static final PFLAG_REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field private static final PFLAG_SAVE_STATE_CALLED:I = 0x20000

.field static final PFLAG_SCROLL_CONTAINER:I = 0x80000

.field static final PFLAG_SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final PFLAG_SELECTED:I = 0x4

.field static final PFLAG_SKIP_DRAW:I = 0x80

.field static final PFLAG_WANTS_FOCUS:I = 0x1

.field private static final POPULATING_ACCESSIBILITY_EVENT_TYPES:I = 0x2a1bf

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_STATE_SET:[I

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_STATE_SET:[I

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field protected static final PRESSED_STATE_SET:[I

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field private static final PROVIDER_BACKGROUND:I = 0x0

.field private static final PROVIDER_BOUNDS:I = 0x2

.field private static final PROVIDER_NONE:I = 0x1

.field private static final PROVIDER_PADDED_BOUNDS:I = 0x3

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0x3fff

.field public static final RECENT_APPS_VISIBLE:I = 0x4000

.field public static final ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field public static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_STATE_OFF:I = 0x0

.field public static final SCREEN_STATE_ON:I = 0x1

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field static final SCROLL_INDICATORS_NONE:I = 0x0

.field static final SCROLL_INDICATORS_PFLAG3_MASK:I = 0x3f00

.field static final SCROLL_INDICATORS_TO_PFLAGS3_LSHIFT:I = 0x8

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field protected static final SELECTED_STATE_SET:[I

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_SEARCH:I = 0x2000000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_TRANSIENT:I = 0x4000000

.field public static final STATUS_BAR_TRANSLUCENT:I = 0x40000000

.field public static final STATUS_BAR_UNHIDE:I = 0x10000000

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_CLEARABLE_FLAGS:I = 0x7

.field public static final SYSTEM_UI_FLAG_FULLSCREEN:I = 0x4

.field public static final SYSTEM_UI_FLAG_HIDE_NAVIGATION:I = 0x2

.field public static final SYSTEM_UI_FLAG_IMMERSIVE:I = 0x800

.field public static final SYSTEM_UI_FLAG_IMMERSIVE_STICKY:I = 0x1000

.field public static final SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN:I = 0x400

.field public static final SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION:I = 0x200

.field public static final SYSTEM_UI_FLAG_LAYOUT_STABLE:I = 0x100

.field public static final SYSTEM_UI_FLAG_LIGHT_STATUS_BAR:I = 0x2000

.field public static final SYSTEM_UI_FLAG_LOW_PROFILE:I = 0x1

.field public static final SYSTEM_UI_FLAG_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_LAYOUT_FLAGS:I = 0x600

.field public static final SYSTEM_UI_TRANSPARENT:I = 0x8000

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x4

.field private static final TEXT_ALIGNMENT_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_GRAVITY:I = 0x1

.field public static final TEXT_ALIGNMENT_INHERIT:I = 0x0

.field static final TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_ALIGNMENT_TEXT_END:I = 0x3

.field public static final TEXT_ALIGNMENT_TEXT_START:I = 0x2

.field public static final TEXT_ALIGNMENT_VIEW_END:I = 0x6

.field public static final TEXT_ALIGNMENT_VIEW_START:I = 0x5

.field public static final TEXT_DIRECTION_ANY_RTL:I = 0x2

.field private static final TEXT_DIRECTION_DEFAULT:I = 0x0

.field public static final TEXT_DIRECTION_FIRST_STRONG:I = 0x1

.field public static final TEXT_DIRECTION_FIRST_STRONG_LTR:I = 0x6

.field public static final TEXT_DIRECTION_FIRST_STRONG_RTL:I = 0x7

.field public static final TEXT_DIRECTION_INHERIT:I = 0x0

.field public static final TEXT_DIRECTION_LOCALE:I = 0x5

.field public static final TEXT_DIRECTION_LTR:I = 0x3

.field static final TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x1

.field public static final TEXT_DIRECTION_RTL:I = 0x4

.field public static final TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Z:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNDEFINED_PADDING:I = -0x80000000

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field private static final VISIBILITY_FLAGS:[I

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field public static final X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Z:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static mAttributeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mDebugViewAttributes:Z

.field private static sCompatibilityDone:Z

.field private static sIgnoreMeasureCache:Z

.field private static sNextAccessibilityViewId:I

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseBrokenMakeMeasureSpec:Z

.field static sUseZeroUnspecifiedMeasureSpec:Z


# instance fields
.field private mAccessibilityCursorPosition:I

.field mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAccessibilityTraversalAfterId:I

.field private mAccessibilityTraversalBeforeId:I

.field mAccessibilityViewId:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mAttachInfo:Landroid/view/View$AttachInfo;

.field public mAttributes:[Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "attributes"
        hasAdjacentMapping = true
    .end annotation
.end field

.field private mBackground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "bg_"
    .end annotation
.end field

.field private mBackgroundRenderNode:Landroid/view/RenderNode;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field private mBackgroundTint:Landroid/view/View$TintInfo;

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field mClipBounds:Landroid/graphics/Rect;

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
    .end annotation
.end field

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mForegroundInfo:Landroid/view/View$ForegroundInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "fg_"
    .end annotation
.end field

.field mGhostView:Landroid/view/GhostView;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field private mIgnoreNextUpEvent:Z

.field private mInContextButtonPress:Z

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelForId:I

.field private mLastIsOpaque:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field private mLayoutInsets:Landroid/graphics/Insets;

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mLeftPaddingDefined:Z

.field mListenerInfo:Landroid/view/View$ListenerInfo;

.field private mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

.field private mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

.field private mMeasureCache:Landroid/util/LongSparseLongArray;

.field mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mNextFocusDownId:I

.field mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mOverScrollMode:I

.field mOverlay:Landroid/view/ViewOverlay;

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field mPrivateFlags2:I

.field mPrivateFlags3:I

.field mRecreateDisplayList:Z

.field final mRenderNode:Landroid/view/RenderNode;

.field private final mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mRightPaddingDefined:Z

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field private mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

.field mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

.field private mSendingHoverAccessibilityEvents:Z

.field mStartActivityRequestWho:Ljava/lang/String;

.field private mStateListAnimator:Landroid/animation/StateListAnimator;

.field mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "SYSTEM_UI_FLAG_LOW_PROFILE"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x3fff
                name = "SYSTEM_UI_FLAG_VISIBLE"
                outputIf = true
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field private mTempNestedScrollConsumed:[I

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field mTransformationInfo:Landroid/view/View$TransformationInfo;

.field mTransientStateCount:I

.field private mTransitionName:Ljava/lang/String;

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field protected mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingEnd:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingLeftInitial:I

.field protected mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRightInitial:I

.field mUserPaddingStart:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        formatToHexString = true
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x3

    const/4 v1, 0x0

    sput-boolean v1, Landroid/view/View;->mDebugViewAttributes:Z

    sput-boolean v1, Landroid/view/View;->sCompatibilityDone:Z

    sput-boolean v1, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    sput-boolean v1, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    sput-boolean v1, Landroid/view/View;->sIgnoreMeasureCache:Z

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/View;->VISIBILITY_FLAGS:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v2}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v4}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    const/4 v0, 0x6

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    invoke-static {v5}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x8

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/16 v0, 0x9

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    const/16 v0, 0xb

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0xc

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    const/16 v0, 0xd

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0xe

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    const/16 v0, 0xf

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x12

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x14

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    const/16 v0, 0x15

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x16

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    const/16 v0, 0x17

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x18

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    const/16 v0, 0x19

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x1c

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    const/16 v0, 0x1d

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v0, 0x1e

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    const/16 v0, 0x1f

    invoke-static {v0}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/view/View;->PFLAG2_TEXT_DIRECTION_FLAGS:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/view/View;->PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/view/View$2;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/view/View$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-instance v0, Landroid/view/View$3;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Landroid/view/View$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-instance v0, Landroid/view/View$4;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Landroid/view/View$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-instance v0, Landroid/view/View$5;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Landroid/view/View$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-instance v0, Landroid/view/View$6;

    const-string v1, "x"

    invoke-direct {v0, v1}, Landroid/view/View$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->X:Landroid/util/Property;

    new-instance v0, Landroid/view/View$7;

    const-string v1, "y"

    invoke-direct {v0, v1}, Landroid/view/View$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    new-instance v0, Landroid/view/View$8;

    const-string v1, "z"

    invoke-direct {v0, v1}, Landroid/view/View$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->Z:Landroid/util/Property;

    new-instance v0, Landroid/view/View$9;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Landroid/view/View$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-instance v0, Landroid/view/View$10;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Landroid/view/View$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-instance v0, Landroid/view/View$11;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Landroid/view/View$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    new-instance v0, Landroid/view/View$12;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/view/View$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-instance v0, Landroid/view/View$13;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/view/View$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x80000
        0x100000
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0x100
        0x140
        0x180
        0x1c0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x2000
        0x4000
        0x6000
        0x8000
        0xa000
        0xc000
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    iput-boolean v3, p0, Landroid/view/View;->mRecreateDisplayList:Z

    iput v2, p0, Landroid/view/View;->mID:I

    iput v2, p0, Landroid/view/View;->mAccessibilityViewId:I

    iput v2, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    iput-object v1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    iput v3, p0, Landroid/view/View;->mTransientStateCount:I

    iput-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iput v3, p0, Landroid/view/View;->mPaddingLeft:I

    iput v3, p0, Landroid/view/View;->mPaddingRight:I

    iput v2, p0, Landroid/view/View;->mLabelForId:I

    iput v2, p0, Landroid/view/View;->mAccessibilityTraversalBeforeId:I

    iput v2, p0, Landroid/view/View;->mAccessibilityTraversalAfterId:I

    iput-boolean v3, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    iput-boolean v3, p0, Landroid/view/View;->mRightPaddingDefined:Z

    iput v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    iput v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    iput-object v0, p0, Landroid/view/View;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    iput v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    iput v2, p0, Landroid/view/View;->mNextFocusRightId:I

    iput v2, p0, Landroid/view/View;->mNextFocusUpId:I

    iput v2, p0, Landroid/view/View;->mNextFocusDownId:I

    iput v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    iput v3, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    iput v3, p0, Landroid/view/View;->mLayerType:I

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x80000000

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    iput-boolean v4, p0, Landroid/view/View;->mRecreateDisplayList:Z

    iput v5, p0, Landroid/view/View;->mID:I

    iput v5, p0, Landroid/view/View;->mAccessibilityViewId:I

    iput v5, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    iput-object v2, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    iput v4, p0, Landroid/view/View;->mTransientStateCount:I

    iput-object v2, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    iput v4, p0, Landroid/view/View;->mPaddingLeft:I

    iput v4, p0, Landroid/view/View;->mPaddingRight:I

    iput v5, p0, Landroid/view/View;->mLabelForId:I

    iput v5, p0, Landroid/view/View;->mAccessibilityTraversalBeforeId:I

    iput v5, p0, Landroid/view/View;->mAccessibilityTraversalAfterId:I

    iput-boolean v4, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    iput-boolean v4, p0, Landroid/view/View;->mRightPaddingDefined:Z

    iput v6, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    iput v6, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    iput-object v2, p0, Landroid/view/View;->mDrawableState:[I

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    iput-object v1, p0, Landroid/view/View;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    iput v5, p0, Landroid/view/View;->mNextFocusLeftId:I

    iput v5, p0, Landroid/view/View;->mNextFocusRightId:I

    iput v5, p0, Landroid/view/View;->mNextFocusUpId:I

    iput v5, p0, Landroid/view/View;->mNextFocusDownId:I

    iput v5, p0, Landroid/view/View;->mNextFocusForwardId:I

    iput-object v2, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    iput-object v2, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    iput v4, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    iput-object v2, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    iput v4, p0, Landroid/view/View;->mLayerType:I

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x18000000

    iput v1, p0, Landroid/view/View;->mViewFlags:I

    const v1, 0x22408

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/view/View;->mTouchSlop:I

    invoke-virtual {p0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    iput v6, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v6, p0, Landroid/view/View;->mUserPaddingEnd:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    sget-boolean v1, Landroid/view/View;->sCompatibilityDone:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-gt v0, v1, :cond_4

    move v1, v3

    :goto_1
    sput-boolean v1, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    const/16 v1, 0x13

    if-ge v0, v1, :cond_5

    move v1, v3

    :goto_2
    sput-boolean v1, Landroid/view/View;->sIgnoreMeasureCache:Z

    const/16 v1, 0x17

    if-ge v0, v1, :cond_6

    move v1, v3

    :goto_3
    sput-boolean v1, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    move v4, v3

    :cond_1
    sput-boolean v4, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    sput-boolean v3, Landroid/view/View;->sCompatibilityDone:Z

    .end local v0    # "targetSdkVersion":I
    :cond_2
    return-void

    :cond_3
    move-object v1, v2

    goto :goto_0

    .restart local v0    # "targetSdkVersion":I
    :cond_4
    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 55
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v52, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .local v6, "a":Landroid/content/res/TypedArray;
    sget-boolean v52, Landroid/view/View;->mDebugViewAttributes:Z

    if-eqz v52, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Landroid/view/View;->saveAttributeData(Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    :cond_0
    const/4 v8, 0x0

    .local v8, "background":Landroid/graphics/drawable/Drawable;
    const/16 v21, -0x1

    .local v21, "leftPadding":I
    const/16 v41, -0x1

    .local v41, "topPadding":I
    const/16 v25, -0x1

    .local v25, "rightPadding":I
    const/4 v9, -0x1

    .local v9, "bottomPadding":I
    const/high16 v34, -0x80000000

    .local v34, "startPadding":I
    const/high16 v12, -0x80000000

    .local v12, "endPadding":I
    const/16 v24, -0x1

    .local v24, "padding":I
    const/16 v48, 0x0

    .local v48, "viewFlagValues":I
    const/16 v47, 0x0

    .local v47, "viewFlagMasks":I
    const/16 v33, 0x0

    .local v33, "setScrollContainer":Z
    const/16 v50, 0x0

    .local v50, "x":I
    const/16 v51, 0x0

    .local v51, "y":I
    const/16 v43, 0x0

    .local v43, "tx":F
    const/16 v44, 0x0

    .local v44, "ty":F
    const/16 v45, 0x0

    .local v45, "tz":F
    const/4 v11, 0x0

    .local v11, "elevation":F
    const/16 v27, 0x0

    .local v27, "rotation":F
    const/16 v28, 0x0

    .local v28, "rotationX":F
    const/16 v29, 0x0

    .local v29, "rotationY":F
    const/high16 v36, 0x3f800000    # 1.0f

    .local v36, "sx":F
    const/high16 v37, 0x3f800000    # 1.0f

    .local v37, "sy":F
    const/16 v42, 0x0

    .local v42, "transformSet":Z
    const/16 v31, 0x0

    .local v31, "scrollbarStyle":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move/from16 v23, v0

    .local v23, "overScrollMode":I
    const/16 v19, 0x0

    .local v19, "initializeScrollbars":Z
    const/16 v18, 0x0

    .local v18, "initializeScrollIndicators":Z
    const/16 v35, 0x0

    .local v35, "startPaddingDefined":Z
    const/4 v13, 0x0

    .local v13, "endPaddingDefined":Z
    const/16 v22, 0x0

    .local v22, "leftPaddingDefined":Z
    const/16 v26, 0x0

    .local v26, "rightPaddingDefined":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v38, v0

    .local v38, "targetSdkVersion":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .local v5, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v5, :cond_e

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .local v7, "attr":I
    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_1

    :pswitch_2
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    const/16 v22, 0x1

    const/16 v26, 0x1

    goto :goto_1

    :pswitch_3
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    const/16 v22, 0x1

    goto :goto_1

    :pswitch_4
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v41

    goto :goto_1

    :pswitch_5
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    const/16 v26, 0x1

    goto :goto_1

    :pswitch_6
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    goto :goto_1

    :pswitch_7
    const/high16 v52, -0x80000000

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v34

    const/high16 v52, -0x80000000

    move/from16 v0, v34

    move/from16 v1, v52

    if-eq v0, v1, :cond_2

    const/16 v35, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    const/16 v35, 0x0

    goto :goto_2

    :pswitch_8
    const/high16 v52, -0x80000000

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    const/high16 v52, -0x80000000

    move/from16 v0, v52

    if-eq v12, v0, :cond_3

    const/4 v13, 0x1

    :goto_3
    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :pswitch_9
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v50

    goto/16 :goto_1

    :pswitch_a
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v51

    goto/16 :goto_1

    :pswitch_b
    const/high16 v52, 0x3f800000    # 1.0f

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    :pswitch_c
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_1

    :pswitch_d
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    :pswitch_e
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v43, v0

    const/16 v42, 0x1

    goto/16 :goto_1

    :pswitch_f
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v44, v0

    const/16 v42, 0x1

    goto/16 :goto_1

    :pswitch_10
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v45, v0

    const/16 v42, 0x1

    goto/16 :goto_1

    :pswitch_11
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v52

    move/from16 v0, v52

    int-to-float v11, v0

    const/16 v42, 0x1

    goto/16 :goto_1

    :pswitch_12
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    const/16 v42, 0x1

    goto/16 :goto_1

    :pswitch_13
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    const/16 v42, 0x1

    goto/16 :goto_1

    :pswitch_14
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    const/16 v42, 0x1

    goto/16 :goto_1

    :pswitch_15
    const/high16 v52, 0x3f800000    # 1.0f

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v36

    const/16 v42, 0x1

    goto/16 :goto_1

    :pswitch_16
    const/high16 v52, 0x3f800000    # 1.0f

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v37

    const/16 v42, 0x1

    goto/16 :goto_1

    :pswitch_17
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_19
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    or-int/lit8 v48, v48, 0x2

    or-int/lit8 v47, v47, 0x2

    goto/16 :goto_1

    :pswitch_1a
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    or-int/lit8 v48, v48, 0x1

    or-int/lit8 v47, v47, 0x1

    goto/16 :goto_1

    :pswitch_1b
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    const v52, 0x40001

    or-int v48, v48, v52

    const v52, 0x40001

    or-int v47, v47, v52

    goto/16 :goto_1

    :pswitch_1c
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    move/from16 v0, v48

    or-int/lit16 v0, v0, 0x4000

    move/from16 v48, v0

    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x4000

    move/from16 v47, v0

    goto/16 :goto_1

    :pswitch_1d
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    const/high16 v52, 0x200000

    or-int v48, v48, v52

    const/high16 v52, 0x200000

    or-int v47, v47, v52

    goto/16 :goto_1

    :pswitch_1e
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    const/high16 v52, 0x800000

    or-int v48, v48, v52

    const/high16 v52, 0x800000

    or-int v47, v47, v52

    goto/16 :goto_1

    :pswitch_1f
    const/16 v52, 0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-nez v52, :cond_1

    const/high16 v52, 0x10000

    or-int v48, v48, v52

    const/high16 v52, 0x10000

    or-int v47, v47, v52

    goto/16 :goto_1

    :pswitch_20
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    const/high16 v52, 0x400000

    or-int v48, v48, v52

    const/high16 v52, 0x400000

    or-int v47, v47, v52

    goto/16 :goto_1

    :pswitch_21
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v49

    .local v49, "visibility":I
    if-eqz v49, :cond_1

    sget-object v52, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v52, v52, v49

    or-int v48, v48, v52

    or-int/lit8 v47, v47, 0xc

    goto/16 :goto_1

    .end local v49    # "visibility":I
    :pswitch_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v52, v0

    and-int/lit8 v52, v52, -0x3d

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .local v20, "layoutDirection":I
    const/16 v52, -0x1

    move/from16 v0, v20

    move/from16 v1, v52

    if-eq v0, v1, :cond_4

    sget-object v52, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    aget v46, v52, v20

    .local v46, "value":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v52, v0

    shl-int/lit8 v53, v46, 0x2

    or-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .end local v46    # "value":I
    :cond_4
    const/16 v46, 0x2

    goto :goto_4

    .end local v20    # "layoutDirection":I
    :pswitch_23
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .local v10, "cacheQuality":I
    if-eqz v10, :cond_1

    sget-object v52, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v52, v52, v10

    or-int v48, v48, v52

    const/high16 v52, 0x180000

    or-int v47, v47, v52

    goto/16 :goto_1

    .end local v10    # "cacheQuality":I
    :pswitch_24
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_25
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    goto/16 :goto_1

    :pswitch_26
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    goto/16 :goto_1

    :pswitch_27
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setLabelFor(I)V

    goto/16 :goto_1

    :pswitch_28
    const/16 v52, 0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-nez v52, :cond_1

    const v52, -0x8000001

    and-int v48, v48, v52

    const/high16 v52, 0x8000000

    or-int v47, v47, v52

    goto/16 :goto_1

    :pswitch_29
    const/16 v52, 0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-nez v52, :cond_1

    const v52, -0x10000001

    and-int v48, v48, v52

    const/high16 v52, 0x10000000

    or-int v47, v47, v52

    goto/16 :goto_1

    :pswitch_2a
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v32

    .local v32, "scrollbars":I
    if-eqz v32, :cond_1

    or-int v48, v48, v32

    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x300

    move/from16 v47, v0

    const/16 v19, 0x1

    goto/16 :goto_1

    .end local v32    # "scrollbars":I
    :pswitch_2b
    const/16 v52, 0xe

    move/from16 v0, v38

    move/from16 v1, v52

    if-ge v0, v1, :cond_1

    :pswitch_2c
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .local v14, "fadingEdge":I
    if-eqz v14, :cond_1

    or-int v48, v48, v14

    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x3000

    move/from16 v47, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeFadingEdgeInternal(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .end local v14    # "fadingEdge":I
    :pswitch_2d
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v31

    if-eqz v31, :cond_1

    const/high16 v52, 0x3000000

    and-int v52, v52, v31

    or-int v48, v48, v52

    const/high16 v52, 0x3000000

    or-int v47, v47, v52

    goto/16 :goto_1

    :pswitch_2e
    const/16 v33, 0x1

    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    const/16 v52, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_1

    :pswitch_2f
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    const/high16 v52, 0x4000000

    or-int v48, v48, v52

    const/high16 v52, 0x4000000

    or-int v47, v47, v52

    goto/16 :goto_1

    :pswitch_30
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    if-eqz v52, :cond_1

    move/from16 v0, v48

    or-int/lit16 v0, v0, 0x400

    move/from16 v48, v0

    move/from16 v0, v47

    or-int/lit16 v0, v0, 0x400

    move/from16 v47, v0

    goto/16 :goto_1

    :pswitch_31
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_1

    :pswitch_32
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_1

    :pswitch_33
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_1

    :pswitch_34
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_1

    :pswitch_35
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusForwardId:I

    goto/16 :goto_1

    :pswitch_36
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_1

    :pswitch_37
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v52

    if-eqz v52, :cond_5

    new-instance v52, Ljava/lang/IllegalStateException;

    const-string v53, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v52 .. v53}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v52

    :cond_5
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "handlerName":Ljava/lang/String;
    if-eqz v15, :cond_1

    new-instance v52, Landroid/view/View$DeclaredOnClickListener;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Landroid/view/View$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .end local v15    # "handlerName":Ljava/lang/String;
    :pswitch_39
    const/16 v52, 0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    goto/16 :goto_1

    :pswitch_3a
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mVerticalScrollbarPosition:I

    goto/16 :goto_1

    :pswitch_3b
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    const/16 v53, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    :pswitch_3c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v52, v0

    move/from16 v0, v52

    and-int/lit16 v0, v0, -0x1c1

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v40

    .local v40, "textDirection":I
    const/16 v52, -0x1

    move/from16 v0, v40

    move/from16 v1, v52

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v52, v0

    sget-object v53, Landroid/view/View;->PFLAG2_TEXT_DIRECTION_FLAGS:[I

    aget v53, v53, v40

    or-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .end local v40    # "textDirection":I
    :pswitch_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v52, v0

    const v53, -0xe001

    and-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    const/16 v52, 0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v39

    .local v39, "textAlignment":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v52, v0

    sget-object v53, Landroid/view/View;->PFLAG2_TEXT_ALIGNMENT_FLAGS:[I

    aget v53, v53, v39

    or-int v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .end local v39    # "textAlignment":I
    :pswitch_3e
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/16 :goto_1

    :pswitch_3f
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_41
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    goto/16 :goto_1

    :pswitch_42
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/16 :goto_1

    :pswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v52, v0

    if-nez v52, :cond_6

    new-instance v52, Landroid/view/View$TintInfo;

    invoke-direct/range {v52 .. v52}, Landroid/view/View$TintInfo;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v52, v0

    const/16 v53, 0x4d

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    iput-object v0, v1, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v53

    move-object/from16 v1, v52

    iput-boolean v0, v1, Landroid/view/View$TintInfo;->mHasTintList:Z

    goto/16 :goto_1

    :pswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v52, v0

    if-nez v52, :cond_7

    new-instance v52, Landroid/view/View$TintInfo;

    invoke-direct/range {v52 .. v52}, Landroid/view/View$TintInfo;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v52, v0

    const/16 v53, 0x4e

    const/16 v54, -0x1

    move/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    iput-object v0, v1, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v53

    move-object/from16 v1, v52

    iput-boolean v0, v1, Landroid/view/View$TintInfo;->mHasTintMode:Z

    goto/16 :goto_1

    :pswitch_45
    const/16 v52, 0x51

    const/16 v53, 0x0

    move/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/view/View;->setOutlineProviderFromAttribute(I)V

    goto/16 :goto_1

    :pswitch_46
    const/16 v52, 0x17

    move/from16 v0, v38

    move/from16 v1, v52

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v52, v0

    if-eqz v52, :cond_1

    :cond_8
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_47
    const/16 v52, 0x17

    move/from16 v0, v38

    move/from16 v1, v52

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v52, v0

    if-eqz v52, :cond_1

    :cond_9
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setForegroundGravity(I)V

    goto/16 :goto_1

    :pswitch_48
    const/16 v52, 0x17

    move/from16 v0, v38

    move/from16 v1, v52

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v52, v0

    if-eqz v52, :cond_1

    :cond_a
    const/16 v52, -0x1

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    const/16 v53, 0x0

    invoke-static/range {v52 .. v53}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setForegroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    :pswitch_49
    const/16 v52, 0x17

    move/from16 v0, v38

    move/from16 v1, v52

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v52, v0

    if-eqz v52, :cond_1

    :cond_b
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :pswitch_4a
    const/16 v52, 0x17

    move/from16 v0, v38

    move/from16 v1, v52

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v52, v0

    if-eqz v52, :cond_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    move-object/from16 v52, v0

    if-nez v52, :cond_d

    new-instance v52, Landroid/view/View$ForegroundInfo;

    const/16 v53, 0x0

    invoke-direct/range {v52 .. v53}, Landroid/view/View$ForegroundInfo;-><init>(Landroid/view/View$1;)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    move-object/from16 v53, v0

    # getter for: Landroid/view/View$ForegroundInfo;->mInsidePadding:Z
    invoke-static/range {v53 .. v53}, Landroid/view/View$ForegroundInfo;->access$100(Landroid/view/View$ForegroundInfo;)Z

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v53

    # setter for: Landroid/view/View$ForegroundInfo;->mInsidePadding:Z
    invoke-static/range {v52 .. v53}, Landroid/view/View$ForegroundInfo;->access$102(Landroid/view/View$ForegroundInfo;Z)Z

    goto/16 :goto_1

    :pswitch_4b
    const/16 v52, 0x0

    move/from16 v0, v52

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    shl-int/lit8 v52, v52, 0x8

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0x3f00

    move/from16 v30, v0

    .local v30, "scrollIndicators":I
    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags3:I

    move/from16 v52, v0

    or-int v52, v52, v30

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags3:I

    const/16 v18, 0x1

    goto/16 :goto_1

    .end local v7    # "attr":I
    .end local v30    # "scrollIndicators":I
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingStart:I

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mUserPaddingEnd:I

    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mLeftPaddingDefined:Z

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mRightPaddingDefined:Z

    if-ltz v24, :cond_10

    move/from16 v21, v24

    move/from16 v41, v24

    move/from16 v25, v24

    move/from16 v9, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v52

    if-eqz v52, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mLeftPaddingDefined:Z

    move/from16 v52, v0

    if-nez v52, :cond_11

    if-eqz v35, :cond_11

    move/from16 v21, v34

    :cond_11
    if-ltz v21, :cond_1c

    move/from16 v52, v21

    :goto_5
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mRightPaddingDefined:Z

    move/from16 v52, v0

    if-nez v52, :cond_12

    if-eqz v13, :cond_12

    move/from16 v25, v12

    :cond_12
    if-ltz v25, :cond_1d

    move/from16 v52, v25

    :goto_6
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    move/from16 v52, v0

    if-ltz v41, :cond_22

    .end local v41    # "topPadding":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    move/from16 v53, v0

    if-ltz v9, :cond_23

    .end local v9    # "bottomPadding":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v41

    move/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->internalSetPadding(IIII)V

    if-eqz v47, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    :cond_14
    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    :cond_15
    if-eqz v18, :cond_16

    invoke-direct/range {p0 .. p0}, Landroid/view/View;->initializeScrollIndicatorsInternal()V

    :cond_16
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v31, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    :cond_17
    if-nez v50, :cond_18

    if-eqz v51, :cond_19

    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_19
    if-eqz v42, :cond_1a

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->setElevation(F)V

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_1a
    if-nez v33, :cond_1b

    move/from16 v0, v48

    and-int/lit16 v0, v0, 0x200

    move/from16 v52, v0

    if-eqz v52, :cond_1b

    const/16 v52, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    return-void

    .restart local v9    # "bottomPadding":I
    .restart local v41    # "topPadding":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingLeftInitial:I

    move/from16 v52, v0

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRightInitial:I

    move/from16 v52, v0

    goto/16 :goto_6

    :cond_1e
    if-nez v35, :cond_1f

    if-eqz v13, :cond_21

    :cond_1f
    const/16 v16, 0x1

    .local v16, "hasRelativePadding":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mLeftPaddingDefined:Z

    move/from16 v52, v0

    if-eqz v52, :cond_20

    if-nez v16, :cond_20

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingLeftInitial:I

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mRightPaddingDefined:Z

    move/from16 v52, v0

    if-eqz v52, :cond_13

    if-nez v16, :cond_13

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingRightInitial:I

    goto/16 :goto_7

    .end local v16    # "hasRelativePadding":Z
    :cond_21
    const/16 v16, 0x0

    goto :goto_a

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v41, v0

    goto/16 :goto_8

    .end local v41    # "topPadding":I
    :cond_23
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPaddingBottom:I

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2d
        :pswitch_17
        :pswitch_18
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1a
        :pswitch_1b
        :pswitch_21
        :pswitch_19
        :pswitch_2a
        :pswitch_2b
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_20
        :pswitch_46
        :pswitch_36
        :pswitch_37
        :pswitch_47
        :pswitch_28
        :pswitch_2f
        :pswitch_2e
        :pswitch_29
        :pswitch_38
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_30
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_3a
        :pswitch_35
        :pswitch_3b
        :pswitch_2c
        :pswitch_3e
        :pswitch_3c
        :pswitch_3d
        :pswitch_22
        :pswitch_7
        :pswitch_8
        :pswitch_27
        :pswitch_3f
        :pswitch_10
        :pswitch_40
        :pswitch_41
        :pswitch_11
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_49
        :pswitch_48
        :pswitch_45
        :pswitch_25
        :pswitch_26
        :pswitch_4b
        :pswitch_1e
        :pswitch_4a
    .end packed-switch
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/view/View;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/view/View;ZFF)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;->setPressed(ZFF)V

    return-void
.end method

.method static synthetic access$3000(Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View;->checkForLongClick(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    return v0
.end method

.method static synthetic access$3200(Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Landroid/view/View;->inLiveRegion()Z

    move-result v0

    return v0
.end method

.method private applyBackgroundTint()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    .local v0, "tintInfo":Landroid/view/View$TintInfo;
    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintList:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v0    # "tintInfo":Landroid/view/View$TintInfo;
    :cond_3
    return-void
.end method

.method private applyForegroundTint()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v1}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v1}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    .local v0, "tintInfo":Landroid/view/View$TintInfo;
    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintList:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    iget-object v2, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    # setter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Landroid/view/View$ForegroundInfo;->access$1302(Landroid/view/View$ForegroundInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintList:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v0    # "tintInfo":Landroid/view/View$TintInfo;
    :cond_3
    return-void
.end method

.method private applyLegacyAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z
    .locals 16
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "drawingTime"    # J
    .param p4, "a"    # Landroid/view/animation/Animation;
    .param p5, "scalingRequired"    # Z

    .prologue
    move-object/from16 v0, p1

    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .local v10, "flags":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v11

    .local v11, "initialized":Z
    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setListenerHandler(Landroid/os/Handler;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->onAnimationStart()V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v14

    .local v14, "t":Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v13

    .local v13, "more":Z
    if-eqz p5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v3, :cond_2

    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .local v9, "invalidationTransform":Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    :goto_0
    if-eqz v13, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-nez v3, :cond_6

    and-int/lit16 v3, v10, 0x90

    const/16 v4, 0x80

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_3
    :goto_1
    return v13

    .end local v9    # "invalidationTransform":Landroid/view/animation/Transformation;
    :cond_4
    move-object v9, v14

    .restart local v9    # "invalidationTransform":Landroid/view/animation/Transformation;
    goto :goto_0

    :cond_5
    and-int/lit8 v3, v10, 0x4

    if-nez v3, :cond_3

    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v3, :cond_7

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    :cond_7
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .local v8, "region":Landroid/graphics/RectF;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mTop:I

    sub-int v7, v3, v7

    move-object/from16 v3, p4

    invoke-virtual/range {v3 .. v9}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    iget v4, v8, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    add-int v12, v3, v4

    .local v12, "left":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    iget v4, v8, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int v15, v3, v4

    .local v15, "top":I
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v15, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_1
.end method

.method private buildDrawingCacheImpl(Z)V
    .locals 23
    .param p1, "autoScale"    # Z

    .prologue
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v21, v0

    sub-int v19, v20, v21

    .local v19, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v21, v0

    sub-int v10, v20, v21

    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v2, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v2, :cond_5

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    const/16 v17, 0x1

    .local v17, "scalingRequired":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v17, :cond_0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    int-to-float v0, v10

    move/from16 v20, v0

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v10, v0

    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .local v6, "drawingCacheBackgroundColor":I
    if-nez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_1
    const/4 v11, 0x1

    .local v11, "opaque":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v0, v2, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    const/16 v18, 0x1

    .local v18, "use32BitCache":Z
    :goto_2
    mul-int v21, v19, v10

    if-eqz v11, :cond_8

    if-nez v18, :cond_8

    const/16 v20, 0x2

    :goto_3
    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v12, v0

    .local v12, "projectedBitmapSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    .local v8, "drawingCacheSize":J
    if-lez v19, :cond_2

    if-lez v10, :cond_2

    cmp-long v20, v12, v8

    if-lez v20, :cond_9

    :cond_2
    if-lez v19, :cond_3

    if-lez v10, :cond_3

    const-string v20, "View"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " not displayed because it is"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " too large to fit into a software layer (or drawing cache), needs "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " bytes, only "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " available"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    :cond_4
    :goto_4
    return-void

    .end local v6    # "drawingCacheBackgroundColor":I
    .end local v8    # "drawingCacheSize":J
    .end local v11    # "opaque":Z
    .end local v12    # "projectedBitmapSize":J
    .end local v17    # "scalingRequired":Z
    .end local v18    # "use32BitCache":Z
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .restart local v6    # "drawingCacheBackgroundColor":I
    .restart local v17    # "scalingRequired":Z
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1

    .restart local v11    # "opaque":Z
    :cond_7
    const/16 v18, 0x0

    goto :goto_2

    .restart local v18    # "use32BitCache":Z
    :cond_8
    const/16 v20, 0x4

    goto :goto_3

    .restart local v8    # "drawingCacheSize":J
    .restart local v12    # "projectedBitmapSize":J
    :cond_9
    const/4 v5, 0x1

    .local v5, "clear":Z
    if-eqz p1, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v10, :cond_d

    :cond_a
    if-nez v11, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x180000

    and-int v20, v20, v21

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .local v14, "quality":Landroid/graphics/Bitmap$Config;
    :goto_6
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v10, v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    if-eqz p1, :cond_17

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    :goto_7
    if-eqz v11, :cond_c

    if-eqz v18, :cond_c

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    if-eqz v6, :cond_19

    const/4 v5, 0x1

    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_d
    :goto_8
    if-eqz v2, :cond_1a

    iget-object v4, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .local v4, "canvas":Landroid/graphics/Canvas;
    if-nez v4, :cond_e

    new-instance v4, Landroid/graphics/Canvas;

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_e
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    :goto_9
    if-eqz v5, :cond_f

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .local v15, "restoreCount":I
    if-eqz p1, :cond_10

    if-eqz v17, :cond_10

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    .local v16, "scale":F
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .end local v16    # "scale":F
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v20, v0

    if-eqz v20, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, 0x8000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x600001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    :cond_13
    :goto_a
    invoke-virtual {v4, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_4

    iput-object v4, v2, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_4

    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v15    # "restoreCount":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_15
    if-eqz v18, :cond_16

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .restart local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :goto_b
    goto/16 :goto_6

    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_16
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_b

    .restart local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_17
    :try_start_1
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_18

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    :goto_c
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mCachingFailed:Z

    goto/16 :goto_4

    :cond_18
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_c

    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_8

    .end local v14    # "quality":Landroid/graphics/Bitmap$Config;
    :cond_1a
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    goto/16 :goto_9

    .restart local v15    # "restoreCount":I
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a
.end method

.method private checkForLongClick(I)V
    .locals 4
    .param p1, "delayOffset"    # I

    .prologue
    const/high16 v1, 0x200000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$CheckForLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private cleanupDraw()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/view/View;->resetDisplayList()V

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->cancelInvalidate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .param p0, "curState"    # I
    .param p1, "newState"    # I

    .prologue
    or-int v0, p0, p1

    return v0
.end method

.method private damageShadowReceiver()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->damageInParent()V

    .end local v1    # "p":Landroid/view/ViewParent;
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .locals 4
    .param p0, "depth"    # I

    .prologue
    const/16 v3, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "spaces":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v4

    invoke-interface {v4, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    move v2, v3

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isContextClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/view/View;->mInContextButtonPress:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v4, :cond_2

    if-eq v0, v6, :cond_4

    if-ne v0, v5, :cond_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->performContextClick()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v2, p0, Landroid/view/View;->mInContextButtonPress:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Landroid/view/View;->setPressed(ZFF)V

    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_0

    :pswitch_1
    iget-boolean v4, p0, Landroid/view/View;->mInContextButtonPress:Z

    if-eqz v4, :cond_2

    if-eq v0, v6, :cond_5

    if-ne v0, v5, :cond_2

    :cond_5
    iput-boolean v3, p0, Landroid/view/View;->mInContextButtonPress:Z

    iput-boolean v2, p0, Landroid/view/View;->mIgnoreNextUpEvent:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-void

    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->setBackgroundBounds()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0, v0, v4}, Landroid/view/View;->getDrawableRenderNode(Landroid/graphics/drawable/Drawable;Landroid/view/RenderNode;)Landroid/view/RenderNode;

    move-result-object v4

    iput-object v4, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/view/RenderNode;

    iget-object v1, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/view/RenderNode;

    .local v1, "renderNode":Landroid/view/RenderNode;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Landroid/view/View;->setBackgroundRenderNodeProperties(Landroid/view/RenderNode;)V

    check-cast p1, Landroid/view/DisplayListCanvas;

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    goto :goto_0

    .end local v1    # "renderNode":Landroid/view/RenderNode;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .local v2, "scrollX":I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .local v3, "scrollY":I
    or-int v4, v2, v3

    if-nez v4, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const-string v4, "%32s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .local v0, "bits":Ljava/lang/String;
    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "prefix":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "output":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "output":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    goto :goto_0
.end method

.method private static dumpFlags()V
    .locals 15

    .prologue
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .local v4, "found":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-class v13, Landroid/view/View;

    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_2

    aget-object v3, v1, v6

    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    .local v10, "modifiers":I
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    .local v11, "value":I
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13, v11}, Landroid/view/View;->dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V

    .end local v11    # "value":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, [I

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    move-object v0, v13

    check-cast v0, [I

    move-object v12, v0

    .local v12, "values":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v13, v12

    if-ge v5, v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget v14, v12, v5

    invoke-static {v4, v13, v14}, Landroid/view/View;->dumpFlag(Ljava/util/HashMap;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "modifiers":I
    .end local v12    # "values":[I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    :cond_2
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .local v8, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "key":Ljava/lang/String;
    const-string v14, "View"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v7    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private findLabelForView(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "labeledId"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$MatchLabelForPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$MatchLabelForPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    # setter for: Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I
    invoke-static {v0, p2}, Landroid/view/View$MatchLabelForPredicate;->access$1002(Landroid/view/View$MatchLabelForPredicate;I)I

    iget-object v0, p0, Landroid/view/View;->mMatchLabelForPredicate:Landroid/view/View$MatchLabelForPredicate;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "id"    # I

    .prologue
    iget-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/View$MatchIdPredicate;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/View$MatchIdPredicate;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    iput p2, v1, Landroid/view/View$MatchIdPredicate;->mId:I

    iget-object v1, p0, Landroid/view/View;->mMatchIdPredicate:Landroid/view/View$MatchIdPredicate;

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    .local v0, "result":Landroid/view/View;
    if-nez v0, :cond_1

    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find view with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private fitSystemWindowsInt(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, -0x80000000

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iput v4, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v4, p0, Landroid/view/View;->mUserPaddingEnd:I

    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "localInsets":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "localInsets":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .restart local v0    # "localInsets":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .local v1, "res":Z
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->internalSetPadding(IIII)V

    .end local v0    # "localInsets":Landroid/graphics/Rect;
    .end local v1    # "res":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static generateViewId()I
    .locals 3

    .prologue
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    const v2, 0xffffff

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v2, Landroid/view/View;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1
.end method

.method private static getAttributeMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/view/View;->mAttributeMap:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/View;->mAttributeMap:Landroid/util/SparseArray;

    :cond_0
    sget-object v0, Landroid/view/View;->mAttributeMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    move v0, p0

    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    move v0, p0

    goto :goto_0

    :sswitch_1
    move v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDrawableRenderNode(Landroid/graphics/drawable/Drawable;Landroid/view/RenderNode;)Landroid/view/RenderNode;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "renderNode"    # Landroid/view/RenderNode;

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .local v2, "height":I
    invoke-virtual {p2, v3, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v1

    .local v1, "canvas":Landroid/view/DisplayListCanvas;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/DisplayListCanvas;->translate(FF)V

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/RenderNode;->setProjectBackwards(Z)Z

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/RenderNode;->setProjectionReceiver(Z)Z

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    return-object p2

    :catchall_0
    move-exception v4

    invoke-virtual {p2, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v4
.end method

.method private getFinalAlpha()F
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getProjectionReceiver()Landroid/view/View;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .local v1, "v":Landroid/view/View;
    invoke-direct {v1}, Landroid/view/View;->isProjectionReceiver()Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "v":Landroid/view/View;
    :goto_1
    return-object v1

    .restart local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getScrollCache()Landroid/view/View$ScrollabilityCache;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    return-object v0
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v1

    .local v1, "focusableInTouchMode":Z
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v0, "ancestor":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "vgAncestor":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x60000

    if-eq v3, v4, :cond_0

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    .end local v2    # "vgAncestor":Landroid/view/ViewGroup;
    :goto_1
    return v3

    .restart local v2    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .end local v2    # "vgAncestor":Landroid/view/ViewGroup;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private hasListenersForAccessibility()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .local v0, "info":Landroid/view/View$ListenerInfo;
    iget-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$800(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasRtlSupport()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private inLiveRegion()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "factory":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    :cond_0
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeScrollIndicatorsInternal()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x10805c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private isHoverable()Z
    .locals 6

    .prologue
    const/high16 v5, 0x800000

    const/high16 v4, 0x200000

    const/4 v1, 0x0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .local v0, "viewFlags":I
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    and-int/lit16 v2, v0, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    and-int v2, v0, v4

    if-eq v2, v4, :cond_2

    and-int v2, v0, v5

    if-ne v2, v5, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLayoutModeOptical(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutModeOptical()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProjectionReceiver()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRtlCompatibilityMode()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static mergeDrawableStates([I[I)[I
    .locals 5
    .param p0, "baseState"    # [I
    .param p1, "additionalState"    # [I

    .prologue
    array-length v0, p0

    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aget v2, p0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    return-object p0
.end method

.method private needRtlPropertiesResolution()Z
    .locals 2

    .prologue
    const v1, 0x60010220

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDrawScrollIndicators(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit16 v13, v13, 0x3f00

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .local v6, "h":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .local v12, "w":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v13, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .local v9, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/View;->getScrollIndicatorBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit16 v13, v13, 0x100

    if-eqz v13, :cond_2

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    .local v4, "canScrollUp":Z
    if-eqz v4, :cond_2

    iget v13, v9, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->top:I

    iget v15, v9, Landroid/graphics/Rect;->right:I

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v16, v16, v6

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v4    # "canScrollUp":Z
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit16 v13, v13, 0x200

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    .local v1, "canScrollDown":Z
    if-eqz v1, :cond_3

    iget v13, v9, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v6

    iget v15, v9, Landroid/graphics/Rect;->right:I

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v1    # "canScrollDown":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/16 v8, 0x2000

    .local v8, "leftRtl":I
    const/16 v11, 0x1000

    .local v11, "rightRtl":I
    :goto_1
    or-int/lit16 v7, v8, 0x400

    .local v7, "leftMask":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/2addr v13, v7

    if-eqz v13, :cond_4

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v2

    .local v2, "canScrollLeft":Z
    if-eqz v2, :cond_4

    iget v13, v9, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->top:I

    iget v15, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v12

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v2    # "canScrollLeft":Z
    :cond_4
    or-int/lit16 v10, v11, 0x800

    .local v10, "rightMask":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/2addr v13, v10

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    .local v3, "canScrollRight":Z
    if-eqz v3, :cond_0

    iget v13, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v12

    iget v14, v9, Landroid/graphics/Rect;->top:I

    iget v15, v9, Landroid/graphics/Rect;->right:I

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .end local v3    # "canScrollRight":Z
    .end local v7    # "leftMask":I
    .end local v8    # "leftRtl":I
    .end local v10    # "rightMask":I
    .end local v11    # "rightRtl":I
    :cond_5
    const/16 v8, 0x1000

    .restart local v8    # "leftRtl":I
    const/16 v11, 0x2000

    .restart local v11    # "rightRtl":I
    goto :goto_1
.end method

.method private populateVirtualStructure(Landroid/view/ViewStructure;Landroid/view/accessibility/AccessibilityNodeProvider;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 15
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getTempRect()Landroid/graphics/Rect;

    move-result-object v14

    .local v14, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget v3, v14, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setVisibility(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setClickable(Z)V

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setFocusable(Z)V

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setFocused(Z)V

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setAccessibilityFocused(Z)V

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setSelected(Z)V

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setLongClickable(Z)V

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setCheckable(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setChecked(Z)V

    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setContextClickable(Z)V

    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, "cname":Ljava/lang/CharSequence;
    if-eqz v12, :cond_a

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionEnd()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v9

    .local v9, "NCHILDREN":I
    if-lez v9, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/ViewStructure;->setChildCount(I)V

    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v9, :cond_b

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    .local v11, "cinfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v10

    .local v10, "child":Landroid/view/ViewStructure;
    move-object/from16 v0, p2

    invoke-direct {p0, v10, v0, v11}, Landroid/view/View;->populateVirtualStructure(Landroid/view/ViewStructure;Landroid/view/accessibility/AccessibilityNodeProvider;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v9    # "NCHILDREN":I
    .end local v10    # "child":Landroid/view/ViewStructure;
    .end local v11    # "cinfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "i":I
    :cond_a
    const/4 v2, 0x0

    goto :goto_0

    .restart local v9    # "NCHILDREN":I
    :cond_b
    return-void
.end method

.method private postSendViewScrolledAccessibilityEventCallback()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .locals 4
    .param p0, "flags"    # I

    .prologue
    const-string v1, ""

    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :cond_0
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-object v1

    :sswitch_0
    if-lez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    if-lez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .locals 4
    .param p0, "privateFlags"    # I

    .prologue
    const-string v1, ""

    .local v1, "output":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "numFlags":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-lez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    if-lez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    if-lez v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :cond_6
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    if-lez v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :cond_8
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a

    if-lez v0, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    return-object v1
.end method

.method private rebuildOutline()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpOutline:Landroid/graphics/Outline;

    .local v0, "outline":Landroid/graphics/Outline;
    invoke-virtual {v0}, Landroid/graphics/Outline;->setEmpty()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object v1, p0, Landroid/view/View;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    iget-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    goto :goto_0
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removePerformClickCallback()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeSendViewScrolledAccessibilityEventCallback()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeUnsetPressCallback()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private requestFocusNoSearch(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x40000

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_0

    :cond_2
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v1

    goto :goto_0
.end method

.method private resetDisplayList()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->destroyDisplayListData()V

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/view/RenderNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mBackgroundRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->destroyDisplayListData()V

    :cond_1
    return-void
.end method

.method private resetPressedState()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_0
.end method

.method public static resolveSize(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    move v0, p0

    .local v0, "result":I
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .end local v0    # "result":I
    :sswitch_0
    if-ge v2, p0, :cond_0

    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    .restart local v0    # "result":I
    goto :goto_0

    .end local v0    # "result":I
    :cond_0
    move v0, p0

    .restart local v0    # "result":I
    goto :goto_0

    .end local v0    # "result":I
    :sswitch_1
    move v0, v2

    .restart local v0    # "result":I
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private saveAttributeData(Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 15
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "t"    # Landroid/content/res/TypedArray;

    .prologue
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .local v3, "attrsCount":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    .local v7, "indexCount":I
    add-int v13, v3, v7

    mul-int/lit8 v13, v13, 0x2

    new-array v2, v13, [Ljava/lang/String;

    .local v2, "attributes":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v3, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v2, v5

    add-int/lit8 v13, v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v2    # "attributes":[Ljava/lang/String;
    .end local v3    # "attrsCount":I
    .end local v5    # "i":I
    .end local v7    # "indexCount":I
    .end local v8    # "j":I
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    goto :goto_0

    .restart local v2    # "attributes":[Ljava/lang/String;
    .restart local v3    # "attrsCount":I
    .restart local v5    # "i":I
    .restart local v7    # "indexCount":I
    .restart local v8    # "j":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/view/View;->getAttributeMap()Landroid/util/SparseArray;

    move-result-object v1

    .local v1, "attributeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .local v6, "index":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .local v10, "resourceId":I
    if-eqz v10, :cond_2

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "resourceName":Ljava/lang/String;
    if-nez v11, :cond_4

    :try_start_0
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_4
    invoke-virtual {v1, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    aput-object v11, v2, v5

    add-int/lit8 v13, v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "index":I
    .end local v10    # "resourceId":I
    .end local v11    # "resourceName":Ljava/lang/String;
    :cond_5
    new-array v12, v5, [Ljava/lang/String;

    .local v12, "trimmed":[Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v2, v13, v12, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v12, p0, Landroid/view/View;->mAttributes:[Ljava/lang/String;

    return-void
.end method

.method private sendAccessibilityHoverEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    move-object v1, p0

    .local v1, "source":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->includeForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    goto :goto_0
.end method

.method private sendViewTextTraversedAtGranularityEvent(IIII)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "granularity"    # I
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I

    .prologue
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x20000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method private setBackgroundRenderNodeProperties(Landroid/view/RenderNode;)V
    .locals 1
    .param p1, "renderNode"    # Landroid/view/RenderNode;

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setTranslationX(F)Z

    iget v0, p0, Landroid/view/View;->mScrollY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setTranslationY(F)Z

    return-void
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private setMeasuredDimensionRaw(II)V
    .locals 1
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method private setOpticalFrame(IIII)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .local v1, "parentInsets":Landroid/graphics/Insets;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .local v0, "childInsets":Landroid/graphics/Insets;
    iget v2, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Insets;->top:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, p3

    iget v5, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Insets;->top:I

    add-int/2addr v5, p4

    iget v6, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    return v2

    .end local v0    # "childInsets":Landroid/graphics/Insets;
    .end local v1    # "parentInsets":Landroid/graphics/Insets;
    :cond_0
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0
.end method

.method private setOutlineProviderFromAttribute(I)V
    .locals 1
    .param p1, "providerInt"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/view/ViewOutlineProvider;->PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setPressed(ZFF)V
    .locals 0
    .param p1, "pressed"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private sizeChange(IIII)V
    .locals 1
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setRight(I)V

    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setBottom(I)V

    :cond_0
    invoke-direct {p0}, Landroid/view/View;->rebuildOutline()V

    return-void
.end method

.method private skipInvalidate()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->isViewTransitioning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private traverseAtGranularity(IZZ)Z
    .locals 10
    .param p1, "granularity"    # I
    .param p2, "forward"    # Z
    .param p3, "extendSelection"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v8

    .local v8, "text":Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    .local v2, "iterator":Landroid/view/AccessibilityIterators$TextSegmentIterator;
    if-nez v2, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v1

    .local v1, "current":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_3

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    invoke-interface {v2, v1}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object v3

    .local v3, "range":[I
    :goto_2
    if-nez v3, :cond_6

    const/4 v9, 0x0

    goto :goto_0

    .end local v3    # "range":[I
    :cond_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-interface {v2, v1}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object v3

    goto :goto_2

    .restart local v3    # "range":[I
    :cond_6
    const/4 v9, 0x0

    aget v5, v3, v9

    .local v5, "segmentStart":I
    const/4 v9, 0x1

    aget v4, v3, v9

    .local v4, "segmentEnd":I
    if-eqz p3, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isAccessibilitySelectionExtendable()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v7

    .local v7, "selectionStart":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_7

    if-eqz p2, :cond_8

    move v7, v5

    :cond_7
    :goto_3
    if-eqz p2, :cond_9

    move v6, v4

    .local v6, "selectionEnd":I
    :goto_4
    invoke-virtual {p0, v7, v6}, Landroid/view/View;->setAccessibilitySelection(II)V

    if-eqz p2, :cond_c

    const/16 v0, 0x100

    .local v0, "action":I
    :goto_5
    invoke-direct {p0, v0, p1, v5, v4}, Landroid/view/View;->sendViewTextTraversedAtGranularityEvent(IIII)V

    const/4 v9, 0x1

    goto :goto_0

    .end local v0    # "action":I
    .end local v6    # "selectionEnd":I
    :cond_8
    move v7, v4

    goto :goto_3

    :cond_9
    move v6, v5

    goto :goto_4

    .end local v7    # "selectionStart":I
    :cond_a
    if-eqz p2, :cond_b

    move v6, v4

    .restart local v6    # "selectionEnd":I
    :goto_6
    move v7, v6

    .restart local v7    # "selectionStart":I
    goto :goto_4

    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    :cond_b
    move v6, v5

    goto :goto_6

    .restart local v6    # "selectionEnd":I
    .restart local v7    # "selectionStart":I
    :cond_c
    const/16 v0, 0x200

    goto :goto_5
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$302(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .local v0, "li":Landroid/view/View$ListenerInfo;
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$202(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v4, 0x800000

    const/high16 v3, 0x200000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .local v0, "viewFlags":I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_0

    and-int v1, v0, v3

    if-eq v1, v3, :cond_0

    and-int v1, v0, v4

    if-ne v1, v4, :cond_1

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .locals 15
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "region"    # Landroid/graphics/Region;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    .local v1, "r":Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .local v13, "db":Landroid/graphics/Rect;
    iget-object v12, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v12, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_4

    if-eqz v12, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v9, v2, v3

    .local v9, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v2, v3

    .local v5, "h":I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_0
    iget v2, v13, Landroid/graphics/Rect;->right:I

    if-ge v2, v9, :cond_1

    iget v2, v13, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_1
    iget v2, v13, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sget-object v11, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_2
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v5, :cond_3

    const/4 v2, 0x0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_3
    iget-object v14, v12, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .local v14, "location":[I
    invoke-virtual {p0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .end local v5    # "h":I
    .end local v9    # "w":I
    .end local v14    # "location":[I
    :goto_0
    return-void

    :cond_4
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method areDrawablesResolved()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected awakenScrollBars(I)Z
    .locals 1
    .param p1, "startDelay"    # I

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 10
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .local v1, "scrollCache":Landroid/view/View$ScrollabilityCache;
    if-eqz v1, :cond_0

    iget-boolean v6, v1, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, v1, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_2

    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v1, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    iget-object v6, v1, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, p0}, Landroid/widget/ScrollBarDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v6, v1, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ScrollBarDrawable;->setState([I)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_4
    iget v4, v1, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_5

    const/16 v0, 0x2ee

    .local v0, "KEY_REPEAT_FIRST_DELAY":I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .end local v0    # "KEY_REPEAT_FIRST_DELAY":I
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v2, v6, v8

    .local v2, "fadeStartTime":J
    iput-wide v2, v1, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    iput v5, v1, Landroid/view/View$ScrollabilityCache;->state:I

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_6
    move v4, v5

    goto :goto_0
.end method

.method public bringToFront()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public buildDrawingCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 4
    .param p1, "autoScale"    # Z

    .prologue
    const-wide/16 v2, 0x8

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildDrawingCache/SW Layer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/View;->buildDrawingCacheImpl(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public buildLayer()V
    .locals 3

    .prologue
    iget v1, p0, Landroid/view/View;->mLayerType:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This view must be attached to a window first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mLayerType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v2, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v2}, Landroid/view/HardwareRenderer;->buildLayer(Landroid/view/RenderNode;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callOnClick()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canAcceptDrag()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canHaveDisplayList()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canResolveLayoutDirection()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveLayoutDirection()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public canResolveTextAlignment()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveTextAlignment()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public canResolveTextDirection()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->canResolveTextDirection()Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .local v1, "range":I
    if-nez v1, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-gez p1, :cond_2

    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .local v1, "range":I
    if-nez v1, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-gez p1, :cond_2

    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    return-void
.end method

.method public final cancelPendingInputEvents()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->dispatchCancelPendingInputEvents()V

    return-void
.end method

.method public captureTransitioningViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "transitioningViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public clearAccessibilityFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .local v0, "focusHost":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3, v3}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .end local v0    # "focusHost":Landroid/view/View;
    :cond_0
    return-void
.end method

.method clearAccessibilityFocusNoCallbacks()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    return-void
.end method

.method clearFocusInternal(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "propagate"    # Z
    .param p3, "refocus"    # Z

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->rootViewRequestFocus()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p0}, Landroid/view/View;->notifyGlobalFocusCleared(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method combineVisibility(II)I
    .locals 1
    .param p1, "vis1"    # I
    .param p2, "vis2"    # I

    .prologue
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/lit16 v2, v2, 0x600

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    .local v0, "overscan":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeOpaqueFlags()V
    .locals 4

    .prologue
    const/high16 v3, 0x3000000

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    :cond_0
    and-int v1, v0, v3

    if-eqz v1, :cond_1

    and-int v1, v0, v3

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_3

    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_1
    return-void

    .end local v0    # "flags":I
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .restart local v0    # "flags":I
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_1
.end method

.method computeOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    return-void
.end method

.method public computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "in"    # Landroid/view/WindowInsets;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, 0x600

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .end local p1    # "in":Landroid/view/WindowInsets;
    :goto_0
    return-object p1

    .restart local p1    # "in":Landroid/view/WindowInsets;
    :cond_1
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public createAccessibilityNodeInfoInternal()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .local v1, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v2, p1

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    move-object v2, p1

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    :cond_1
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "quality"    # Landroid/graphics/Bitmap$Config;
    .param p2, "backgroundColor"    # I
    .param p3, "skipChildren"    # Z

    .prologue
    iget v9, p0, Landroid/view/View;->mRight:I

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int v8, v9, v10

    .local v8, "width":I
    iget v9, p0, Landroid/view/View;->mBottom:I

    iget v10, p0, Landroid/view/View;->mTop:I

    sub-int v4, v9, v10

    .local v4, "height":I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .local v7, "scale":F
    :goto_0
    int-to-float v9, v8

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v8, v9

    int-to-float v9, v4

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v4, v9

    iget-object v9, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    if-lez v8, :cond_1

    .end local v8    # "width":I
    :goto_1
    if-lez v4, :cond_2

    .end local v4    # "height":I
    :goto_2
    invoke-static {v9, v8, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .restart local v4    # "height":I
    .restart local v8    # "width":I
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    .restart local v7    # "scale":F
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .end local v8    # "width":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .end local v4    # "height":I
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, "resources":Landroid/content/res/Resources;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_4
    if-eqz v0, :cond_9

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .local v2, "canvas":Landroid/graphics/Canvas;
    if-nez v2, :cond_5

    new-instance v2, Landroid/graphics/Canvas;

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_5
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    iput-object v9, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    :goto_3
    const/high16 v9, -0x1000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_6

    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .local v6, "restoreCount":I
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget v9, p0, Landroid/view/View;->mScrollX:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/view/View;->mScrollY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .local v3, "flags":I
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    const v10, -0x600001

    and-int/2addr v9, v10

    iput v9, p0, Landroid/view/View;->mPrivateFlags:I

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_a

    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v9, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v9}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v9}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_4
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_8

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    :cond_8
    return-object v1

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "flags":I
    .end local v6    # "restoreCount":I
    :cond_9
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    goto :goto_3

    .restart local v3    # "flags":I
    .restart local v6    # "restoreCount":I
    :cond_a
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method protected damageInParent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "ai":Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v1, "p":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .local v2, "r":Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0, v2}, Landroid/view/ViewGroup;->damageChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .restart local v2    # "r":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public debug()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    return-void
.end method

.method protected debug(I)V
    .locals 5
    .param p1, "depth"    # I

    .prologue
    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, "id":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_4

    :cond_3
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public destroyDrawingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/view/View;->resetDisplayList()V

    return-void
.end method

.method public dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mStartActivityRequestWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mStartActivityRequestWho:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Landroid/view/View;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mStartActivityRequestWho:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    :try_start_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Landroid/view/View;->mPrivateFlags3:I

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Landroid/view/View;->mPrivateFlags3:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Landroid/view/View;->mPrivateFlags3:I

    throw v0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 7
    .param p1, "info"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x0

    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v5}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/ViewGroup;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    :cond_0
    iget v5, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/View;->mWindowAttachCount:I

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    iget-object v5, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_1

    iget-object v5, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    iput-object v3, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_2
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p0, v5, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_3

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .local v3, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .local v2, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    :cond_4
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .local v4, "vis":I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    invoke-virtual {p0, v4}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    :cond_5
    invoke-virtual {p0, p0, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    return-void
.end method

.method dispatchCancelPendingInputEvents()V
    .locals 3

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    invoke-virtual {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCancelPendingInputEvents()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 0
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/16 v8, 0x8

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v2, "info":Landroid/view/View$AttachInfo;
    if-eqz v2, :cond_0

    iget v6, v2, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .local v6, "vis":I
    if-eq v6, v8, :cond_0

    invoke-virtual {p0, v8}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .end local v6    # "vis":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_1
    iget-object v3, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v3, "li":Landroid/view/View$ListenerInfo;
    if-eqz v3, :cond_2

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v3}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    .local v5, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnAttachStateChangeListener;

    .local v4, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v4, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    .end local v5    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_2
    move-object v5, v7

    goto :goto_0

    .restart local v5    # "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_3
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x100000

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x100001

    and-int/2addr v8, v9

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_4
    iput-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->dispatchDetachedFromWindow()V

    :cond_5
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 0
    .param p1, "hint"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$800(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$800(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    return-void
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .local v1, "source":I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .end local v0    # "action":I
    :cond_2
    :goto_0
    return v2

    .restart local v0    # "action":I
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .end local v0    # "action":I
    :cond_4
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGetDisplayList()V
    .locals 0

    .prologue
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-interface {v1, p0, v4, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_1
    invoke-virtual {p1, p0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchNestedPrePerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Landroid/view/ViewParent;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v4, :cond_6

    if-nez p1, :cond_0

    if-eqz p2, :cond_7

    :cond_0
    const/4 v0, 0x0

    .local v0, "startX":I
    const/4 v1, 0x0

    .local v1, "startY":I
    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, p4, v2

    aget v1, p4, v3

    :cond_1
    if-nez p3, :cond_3

    iget-object v4, p0, Landroid/view/View;->mTempNestedScrollConsumed:[I

    if-nez v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/view/View;->mTempNestedScrollConsumed:[I

    :cond_2
    iget-object p3, p0, Landroid/view/View;->mTempNestedScrollConsumed:[I

    :cond_3
    aput v2, p3, v2

    aput v2, p3, v3

    iget-object v4, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    invoke-interface {v4, p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    if-eqz p4, :cond_4

    invoke-virtual {p0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, p4, v2

    sub-int/2addr v4, v0

    aput v4, p4, v2

    aget v4, p4, v3

    sub-int/2addr v4, v1

    aput v4, p4, v3

    :cond_4
    aget v4, p3, v2

    if-nez v4, :cond_5

    aget v4, p3, v3

    if-eqz v4, :cond_6

    :cond_5
    move v2, v3

    .end local v0    # "startX":I
    .end local v1    # "startY":I
    :cond_6
    :goto_0
    return v2

    :cond_7
    if-eqz p4, :cond_6

    aput v2, p4, v2

    aput v2, p4, v3

    goto :goto_0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 10
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    const/4 v6, 0x0

    .local v6, "startX":I
    const/4 v7, 0x0

    .local v7, "startY":I
    if-eqz p5, :cond_1

    invoke-virtual {p0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, p5, v9

    aget v7, p5, v8

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V

    if-eqz p5, :cond_2

    invoke-virtual {p0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, p5, v9

    sub-int/2addr v0, v6

    aput v0, p5, v9

    aget v0, p5, v8

    sub-int/2addr v0, v7

    aput v0, p5, v8

    :cond_2
    move v0, v8

    .end local v6    # "startX":I
    .end local v7    # "startY":I
    :goto_0
    return v0

    :cond_3
    if-eqz p5, :cond_4

    aput v9, p5, v9

    aput v9, p5, v8

    :cond_4
    move v0, v9

    goto :goto_0
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 1
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isAssistBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->onProvideVirtualStructure(Landroid/view/ViewStructure;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAssistBlocked(Z)V

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .local v0, "state":Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    return-void
.end method

.method protected dispatchSetActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    and-int/lit16 v2, p1, 0x3fff

    invoke-interface {v1, v2}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTargetAccessibilityFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocusedViewOrHost()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    :cond_2
    const/4 v2, 0x0

    .local v2, "result":Z
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "actionMasked":I
    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_5

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_5

    # getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-interface {v4, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    .end local v1    # "li":Landroid/view/View$ListenerInfo;
    :cond_6
    if-nez v2, :cond_7

    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_7
    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v26, v0

    .local v26, "privateFlags":I
    const/high16 v2, 0x600000

    and-int v2, v2, v26

    const/high16 v3, 0x400000

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v2, :cond_4

    :cond_0
    const/4 v11, 0x1

    .local v11, "dirtyOpaque":Z
    :goto_0
    const v2, -0x600001

    and-int v2, v2, v26

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/View;->mPrivateFlags:I

    if-nez v11, :cond_1

    invoke-direct/range {p0 .. p1}, Landroid/view/View;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v35, v0

    .local v35, "viewFlags":I
    move/from16 v0, v35

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_5

    const/16 v19, 0x1

    .local v19, "horizontalEdges":Z
    :goto_1
    move/from16 v0, v35

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_6

    const/16 v34, 0x1

    .local v34, "verticalEdges":Z
    :goto_2
    if-nez v34, :cond_7

    if-nez v19, :cond_7

    if-nez v11, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawForeground(Landroid/graphics/Canvas;)V

    :goto_3
    return-void

    .end local v11    # "dirtyOpaque":Z
    .end local v19    # "horizontalEdges":Z
    .end local v34    # "verticalEdges":Z
    .end local v35    # "viewFlags":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .restart local v11    # "dirtyOpaque":Z
    .restart local v35    # "viewFlags":I
    :cond_5
    const/16 v19, 0x0

    goto :goto_1

    .restart local v19    # "horizontalEdges":Z
    :cond_6
    const/16 v34, 0x0

    goto :goto_2

    .restart local v34    # "verticalEdges":Z
    :cond_7
    const/4 v15, 0x0

    .local v15, "drawTop":Z
    const/4 v12, 0x0

    .local v12, "drawBottom":Z
    const/4 v13, 0x0

    .local v13, "drawLeft":Z
    const/4 v14, 0x0

    .local v14, "drawRight":Z
    const/16 v33, 0x0

    .local v33, "topFadeStrength":F
    const/4 v10, 0x0

    .local v10, "bottomFadeStrength":F
    const/16 v21, 0x0

    .local v21, "leftFadeStrength":F
    const/16 v28, 0x0

    .local v28, "rightFadeStrength":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v25, v0

    .local v25, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v24

    .local v24, "offsetRequired":Z
    if-eqz v24, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v2

    add-int v25, v25, v2

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    add-int v20, v2, v25

    .local v20, "left":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int v27, v2, v25

    .local v27, "right":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeTop(Z)I

    move-result v3

    add-int v32, v2, v3

    .local v32, "top":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v2

    add-int v9, v32, v2

    .local v9, "bottom":I
    if-eqz v24, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v2

    add-int v27, v27, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v2

    add-int/2addr v9, v2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v30, v0

    .local v30, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v30

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v17, v0

    .local v17, "fadeHeight":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    .local v22, "length":I
    if-eqz v34, :cond_a

    add-int v2, v32, v22

    sub-int v3, v9, v22

    if-le v2, v3, :cond_a

    sub-int v2, v9, v32

    div-int/lit8 v22, v2, 0x2

    :cond_a
    if-eqz v19, :cond_b

    add-int v2, v20, v22

    sub-int v3, v27, v22

    if-le v2, v3, :cond_b

    sub-int v2, v27, v20

    div-int/lit8 v22, v2, 0x2

    :cond_b
    if-eqz v34, :cond_c

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v33

    mul-float v2, v33, v17

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    const/4 v15, 0x1

    :goto_4
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float v2, v10, v17

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    const/4 v12, 0x1

    :cond_c
    :goto_5
    if-eqz v19, :cond_d

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v21

    mul-float v2, v21, v17

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    const/4 v13, 0x1

    :goto_6
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v28

    mul-float v2, v28, v17

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    const/4 v14, 0x1

    :cond_d
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v29

    .local v29, "saveCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v31

    .local v31, "solidColor":I
    if-nez v31, :cond_1c

    const/16 v18, 0x4

    .local v18, "flags":I
    if-eqz v15, :cond_e

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    add-int v2, v32, v22

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    :cond_e
    if-eqz v12, :cond_f

    move/from16 v0, v20

    int-to-float v3, v0

    sub-int v2, v9, v22

    int-to-float v4, v2

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    :cond_f
    if-eqz v13, :cond_10

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    add-int v2, v20, v22

    int-to-float v5, v2

    int-to-float v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    :cond_10
    if-eqz v14, :cond_11

    sub-int v2, v27, v22

    int-to-float v3, v2

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .end local v18    # "flags":I
    :cond_11
    :goto_8
    if-nez v11, :cond_12

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, v30

    iget-object v7, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .local v7, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v23, v0

    .local v23, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v16, v0

    .local v16, "fade":Landroid/graphics/Shader;
    if-eqz v15, :cond_13

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v17, v33

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    add-int v2, v32, v22

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_13
    if-eqz v12, :cond_14

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v17, v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, 0x43340000    # 180.0f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, v20

    int-to-float v2, v0

    int-to-float v3, v9

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, v20

    int-to-float v3, v0

    sub-int v2, v9, v22

    int-to-float v4, v2

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_14
    if-eqz v13, :cond_15

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v17, v21

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v32

    int-to-float v4, v0

    add-int v2, v20, v22

    int-to-float v5, v2

    int-to-float v6, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_15
    if-eqz v14, :cond_16

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v17, v28

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, 0x42b40000    # 90.0f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sub-int v2, v27, v22

    int-to-float v3, v2

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_16
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v2}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_17
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawForeground(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .end local v7    # "p":Landroid/graphics/Paint;
    .end local v16    # "fade":Landroid/graphics/Shader;
    .end local v23    # "matrix":Landroid/graphics/Matrix;
    .end local v29    # "saveCount":I
    .end local v31    # "solidColor":I
    :cond_18
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_1b
    const/4 v14, 0x0

    goto/16 :goto_7

    .restart local v29    # "saveCount":I
    .restart local v31    # "solidColor":I
    :cond_1c
    invoke-virtual/range {v30 .. v31}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_8
.end method

.method draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "drawingTime"    # J

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v23

    .local v23, "hardwareAcceleratedCanvas":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v4, :cond_3

    if-eqz v23, :cond_3

    const/16 v22, 0x1

    .local v22, "drawingWithRenderNode":Z
    :goto_0
    const/16 v27, 0x0

    .local v27, "more":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v19

    .local v19, "childHasIdentityMatrix":Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v29, v0

    .local v29, "parentFlags":I
    move/from16 v0, v29

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, -0x101

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_0
    const/16 v39, 0x0

    .local v39, "transformToApply":Landroid/view/animation/Transformation;
    const/16 v20, 0x0

    .local v20, "concatMatrix":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v4, :cond_4

    const/4 v9, 0x1

    .local v9, "scalingRequired":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    .local v8, "a":Landroid/view/animation/Animation;
    if-eqz v8, :cond_5

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v4 .. v9}, Landroid/view/View;->applyLegacyAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z

    move-result v27

    invoke-virtual {v8}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags3:I

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v39

    :cond_2
    :goto_2
    if-nez v19, :cond_9

    const/4 v4, 0x1

    :goto_3
    or-int v20, v20, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    if-nez v20, :cond_a

    move/from16 v0, v29

    and-int/lit16 v4, v0, 0x801

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    int-to-float v11, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    int-to-float v14, v4

    sget-object v15, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags2:I

    :goto_4
    return v27

    .end local v8    # "a":Landroid/view/animation/Animation;
    .end local v9    # "scalingRequired":Z
    .end local v19    # "childHasIdentityMatrix":Z
    .end local v20    # "concatMatrix":Z
    .end local v22    # "drawingWithRenderNode":Z
    .end local v27    # "more":Z
    .end local v29    # "parentFlags":I
    .end local v39    # "transformToApply":Landroid/view/animation/Transformation;
    :cond_3
    const/16 v22, 0x0

    goto/16 :goto_0

    .restart local v19    # "childHasIdentityMatrix":Z
    .restart local v20    # "concatMatrix":Z
    .restart local v22    # "drawingWithRenderNode":Z
    .restart local v27    # "more":Z
    .restart local v29    # "parentFlags":I
    .restart local v39    # "transformToApply":Landroid/view/animation/Transformation;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .restart local v8    # "a":Landroid/view/animation/Animation;
    .restart local v9    # "scalingRequired":Z
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v4, v4, -0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags3:I

    :cond_6
    if-nez v22, :cond_2

    move/from16 v0, v29

    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v35

    .local v35, "t":Landroid/view/animation/Transformation;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v24

    .local v24, "hasTransform":Z
    if-eqz v24, :cond_2

    invoke-virtual/range {v35 .. v35}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v40

    .local v40, "transformType":I
    if-eqz v40, :cond_7

    move-object/from16 v39, v35

    :goto_5
    and-int/lit8 v4, v40, 0x2

    if-eqz v4, :cond_8

    const/16 v20, 0x1

    :goto_6
    goto/16 :goto_2

    :cond_7
    const/16 v39, 0x0

    goto :goto_5

    :cond_8
    const/16 v20, 0x0

    goto :goto_6

    .end local v24    # "hasTransform":Z
    .end local v35    # "t":Landroid/view/animation/Transformation;
    .end local v40    # "transformType":I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags2:I

    const v5, -0x10000001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags2:I

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/View;->mRecreateDisplayList:Z

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    :cond_b
    const/16 v30, 0x0

    .local v30, "renderNode":Landroid/view/RenderNode;
    const/16 v17, 0x0

    .local v17, "cache":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayerType()I

    move-result v26

    .local v26, "layerType":I
    const/4 v4, 0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_c

    if-nez v22, :cond_d

    if-eqz v26, :cond_d

    :cond_c
    const/16 v26, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->buildDrawingCache(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v17

    :cond_d
    if-eqz v22, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/RenderNode;->isValid()Z

    move-result v4

    if-nez v4, :cond_e

    const/16 v30, 0x0

    const/16 v22, 0x0

    :cond_e
    const/16 v33, 0x0

    .local v33, "sx":I
    const/16 v34, 0x0

    .local v34, "sy":I
    if-nez v22, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v34, v0

    :cond_f
    if-eqz v17, :cond_23

    if-nez v22, :cond_23

    const/16 v21, 0x1

    .local v21, "drawingWithDrawingCache":Z
    :goto_8
    if-nez v17, :cond_24

    if-nez v22, :cond_24

    const/16 v28, 0x1

    .local v28, "offsetForScroll":Z
    :goto_9
    const/16 v31, -0x1

    .local v31, "restoreTo":I
    if-eqz v22, :cond_10

    if-eqz v39, :cond_11

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v31

    :cond_11
    if-eqz v28, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int v4, v4, v33

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mTop:I

    sub-int v5, v5, v34

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_12
    :goto_a
    if-eqz v22, :cond_28

    const/high16 v16, 0x3f800000    # 1.0f

    .local v16, "alpha":F
    :goto_b
    if-nez v39, :cond_13

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v16, v4

    if-ltz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2d

    :cond_13
    if-nez v39, :cond_14

    if-nez v19, :cond_18

    :cond_14
    const/16 v36, 0x0

    .local v36, "transX":I
    const/16 v37, 0x0

    .local v37, "transY":I
    if-eqz v28, :cond_15

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v36, v0

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v37, v0

    :cond_15
    if-eqz v39, :cond_17

    if-eqz v20, :cond_16

    if-eqz v22, :cond_29

    invoke-virtual/range {v39 .. v39}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    :goto_c
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_16
    invoke-virtual/range {v39 .. v39}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v38

    .local v38, "transformAlpha":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v38, v4

    if-gez v4, :cond_17

    mul-float v16, v16, v38

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .end local v38    # "transformAlpha":F
    :cond_17
    if-nez v19, :cond_18

    if-nez v22, :cond_18

    move/from16 v0, v36

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v37

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    move/from16 v0, v36

    int-to-float v4, v0

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .end local v36    # "transX":I
    .end local v37    # "transY":I
    :cond_18
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v16, v4

    if-ltz v4, :cond_19

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1a

    :cond_19
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v16, v4

    if-gez v4, :cond_2a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags3:I

    :goto_d
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    if-nez v21, :cond_1a

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v16

    float-to-int v15, v4

    .local v15, "multipliedAlpha":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v4

    if-nez v4, :cond_2c

    if-eqz v22, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float v4, v4, v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/view/RenderNode;->setAlpha(F)Z

    .end local v15    # "multipliedAlpha":I
    :cond_1a
    :goto_e
    if-nez v22, :cond_1c

    and-int/lit8 v4, v29, 0x1

    if-eqz v4, :cond_1b

    if-nez v17, :cond_1b

    if-eqz v28, :cond_2e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v4, v4, v33

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v5, v5, v34

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1b
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_1c
    if-nez v21, :cond_33

    if-eqz v22, :cond_31

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v5, -0x600001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v4, p1

    check-cast v4, Landroid/view/DisplayListCanvas;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    :cond_1d
    :goto_10
    if-ltz v31, :cond_1e

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1e
    if-eqz v8, :cond_20

    if-nez v27, :cond_20

    if-nez v23, :cond_1f

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v4

    if-nez v4, :cond_1f

    const/16 v4, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->onSetAlpha(I)Z

    :cond_1f
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    :cond_20
    if-eqz v27, :cond_21

    if-eqz v23, :cond_21

    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    const/high16 v5, 0x40000

    if-ne v4, v5, :cond_21

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Z)V

    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/View;->mRecreateDisplayList:Z

    goto/16 :goto_4

    .end local v16    # "alpha":F
    .end local v17    # "cache":Landroid/graphics/Bitmap;
    .end local v21    # "drawingWithDrawingCache":Z
    .end local v26    # "layerType":I
    .end local v28    # "offsetForScroll":Z
    .end local v30    # "renderNode":Landroid/view/RenderNode;
    .end local v31    # "restoreTo":I
    .end local v33    # "sx":I
    .end local v34    # "sy":I
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_7

    .restart local v17    # "cache":Landroid/graphics/Bitmap;
    .restart local v26    # "layerType":I
    .restart local v30    # "renderNode":Landroid/view/RenderNode;
    .restart local v33    # "sx":I
    .restart local v34    # "sy":I
    :cond_23
    const/16 v21, 0x0

    goto/16 :goto_8

    .restart local v21    # "drawingWithDrawingCache":Z
    :cond_24
    const/16 v28, 0x0

    goto/16 :goto_9

    .restart local v28    # "offsetForScroll":Z
    .restart local v31    # "restoreTo":I
    :cond_25
    if-nez v22, :cond_26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_26
    if-eqz v9, :cond_12

    if-eqz v22, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v31

    :cond_27
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v32, v4, v5

    .local v32, "scale":F
    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_a

    .end local v32    # "scale":F
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v5

    mul-float v16, v4, v5

    goto/16 :goto_b

    .restart local v16    # "alpha":F
    .restart local v36    # "transX":I
    .restart local v37    # "transY":I
    :cond_29
    move/from16 v0, v36

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v37

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {v39 .. v39}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    move/from16 v0, v36

    int-to-float v4, v0

    move/from16 v0, v37

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_c

    .end local v36    # "transX":I
    .end local v37    # "transY":I
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v4, v4, -0x3

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags3:I

    goto/16 :goto_d

    .restart local v15    # "multipliedAlpha":I
    :cond_2b
    if-nez v26, :cond_1a

    move/from16 v0, v33

    int-to-float v11, v0

    move/from16 v0, v34

    int-to-float v12, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int v4, v4, v33

    int-to-float v13, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v4, v4, v34

    int-to-float v14, v4

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    goto/16 :goto_e

    :cond_2c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x40000

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_e

    .end local v15    # "multipliedAlpha":I
    :cond_2d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    const/high16 v5, 0x40000

    if-ne v4, v5, :cond_1a

    const/16 v4, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->onSetAlpha(I)Z

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v5, -0x40001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_e

    :cond_2e
    if-eqz v9, :cond_2f

    if-nez v17, :cond_30

    :cond_2f
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_f

    :cond_30
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_f

    :cond_31
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v5, -0x600001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_10

    :cond_32
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_10

    :cond_33
    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v5, -0x600001

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    if-nez v26, :cond_35

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    .local v18, "cachePaint":Landroid/graphics/Paint;
    if-nez v18, :cond_34

    new-instance v18, Landroid/graphics/Paint;

    .end local v18    # "cachePaint":Landroid/graphics/Paint;
    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .restart local v18    # "cachePaint":Landroid/graphics/Paint;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    :cond_34
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v16

    float-to-int v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_10

    .end local v18    # "cachePaint":Landroid/graphics/Paint;
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v25

    .local v25, "layerPaintAlpha":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move/from16 v0, v25

    int-to-float v5, v0

    mul-float v5, v5, v16

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_10
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchDrawableHotspotChanged(FF)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    .local v3, "state":[I
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v4, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "fg":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v4, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-object v2, v4, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .local v2, "scrollBar":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v2    # "scrollBar":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v4, p0, Landroid/view/View;->mStateListAnimator:Landroid/animation/StateListAnimator;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/View;->mStateListAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {v4, v3}, Landroid/animation/StateListAnimator;->setState([I)V

    :cond_3
    return-void

    .end local v1    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public encode(Landroid/view/ViewHierarchyEncoder;)V
    .locals 0
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 9
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Landroid/view/View;->mID:I

    invoke-static {v6, v7}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v4

    .local v4, "resolveId":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v6, "id"

    check-cast v4, Ljava/lang/String;

    .end local v4    # "resolveId":Ljava/lang/Object;
    invoke-virtual {p1, v6, v4}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v7, "misc:transformation.alpha"

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v6, v6, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_1
    invoke-virtual {p1, v7, v6}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "misc:transitionName"

    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "layout:left"

    iget v7, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "layout:right"

    iget v7, p0, Landroid/view/View;->mRight:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "layout:top"

    iget v7, p0, Landroid/view/View;->mTop:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "layout:bottom"

    iget v7, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "layout:width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "layout:height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "layout:layoutDirection"

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "layout:layoutRtl"

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "layout:hasTransientState"

    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "layout:baseline"

    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    const-string v6, "layoutParams"

    invoke-virtual {p1, v6}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup$LayoutParams;->encode(Landroid/view/ViewHierarchyEncoder;)V

    :cond_0
    const-string v6, "scrolling:scrollX"

    iget v7, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "scrolling:scrollY"

    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "padding:paddingLeft"

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "padding:paddingRight"

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "padding:paddingTop"

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "padding:paddingBottom"

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "padding:userPaddingRight"

    iget v7, p0, Landroid/view/View;->mUserPaddingRight:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "padding:userPaddingLeft"

    iget v7, p0, Landroid/view/View;->mUserPaddingLeft:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "padding:userPaddingBottom"

    iget v7, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "padding:userPaddingStart"

    iget v7, p0, Landroid/view/View;->mUserPaddingStart:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "padding:userPaddingEnd"

    iget v7, p0, Landroid/view/View;->mUserPaddingEnd:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "measurement:minHeight"

    iget v7, p0, Landroid/view/View;->mMinHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "measurement:minWidth"

    iget v7, p0, Landroid/view/View;->mMinWidth:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "measurement:measuredWidth"

    iget v7, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "measurement:measuredHeight"

    iget v7, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "drawing:elevation"

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:translationX"

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:translationY"

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:translationZ"

    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:rotation"

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:rotationX"

    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:rotationY"

    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:scaleX"

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:scaleY"

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:pivotX"

    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:pivotY"

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:opaque"

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "drawing:alpha"

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:transitionAlpha"

    invoke-virtual {p0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v6, "drawing:shadow"

    invoke-virtual {p0}, Landroid/view/View;->hasShadow()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "drawing:solidColor"

    invoke-virtual {p0}, Landroid/view/View;->getSolidColor()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "drawing:layerType"

    iget v7, p0, Landroid/view/View;->mLayerType:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "drawing:willNotDraw"

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "drawing:hardwareAccelerated"

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "drawing:willNotCacheDrawing"

    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "drawing:drawingCacheEnabled"

    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "drawing:overlappingRendering"

    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "focus:hasFocus"

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "focus:isFocused"

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "focus:isFocusable"

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "focus:isFocusableInTouchMode"

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:clickable"

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:pressed"

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:selected"

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:touchMode"

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:hovered"

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:activated"

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:visibility"

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "misc:fitsSystemWindows"

    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:filterTouchesWhenObscured"

    invoke-virtual {p0}, Landroid/view/View;->getFilterTouchesWhenObscured()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:enabled"

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:soundEffectsEnabled"

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string v6, "misc:hapticFeedbackEnabled"

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .local v5, "theme":Landroid/content/res/Resources$Theme;
    if-eqz v5, :cond_1

    const-string v6, "theme"

    invoke-virtual {p1, v6}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/res/Resources$Theme;->encode(Landroid/view/ViewHierarchyEncoder;)V

    :cond_1
    iget-object v6, p0, Landroid/view/View;->mAttributes:[Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/View;->mAttributes:[Ljava/lang/String;

    array-length v3, v6

    .local v3, "n":I
    :goto_2
    const-string v6, "meta:__attrCount__"

    div-int/lit8 v7, v3, 0x2

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "meta:__attr__"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/View;->mAttributes:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/view/View;->mAttributes:[Ljava/lang/String;

    add-int/lit8 v8, v1, 0x1

    aget-object v7, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .end local v1    # "i":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "n":I
    .end local v5    # "theme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "resolveId":Ljava/lang/Object;
    :cond_2
    const-string v6, "id"

    iget v7, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v4    # "resolveId":Ljava/lang/Object;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "theme":Landroid/content/res/Resources$Theme;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .restart local v1    # "i":I
    .restart local v3    # "n":I
    :cond_5
    const-string v6, "misc:scrollBarStyle"

    invoke-virtual {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "text:textDirection"

    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "text:textAlignment"

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "contentDescription":Ljava/lang/CharSequence;
    const-string v7, "accessibility:contentDescription"

    if-nez v0, :cond_6

    const-string v6, ""

    :goto_4
    invoke-virtual {p1, v7, v6}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "accessibility:labelFor"

    invoke-virtual {p0}, Landroid/view/View;->getLabelFor()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v6, "accessibility:importantForAccessibility"

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method ensureTransformationInfo()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$TransformationInfo;

    invoke-direct {v0}, Landroid/view/View$TransformationInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    :cond_0
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findNamedViews(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "namedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .local v0, "transitionName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "transitionName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :sswitch_0
    iget v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-eq v2, v3, :cond_0

    iget v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    iget v2, p0, Landroid/view/View;->mNextFocusRightId:I

    if-eq v2, v3, :cond_0

    iget v1, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    iget v2, p0, Landroid/view/View;->mNextFocusUpId:I

    if-eq v2, v3, :cond_0

    iget v1, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    iget v2, p0, Landroid/view/View;->mNextFocusDownId:I

    if-eq v2, v3, :cond_0

    iget v1, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    iget v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    if-eq v2, v3, :cond_0

    iget v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :sswitch_5
    iget v2, p0, Landroid/view/View;->mID:I

    if-eq v2, v3, :cond_0

    iget v0, p0, Landroid/view/View;->mID:I

    .local v0, "id":I
    new-instance v1, Landroid/view/View$1;

    invoke-direct {v1, p0, v0}, Landroid/view/View$1;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method final findViewByAccessibilityId(I)Landroid/view/View;
    .locals 3
    .param p1, "accessibilityId"    # I

    .prologue
    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .end local v0    # "view":Landroid/view/View;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 4
    .param p1, "start"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "childToSkip":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    if-ne p1, p0, :cond_1

    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v2

    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move-object v0, p1

    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Landroid/view/View;
    :goto_0
    return-object p0

    .restart local p0    # "this":Landroid/view/View;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .local v1, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "contentDescriptionLowerCase":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    new-instance v0, Landroid/view/WindowInsets;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Landroid/view/View;->mPrivateFlags3:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Landroid/view/View;->mPrivateFlags3:I

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/view/View;->fitSystemWindowsInt(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public fitsSystemWindows()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clear()V

    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x2

    const/4 v9, 0x1

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .local v8, "pflags":I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_1

    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .local v7, "location":[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .end local v7    # "location":[I
    .end local v8    # "pflags":I
    :cond_0
    :goto_0
    return v9

    .restart local v8    # "pflags":I
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public getAccessibilityLiveRegion()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x1800000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    return v0
.end method

.method public getAccessibilityTraversalAfter()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mAccessibilityTraversalAfterId:I

    return v0
.end method

.method public getAccessibilityTraversalBefore()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mAccessibilityTraversalBeforeId:I

    return v0
.end method

.method public getAccessibilityViewId()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroid/view/View;->sNextAccessibilityViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/view/View;->sNextAccessibilityViewId:I

    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    :cond_0
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    return v0
.end method

.method public getAccessibilityWindowId()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .local v1, "appWindowToken":Landroid/os/IBinder;
    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .end local v1    # "appWindowToken":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    iget-object v0, v0, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    iget-object v0, v0, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 9
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .local v2, "position":Landroid/graphics/RectF;
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    iget v4, p0, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .local v1, "parentView":Landroid/view/View;
    iget v4, v1, Landroid/view/View;->mScrollX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mScrollY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    if-eqz p2, :cond_2

    iget v4, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_3
    iget v4, v1, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .end local v1    # "parentView":Landroid/view/View;
    :cond_4
    instance-of v4, v0, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_5

    move-object v3, v0

    check-cast v3, Landroid/view/ViewRootImpl;

    .local v3, "viewRootImpl":Landroid/view/ViewRootImpl;
    iget v4, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v7, v4}, Landroid/graphics/RectF;->offset(FF)V

    .end local v3    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_5
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v8

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v8

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public getCameraDistance()F
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v1

    .local v0, "dpi":F
    iget-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1}, Landroid/view/RenderNode;->getCameraDistance()F

    move-result v1

    mul-float/2addr v1, v0

    neg-float v1, v1

    return v1
.end method

.method public getClipBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getClipToOutline()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getClipToOutline()Z

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDrawableState()[I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_0
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "autoScale"    # Z

    .prologue
    const/high16 v2, 0x20000

    const v1, 0x8000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getDrawingCacheBackgroundColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x180000

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getDrawingTime()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getElevation()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getElevation()F

    move-result v0

    return v0
.end method

.method protected getFadeHeight(Z)I
    .locals 3
    .param p1, "offsetRequired"    # Z

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .local v0, "padding":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method protected getFadeTop(Z)I
    .locals 2
    .param p1, "offsetRequired"    # Z

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .local v0, "top":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getFilterTouchesWhenObscured()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFitsSystemWindows()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForegroundGravity()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mGravity:I
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2200(Landroid/view/View$ForegroundInfo;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x800033

    goto :goto_0
.end method

.method public getForegroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForegroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 5
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "globalOffset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .local v1, "width":I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .local v0, "height":I
    if-lez v1, :cond_2

    if-lez v0, :cond_2

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_0

    iget v3, p0, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Point;->set(II)V

    :cond_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHardwareRenderer()Landroid/view/HardwareRenderer;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeight()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .local v0, "tmpRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mTop:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .local v2, "size":I
    if-gtz v2, :cond_0

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_0
    return v2
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getImportantForAccessibility()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "auto"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "yes"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "no"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "noHideDescendants"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x700000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public final getInverseMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$2002(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$2000(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->getInverseMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3
    .param p1, "granularity"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object v0

    .local v0, "iterator":Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "iterator":Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object v0

    .local v0, "iterator":Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "iterator":Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object v0

    .local v0, "iterator":Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public getKeepScreenOn()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLabelFor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mLabelForId:I

    return v0
.end method

.method public getLayerType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mLayerType:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 4
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "RESOLVED_DIRECTION_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RESOLVED_DIRECTION_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .local v0, "targetSdkVersion":I
    const/16 v2, 0x11

    if-ge v0, v2, :cond_1

    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method getListenerInfo()Landroid/view/View$ListenerInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/View$ListenerInfo;

    invoke-direct {v0}, Landroid/view/View$ListenerInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    goto :goto_0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .local v0, "offset":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const/4 v1, 0x1

    :goto_1
    return v1

    .end local v0    # "offset":Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    .restart local v0    # "offset":Landroid/graphics/Point;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLocationInWindow([I)V
    .locals 9
    .param p1, "location"    # [I

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_2

    aput v6, p1, v7

    aput v6, p1, v6

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .local v0, "position":[F
    const/4 v4, 0x0

    aput v4, v0, v7

    aput v4, v0, v6

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_3
    aget v4, v0, v6

    iget v5, p0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    aget v4, v0, v7

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v2, "viewParent":Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_5

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .local v1, "view":Landroid/view/View;
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_4
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .end local v1    # "view":Landroid/view/View;
    :cond_5
    instance-of v4, v2, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_6

    move-object v3, v2

    check-cast v3, Landroid/view/ViewRootImpl;

    .local v3, "vr":Landroid/view/ViewRootImpl;
    aget v4, v0, v7

    iget v5, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .end local v3    # "vr":Landroid/view/ViewRootImpl;
    :cond_6
    aget v4, v0, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v6

    aget v4, v0, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v7

    goto :goto_0
.end method

.method public getLocationOnScreen([I)V
    .locals 4
    .param p1, "location"    # [I

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "info":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    :cond_0
    return-void
.end method

.method public getLocationOnScreen()[I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "x"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "y"
            .end subannotation
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    # getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1900(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public final getMeasuredHeight()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = -0x1000000
                name = "MEASURED_STATE_TOO_SMALL"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000000
                mask = -0x1000000
                name = "MEASURED_STATE_TOO_SMALL"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->computeOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method

.method public getOutsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outOutsetRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public getOverScrollMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getOverlay()Landroid/view/ViewOverlay;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewOverlay;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ViewOverlay;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    .local v0, "parentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0    # "parentView":Landroid/view/View;
    :goto_0
    return-object v1

    .restart local v0    # "parentView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .end local v0    # "parentView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPivotX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getPivotX()F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getPivotY()F

    move-result v0

    return v0
.end method

.method public getRawLayoutDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRawTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, 0xe000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xd

    return v0
.end method

.method public getRawTextDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "FIRST_STRONG_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FIRST_STRONG_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c0

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p0

    .local v0, "parent":Landroid/view/View;
    :goto_1
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getRootWindowInsets()Landroid/view/WindowInsets;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotation()F

    move-result v0

    return v0
.end method

.method public getRotationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotationX()F

    move-result v0

    return v0
.end method

.method public getRotationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getRotationY()F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getScrollBarDefaultDelayBeforeFade()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    goto :goto_0
.end method

.method public getScrollBarFadeDuration()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    goto :goto_0
.end method

.method public getScrollBarSize()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    goto :goto_0
.end method

.method public getScrollBarStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1000000
                to = "INSIDE_INSET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2000000
                to = "OUTSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3000000
                to = "OUTSIDE_INSET"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x3000000

    and-int/2addr v0, v1

    return v0
.end method

.method getScrollIndicatorBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getScrollIndicators()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit16 v0, v0, 0x3f00

    ushr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getScrollX()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getStateListAnimator()Landroid/animation/StateListAnimator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mStateListAnimator:Landroid/animation/StateListAnimator;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0xe0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getTextDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "FIRST_STRONG_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FIRST_STRONG_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c00

    shr-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final getTop()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getTransitionAlpha()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTransitionName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mTransitionName:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public getTranslationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public getTranslationZ()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->getTranslationZ()F

    move-result v0

    return v0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .end local v0    # "cache":Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getVerticalScrollFactor()F
    .locals 4

    .prologue
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    return v1
.end method

.method public getVerticalScrollbarPosition()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .local v0, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .local v1, "scrollBar":Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .local v2, "size":I
    if-gtz v2, :cond_0

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .end local v1    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v2    # "size":I
    :cond_0
    return v2
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method public getWindowId()Landroid/view/WindowId;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Landroid/view/WindowId;

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mIWindowId:Landroid/view/IWindowId;

    invoke-direct {v1, v2}, Landroid/view/WindowId;-><init>(Landroid/view/IWindowId;)V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowId:Landroid/view/WindowId;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowSystemUiVisibility()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .local v2, "insets":Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .end local v2    # "insets":Landroid/graphics/Rect;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getX()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getZ()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .locals 1
    .param p1, "off"    # Z

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    return-void
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "oldFocus":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .end local v0    # "oldFocus":Landroid/view/View;
    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "g":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldBlockFocusForTouchscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_0
    :goto_1
    return v2

    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "p":Landroid/view/ViewParent;
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_2
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method final hasIdentityMatrix()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnClickListeners()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasOpaqueScrollbars()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public hasShadow()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->hasShadow()Z

    move-result v0

    return v0
.end method

.method public hasTransientState()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/high16 v1, -0x80000000

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public includeForAccessibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "arr":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeFadingEdgeInternal(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected initializeFadingEdgeInternal(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x19

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "arr":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V
    .locals 10
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .local v3, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_0

    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, p0}, Landroid/widget/ScrollBarDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ScrollBarDrawable;->setState([I)Z

    :cond_0
    const/16 v6, 0x2f

    invoke-virtual {p1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .local v1, "fadeScrollbars":Z
    if-nez v1, :cond_1

    iput v8, v3, Landroid/view/View$ScrollabilityCache;->state:I

    :cond_1
    iput-boolean v1, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    const/16 v6, 0x2d

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    const/16 v6, 0x2e

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v6

    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v5}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v6, 0x6

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .local v0, "alwaysDraw":Z
    if-eqz v0, :cond_3

    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    :cond_3
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v5}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 v6, 0x7

    invoke-virtual {p1, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    .local v2, "layoutDirection":I
    if-eqz v5, :cond_6

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    return-void
.end method

.method protected internalSetPadding(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v5, 0x1000000

    const/4 v3, 0x0

    iput p1, p0, Landroid/view/View;->mUserPaddingLeft:I

    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    .local v2, "viewFlags":I
    const/4 v0, 0x0

    .local v0, "changed":Z
    and-int/lit16 v4, v2, 0x300

    if-eqz v4, :cond_1

    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_0

    and-int v4, v2, v5

    if-nez v4, :cond_7

    move v1, v3

    .local v1, "offset":I
    :goto_0
    iget v4, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v4, :pswitch_data_0

    .end local v1    # "offset":I
    :cond_0
    :goto_1
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_1

    and-int v4, v2, v5

    if-nez v4, :cond_9

    :goto_2
    add-int/2addr p4, v3

    :cond_1
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v3, p1, :cond_2

    const/4 v0, 0x1

    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    :cond_2
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v3, p2, :cond_3

    const/4 v0, 0x1

    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    :cond_3
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v3, p3, :cond_4

    const/4 v0, 0x1

    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    :cond_4
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v3, p4, :cond_5

    const/4 v0, 0x1

    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v1

    goto :goto_0

    .restart local v1    # "offset":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/2addr p1, v1

    goto :goto_1

    :cond_8
    add-int/2addr p3, v1

    goto :goto_1

    :pswitch_1
    add-int/2addr p3, v1

    goto :goto_1

    :pswitch_2
    add-int/2addr p1, v1

    goto :goto_1

    .end local v1    # "offset":I
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invalidate()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    iget v7, p0, Landroid/view/View;->mScrollX:I

    .local v7, "scrollX":I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    .local v8, "scrollY":I
    sub-int v1, p1, v7

    sub-int v2, p2, v8

    sub-int v3, p3, v7

    sub-int v4, p4, v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->invalidateInternal(IIIIZZ)V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    iget v7, p0, Landroid/view/View;->mScrollX:I

    .local v7, "scrollX":I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    .local v8, "scrollY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v7

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, v0, v8

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v7

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v8

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->invalidateInternal(IIIIZZ)V

    return-void
.end method

.method invalidate(Z)V
    .locals 7
    .param p1, "invalidateCache"    # Z

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v2

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v2

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->invalidateInternal(IIIIZZ)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "dirty":Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .local v1, "scrollX":I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    invoke-direct {p0}, Landroid/view/View;->rebuildOutline()V

    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    return-void
.end method

.method invalidateInheritedLayoutMode(I)V
    .locals 0
    .param p1, "layoutModeOfRoot"    # I

    .prologue
    return-void
.end method

.method invalidateInternal(IIIIZZ)V
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I
    .param p5, "invalidateCache"    # Z
    .param p6, "fullInvalidate"    # Z

    .prologue
    const v7, 0x8000

    const/high16 v6, -0x80000000

    iget-object v4, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/GhostView;->invalidate(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x30

    if-eq v4, v5, :cond_3

    if-eqz p5, :cond_2

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v7

    if-eq v4, v7, :cond_3

    :cond_2
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v4

    iget-boolean v5, p0, Landroid/view/View;->mLastIsOpaque:Z

    if-eq v4, v5, :cond_0

    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/View;->mLastIsOpaque:Z

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_4
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    if-eqz p5, :cond_5

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v4, v6

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const v5, -0x8001

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_5
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "ai":Landroid/view/View$AttachInfo;
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v2, "p":Landroid/view/ViewParent;
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-ge p1, p3, :cond_6

    if-ge p2, p4, :cond_6

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .local v1, "damage":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-interface {v2, p0, v1}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .end local v1    # "damage":Landroid/graphics/Rect;
    :cond_6
    iget-object v4, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Landroid/view/View;->getProjectionReceiver()Landroid/view/View;

    move-result-object v3

    .local v3, "receiver":Landroid/view/View;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->damageInParent()V

    .end local v3    # "receiver":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    invoke-direct {p0}, Landroid/view/View;->damageShadowReceiver()V

    goto/16 :goto_0
.end method

.method public invalidateOutline()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/View;->rebuildOutline()V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    return-void
.end method

.method protected invalidateParentCaches()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    :cond_0
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method protected invalidateParentIfNeededAndWasQuickRejected()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_0
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .locals 2
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/view/View;->damageShadowReceiver()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->damageInParent()V

    goto :goto_0
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAccessibilityFocusedViewOrHost()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isActionableForAccessibility()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivated()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAssistBlocked()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContextClickable()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x600000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawingCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicateParentStateEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusableInTouchMode()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x40000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForegroundInsidePadding()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mInsidePadding:Z
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$100(Landroid/view/View$ForegroundInfo;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x10000000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHovered()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImportantForAccessibility()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x700000

    and-int/2addr v2, v5

    shr-int/lit8 v0, v2, 0x14

    .local v0, "mode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ne v0, v6, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v1, "parent":Landroid/view/ViewParent;
    :goto_1
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eq v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Landroid/view/View;->hasListenersForAccessibility()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isInLayout()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isInTouchMode()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isLaidOut()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutDirectionInherited()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x1800000

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative()Z
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPaddingResolved()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootNamespace()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveFromParentEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollContainer()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollbarFadingEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    .local v0, "current":Landroid/view/View;
    :cond_0
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x8000000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextAlignmentInherited()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextAlignmentResolved()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextDirectionInherited()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextDirectionResolved()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected isVisibleToUser()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p0

    :goto_1
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTransitionAlpha()F

    move-result v5

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v0, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v0, "current":Landroid/view/ViewParent;
    goto :goto_1

    .end local v0    # "current":Landroid/view/ViewParent;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v5, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .local v3, "visibleRect":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v5, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .local v1, "offset":Landroid/graphics/Point;
    invoke-virtual {p0, v3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_3

    iget v4, v1, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mStateListAnimator:Landroid/animation/StateListAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mStateListAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {v0}, Landroid/animation/StateListAnimator;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_2
    return-void
.end method

.method public layout(IIII)V
    .locals 17
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mOldWidthMeasureSpec:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mOldHeightMeasureSpec:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->onMeasure(II)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x9

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags3:I

    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mLeft:I

    .local v9, "oldL":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mTop:I

    .local v10, "oldT":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mBottom:I

    .local v12, "oldB":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mRight:I

    .local v11, "oldR":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p4}, Landroid/view/View;->setOpticalFrame(IIII)Z

    move-result v2

    .local v2, "changed":Z
    :goto_0
    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_3

    :cond_1
    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/View;->onLayout(ZIIII)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x2001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v14, "li":Landroid/view/View$ListenerInfo;
    if-eqz v14, :cond_3

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .local v15, "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, "numListeners":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-interface/range {v3 .. v12}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v2    # "changed":Z
    .end local v13    # "i":I
    .end local v14    # "li":Landroid/view/View$ListenerInfo;
    .end local v15    # "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    .end local v16    # "numListeners":I
    :cond_2
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    goto :goto_0

    .restart local v2    # "changed":Z
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x1001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags3:I

    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 1

    .prologue
    const/16 v0, 0x800

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public final measure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static/range {p0 .. p0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v8

    .local v8, "optical":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v9}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v9

    if-eq v8, v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v3

    .local v3, "insets":Landroid/graphics/Insets;
    iget v9, v3, Landroid/graphics/Insets;->left:I

    iget v12, v3, Landroid/graphics/Insets;->right:I

    add-int v7, v9, v12

    .local v7, "oWidth":I
    iget v9, v3, Landroid/graphics/Insets;->top:I

    iget v12, v3, Landroid/graphics/Insets;->bottom:I

    add-int v6, v9, v12

    .local v6, "oHeight":I
    if-eqz v8, :cond_0

    neg-int v7, v7

    .end local v7    # "oWidth":I
    :cond_0
    move/from16 v0, p1

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p1

    if-eqz v8, :cond_1

    neg-int v6, v6

    .end local v6    # "oHeight":I
    :cond_1
    move/from16 v0, p2

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->adjust(II)I

    move-result p2

    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_2
    move/from16 v0, p1

    int-to-long v12, v0

    const/16 v9, 0x20

    shl-long/2addr v12, v9

    move/from16 v0, p2

    int-to-long v14, v0

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    or-long v4, v12, v14

    .local v4, "key":J
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-nez v9, :cond_3

    new-instance v9, Landroid/util/LongSparseLongArray;

    const/4 v12, 0x2

    invoke-direct {v9, v12}, Landroid/util/LongSparseLongArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x1000

    const/16 v12, 0x1000

    if-eq v9, v12, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mOldWidthMeasureSpec:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mOldHeightMeasureSpec:I

    move/from16 v0, p2

    if-eq v0, v9, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, -0x801

    move-object/from16 v0, p0

    iput v9, v0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x1000

    const/16 v12, 0x1000

    if-ne v9, v12, :cond_6

    const/4 v2, -0x1

    .local v2, "cacheIndex":I
    :goto_0
    if-ltz v2, :cond_5

    sget-boolean v9, Landroid/view/View;->sIgnoreMeasureCache:Z

    if-eqz v9, :cond_7

    :cond_5
    invoke-virtual/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v9, v9, -0x9

    move-object/from16 v0, p0

    iput v9, v0, Landroid/view/View;->mPrivateFlags3:I

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x800

    const/16 v12, 0x800

    if-eq v9, v12, :cond_8

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "View with id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#onMeasure() did not set the"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " measured dimension by calling"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " setMeasuredDimension()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v2    # "cacheIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v9, v4, v5}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v2

    goto :goto_0

    .restart local v2    # "cacheIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v9, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v10

    .local v10, "value":J
    const/16 v9, 0x20

    shr-long v12, v10, v9

    long-to-int v9, v12

    long-to-int v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Landroid/view/View;->setMeasuredDimensionRaw(II)V

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v9, v9, 0x8

    move-object/from16 v0, p0

    iput v9, v0, Landroid/view/View;->mPrivateFlags3:I

    goto :goto_1

    .end local v10    # "value":J
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v9, v9, 0x2000

    move-object/from16 v0, p0

    iput v9, v0, Landroid/view/View;->mPrivateFlags:I

    .end local v2    # "cacheIndex":I
    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mOldWidthMeasureSpec:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mOldHeightMeasureSpec:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mMeasuredWidth:I

    int-to-long v12, v12

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mMeasuredHeight:I

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    or-long/2addr v12, v14

    invoke-virtual {v9, v4, v5, v12, v13}, Landroid/util/LongSparseLongArray;->put(JJ)V

    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "ai":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    :cond_1
    return-void
.end method

.method notifyGlobalFocusCleared(Landroid/view/View;)V
    .locals 2
    .param p1, "oldFocus"    # Landroid/view/View;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChangedIfNeeded()V
    .locals 4

    .prologue
    const/high16 v2, 0x8000000

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v2, 0x1

    invoke-interface {v1, p0, p0, v2}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyViewAccessibilityStateChangedIfNeeded(I)V
    .locals 2
    .param p1, "changeType"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mSendViewStateChangedAccessibilityEvent:Landroid/view/View$SendViewStateChangedAccessibilityEvent;

    invoke-virtual {v0, p1}, Landroid/view/View$SendViewStateChangedAccessibilityEvent;->runOrPost(I)V

    goto :goto_0
.end method

.method public offsetLeftAndRight(I)V
    .locals 9
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    .local v0, "matrixIsIdentity":Z
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v8, v8}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    :cond_0
    :goto_0
    iget v5, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v5, p1

    iput v5, p0, Landroid/view/View;->mLeft:I

    iget v5, p0, Landroid/view/View;->mRight:I

    add-int/2addr v5, p1

    iput v5, p0, Landroid/view/View;->mRight:I

    iget-object v5, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->offsetLeftAndRight(I)Z

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v8, v8}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .end local v0    # "matrixIsIdentity":Z
    :cond_1
    return-void

    .restart local v0    # "matrixIsIdentity":Z
    :cond_2
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_0

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v5, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_3

    iget v5, p0, Landroid/view/View;->mLeft:I

    add-int v2, v5, p1

    .local v2, "minLeft":I
    iget v1, p0, Landroid/view/View;->mRight:I

    .local v1, "maxRight":I
    :goto_2
    sub-int v5, v1, v2

    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    :cond_3
    iget v2, p0, Landroid/view/View;->mLeft:I

    .restart local v2    # "minLeft":I
    iget v5, p0, Landroid/view/View;->mRight:I

    add-int v1, v5, p1

    .restart local v1    # "maxRight":I
    goto :goto_2

    .end local v1    # "maxRight":I
    .end local v2    # "minLeft":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p0, v8, v8}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    const/4 v5, 0x1

    invoke-virtual {p0, v8, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_1
.end method

.method public offsetTopAndBottom(I)V
    .locals 9
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    .local v0, "matrixIsIdentity":Z
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v8, v8}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    :cond_0
    :goto_0
    iget v6, p0, Landroid/view/View;->mTop:I

    add-int/2addr v6, p1

    iput v6, p0, Landroid/view/View;->mTop:I

    iget v6, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v6, p1

    iput v6, p0, Landroid/view/View;->mBottom:I

    iget-object v6, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v6, p1}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v8, v8}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .end local v0    # "matrixIsIdentity":Z
    :cond_1
    return-void

    .restart local v0    # "matrixIsIdentity":Z
    :cond_2
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v3, "p":Landroid/view/ViewParent;
    if-eqz v3, :cond_0

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v6, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .local v4, "r":Landroid/graphics/Rect;
    if-gez p1, :cond_3

    iget v6, p0, Landroid/view/View;->mTop:I

    add-int v2, v6, p1

    .local v2, "minTop":I
    iget v1, p0, Landroid/view/View;->mBottom:I

    .local v1, "maxBottom":I
    move v5, p1

    .local v5, "yLoc":I
    :goto_2
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    sub-int v7, v1, v2

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v5    # "yLoc":I
    :cond_3
    iget v2, p0, Landroid/view/View;->mTop:I

    .restart local v2    # "minTop":I
    iget v6, p0, Landroid/view/View;->mBottom:I

    add-int v1, v6, p1

    .restart local v1    # "maxBottom":I
    const/4 v5, 0x0

    .restart local v5    # "yLoc":I
    goto :goto_2

    .end local v1    # "maxBottom":I
    .end local v2    # "minTop":I
    .end local v3    # "p":Landroid/view/ViewParent;
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "yLoc":I
    :cond_4
    invoke-virtual {p0, v8, v8}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    const/4 v6, 0x1

    invoke-virtual {p0, v8, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .end local p1    # "insets":Landroid/view/WindowInsets;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "insets":Landroid/view/WindowInsets;
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;->fitSystemWindowsInt(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/view/View;->mPrivateFlags3:I

    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    invoke-virtual {p0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    invoke-direct {p0}, Landroid/view/View;->rebuildOutline()V

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 8
    .param p1, "extraSpace"    # I

    .prologue
    const/high16 v7, 0x400000

    const/4 v6, 0x0

    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .local v2, "privateFlags":I
    const/4 v4, 0x0

    .local v4, "viewStateIndex":I
    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_2

    or-int/lit8 v4, v4, 0x10

    :cond_2
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_3

    or-int/lit8 v4, v4, 0x8

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x4

    :cond_4
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_5

    or-int/lit8 v4, v4, 0x2

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    or-int/lit8 v4, v4, 0x1

    :cond_6
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v2

    if-eqz v5, :cond_7

    or-int/lit8 v4, v4, 0x20

    :cond_7
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v5, :cond_8

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    or-int/lit8 v4, v4, 0x40

    :cond_8
    const/high16 v5, 0x10000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_9

    or-int/lit16 v4, v4, 0x80

    :cond_9
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .local v3, "privateFlags2":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_a

    or-int/lit16 v4, v4, 0x100

    :cond_a
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_b

    or-int/lit16 v4, v4, 0x200

    :cond_b
    invoke-static {v4}, Landroid/util/StateSet;->get(I)[I

    move-result-object v0

    .local v0, "drawableState":[I
    if-eqz p1, :cond_0

    if-eqz v0, :cond_c

    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .local v1, "fullState":[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([II[III)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    .end local v1    # "fullState":[I
    :cond_c
    new-array v1, p1, [I

    .restart local v1    # "fullState":[I
    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    invoke-direct {p0}, Landroid/view/View;->removeSendViewScrolledAccessibilityEventCallback()V

    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    invoke-direct {p0}, Landroid/view/View;->cleanupDraw()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 0
    .param p1, "hint"    # I

    .prologue
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;->onDrawScrollIndicators(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, "foreground":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v6, :cond_1

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1800(Landroid/view/View$ForegroundInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # setter for: Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z
    invoke-static {v0, v2}, Landroid/view/View$ForegroundInfo;->access$1802(Landroid/view/View$ForegroundInfo;Z)Z

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mSelfBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2400(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "selfBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mOverlayBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2500(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "overlayBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mInsidePadding:Z
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$100(Landroid/view/View$ForegroundInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    .local v5, "ld":I
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mGravity:I
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2200(Landroid/view/View$ForegroundInfo;)I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .end local v3    # "selfBounds":Landroid/graphics/Rect;
    .end local v4    # "overlayBounds":Landroid/graphics/Rect;
    .end local v5    # "ld":I
    :cond_0
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    .end local v6    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .restart local v3    # "selfBounds":Landroid/graphics/Rect;
    .restart local v4    # "overlayBounds":Landroid/graphics/Rect;
    .restart local v6    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v2, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v0, v1, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .local v9, "cache":Landroid/view/View$ScrollabilityCache;
    if-eqz v9, :cond_0

    iget v0, v9, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v18, v0

    .local v18, "state":I
    if-nez v18, :cond_1

    .end local v18    # "state":I
    :cond_0
    :goto_0
    return-void

    .restart local v18    # "state":I
    :cond_1
    const/4 v14, 0x0

    .local v14, "invalidate":Z
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_9

    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    :cond_2
    iget-object v0, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v19, v0

    .local v19, "values":[F
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v2

    sget-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    iput v2, v9, Landroid/view/View$ScrollabilityCache;->state:I

    :goto_1
    const/4 v14, 0x1

    .end local v19    # "values":[F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    .local v22, "viewFlags":I
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a

    const/4 v10, 0x1

    .local v10, "drawHorizontalScrollBar":Z
    :goto_3
    move/from16 v0, v22

    and-int/lit16 v2, v0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v11, 0x1

    .local v11, "drawVerticalScrollBar":Z
    :goto_4
    if-nez v11, :cond_3

    if-eqz v10, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v23, v2, v3

    .local v23, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    sub-int v12, v2, v3

    .local v12, "height":I
    iget-object v4, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .local v4, "scrollBar":Landroid/widget/ScrollBarDrawable;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    .local v15, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    .local v16, "scrollY":I
    const/high16 v2, 0x2000000

    and-int v2, v2, v22

    if-nez v2, :cond_c

    const/4 v13, -0x1

    .local v13, "inside":I
    :goto_5
    if-eqz v10, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .local v17, "size":I
    if-gtz v17, :cond_4

    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v24

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    if-eqz v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v20

    .local v20, "verticalScrollBarGap":I
    :goto_6
    add-int v2, v16, v12

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v6, v2, v3

    .local v6, "top":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .local v5, "left":I
    add-int v2, v15, v23

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int/2addr v2, v3

    sub-int v7, v2, v20

    .local v7, "right":I
    add-int v8, v6, v17

    .local v8, "bottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v17    # "size":I
    .end local v20    # "verticalScrollBarGap":I
    :cond_5
    if-eqz v11, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .restart local v17    # "size":I
    if-gtz v17, :cond_6

    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mVerticalScrollbarPosition:I

    move/from16 v21, v0

    .local v21, "verticalScrollbarPosition":I
    if-nez v21, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v21, 0x1

    :cond_7
    :goto_7
    packed-switch v21, :pswitch_data_0

    add-int v2, v15, v23

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int v5, v2, v3

    .restart local v5    # "left":I
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    and-int/2addr v2, v13

    add-int v6, v16, v2

    .restart local v6    # "top":I
    add-int v7, v5, v17

    .restart local v7    # "right":I
    add-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v8, v2, v3

    .restart local v8    # "bottom":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .end local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v10    # "drawHorizontalScrollBar":Z
    .end local v11    # "drawVerticalScrollBar":Z
    .end local v12    # "height":I
    .end local v13    # "inside":I
    .end local v15    # "scrollX":I
    .end local v16    # "scrollY":I
    .end local v17    # "size":I
    .end local v21    # "verticalScrollbarPosition":I
    .end local v22    # "viewFlags":I
    .end local v23    # "width":I
    .restart local v19    # "values":[F
    :cond_8
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v2}, Landroid/widget/ScrollBarDrawable;->mutate()Landroid/widget/ScrollBarDrawable;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_1

    .end local v19    # "values":[F
    :cond_9
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v2}, Landroid/widget/ScrollBarDrawable;->mutate()Landroid/widget/ScrollBarDrawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .restart local v22    # "viewFlags":I
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .restart local v10    # "drawHorizontalScrollBar":Z
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_4

    .restart local v4    # "scrollBar":Landroid/widget/ScrollBarDrawable;
    .restart local v11    # "drawVerticalScrollBar":Z
    .restart local v12    # "height":I
    .restart local v15    # "scrollX":I
    .restart local v16    # "scrollY":I
    .restart local v23    # "width":I
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_5

    .restart local v13    # "inside":I
    .restart local v17    # "size":I
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_6

    .restart local v21    # "verticalScrollbarPosition":I
    :cond_e
    const/16 v21, 0x2

    goto :goto_7

    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mUserPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .restart local v5    # "left":I
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    if-eqz p1, :cond_5

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :goto_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    :cond_2
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_3
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    :cond_4
    return-void

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "li":Landroid/view/View$ListenerInfo;
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onFocusLost()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverChanged(Z)V
    .locals 0
    .param p1, "hovered"    # Z

    .prologue
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    iget-boolean v3, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    if-nez v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasHoveredChild()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x80

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    iput-boolean v1, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/view/View;->isHoverable()Z

    move-result v3

    if-eqz v3, :cond_4

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    :goto_2
    return v1

    :cond_2
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    iput-boolean v2, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    const/16 v3, 0x100

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setHovered(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .local v0, "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .end local v0    # "focusablesTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v8, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v11}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v4

    .local v4, "parent":Landroid/view/ViewParent;
    instance-of v8, v4, Landroid/view/View;

    if-eqz v8, :cond_1

    check-cast v4, Landroid/view/View;

    .end local v4    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    :cond_1
    iget v8, p0, Landroid/view/View;->mID:I

    if-eq v8, v10, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .local v5, "rootView":Landroid/view/View;
    if-nez v5, :cond_2

    move-object v5, p0

    :cond_2
    iget v8, p0, Landroid/view/View;->mID:I

    invoke-direct {v5, p0, v8}, Landroid/view/View;->findLabelForView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .local v1, "label":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    :cond_3
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v8, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_4

    iget v8, p0, Landroid/view/View;->mID:I

    invoke-static {v8}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v8

    if-eqz v8, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Landroid/view/View;->mID:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "viewId":Ljava/lang/String;
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "label":Landroid/view/View;
    .end local v5    # "rootView":Landroid/view/View;
    .end local v7    # "viewId":Ljava/lang/String;
    :cond_4
    :goto_1
    iget v8, p0, Landroid/view/View;->mLabelForId:I

    if-eq v8, v10, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .restart local v5    # "rootView":Landroid/view/View;
    if-nez v5, :cond_5

    move-object v5, p0

    :cond_5
    iget v8, p0, Landroid/view/View;->mLabelForId:I

    invoke-direct {v5, p0, v8}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .local v2, "labeled":Landroid/view/View;
    if-eqz v2, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    .end local v2    # "labeled":Landroid/view/View;
    .end local v5    # "rootView":Landroid/view/View;
    :cond_6
    iget v8, p0, Landroid/view/View;->mAccessibilityTraversalBeforeId:I

    if-eq v8, v10, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .restart local v5    # "rootView":Landroid/view/View;
    if-nez v5, :cond_7

    move-object v5, p0

    :cond_7
    iget v8, p0, Landroid/view/View;->mAccessibilityTraversalBeforeId:I

    invoke-direct {v5, p0, v8}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .local v3, "next":Landroid/view/View;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;)V

    .end local v3    # "next":Landroid/view/View;
    .end local v5    # "rootView":Landroid/view/View;
    :cond_8
    iget v8, p0, Landroid/view/View;->mAccessibilityTraversalAfterId:I

    if-eq v8, v10, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .restart local v5    # "rootView":Landroid/view/View;
    if-nez v5, :cond_9

    move-object v5, p0

    :cond_9
    iget v8, p0, Landroid/view/View;->mAccessibilityTraversalAfterId:I

    invoke-direct {v5, p0, v8}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "next":Landroid/view/View;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->includeForAccessibility()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    .end local v3    # "next":Landroid/view/View;
    .end local v5    # "rootView":Landroid/view/View;
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isContextClickable()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v8, 0x8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_b
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v8

    if-nez v8, :cond_11

    const/16 v8, 0x40

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    const/16 v8, 0x10

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x20

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->isContextClickable()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "text":Ljava/lang/CharSequence;
    if-eqz v6, :cond_f

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    const/high16 v8, 0x20000

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v8, 0x100

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v8, 0x200

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v8, 0xb

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    :cond_f
    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_0

    .end local v6    # "text":Ljava/lang/CharSequence;
    :cond_10
    invoke-virtual {p1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_2

    :cond_11
    const/16 v8, 0x80

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_3

    .restart local v1    # "label":Landroid/view/View;
    .restart local v5    # "rootView":Landroid/view/View;
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v4, 0x200000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .local v0, "result":Z
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    move v0, v1

    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_1
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/view/View;->checkForLongClick(I)V

    move v0, v1

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    return-void
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 14
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    const/4 v1, 0x0

    const/4 v13, 0x1

    iget v9, p0, Landroid/view/View;->mID:I

    .local v9, "id":I
    if-lez v9, :cond_a

    const/high16 v0, -0x1000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_a

    const/high16 v0, 0xff0000

    and-int/2addr v0, v9

    if-eqz v0, :cond_a

    const v0, 0xffff

    and-int/2addr v0, v9

    if-eqz v0, :cond_a

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .local v11, "res":Landroid/content/res/Resources;
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "entry":Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "type":Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .end local v8    # "entry":Ljava/lang/String;
    .end local v11    # "res":Landroid/content/res/Resources;
    .end local v12    # "type":Ljava/lang/String;
    .local v10, "pkg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v9, v10, v12, v8}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v10    # "pkg":Ljava/lang/String;
    :goto_1
    iget v1, p0, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int v5, v0, v5

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v6, v0, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setTransformation(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setElevation(F)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setClickable(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setFocusable(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setFocused(Z)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setAccessibilityFocused(Z)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setSelected(Z)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setActivated(Z)V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setLongClickable(Z)V

    :cond_7
    instance-of v0, p0, Landroid/widget/Checkable;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setCheckable(Z)V

    move-object v0, p0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setChecked(Z)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isContextClickable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v13}, Landroid/view/ViewStructure;->setContextClickable(Z)V

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v10, 0x0

    .restart local v10    # "pkg":Ljava/lang/String;
    move-object v12, v10

    .local v12, "type":Ljava/lang/Object;
    move-object v8, v10

    .local v8, "entry":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v8    # "entry":Ljava/lang/Object;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p1, v9, v1, v1, v1}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 4
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/ViewStructure;->setChildCount(I)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v2

    .local v2, "root":Landroid/view/ViewStructure;
    invoke-direct {p0, v2, v1, v0}, Landroid/view/View;->populateVirtualStructure(Landroid/view/ViewStructure;Landroid/view/accessibility/AccessibilityNodeProvider;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "root":Landroid/view/ViewStructure;
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/view/AbsSavedState;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/view/View$BaseSavedState;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/View$BaseSavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iget-object v0, p1, Landroid/view/View$BaseSavedState;->mStartActivityRequestWhoSaved:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/View;->mStartActivityRequestWho:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    iget-object v1, p0, Landroid/view/View;->mStartActivityRequestWho:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/View$BaseSavedState;

    sget-object v1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "state":Landroid/view/View$BaseSavedState;
    iget-object v1, p0, Landroid/view/View;->mStartActivityRequestWho:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/View$BaseSavedState;->mStartActivityRequestWhoSaved:Ljava/lang/String;

    .end local v0    # "state":Landroid/view/View$BaseSavedState;
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    goto :goto_0
.end method

.method public onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .prologue
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/View;->postSendViewScrolledAccessibilityEventCallback()V

    :cond_0
    iput-boolean v1, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # setter for: Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z
    invoke-static {v0, v1}, Landroid/view/View$ForegroundInfo;->access$1802(Landroid/view/View$ForegroundInfo;Z)Z

    :cond_1
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v6, "ai":Landroid/view/View$AttachInfo;
    if-eqz v6, :cond_2

    iput-boolean v1, v6, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnScrollChangeListener:Landroid/view/View$OnScrollChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    iget-object v0, v0, Landroid/view/View$ListenerInfo;->mOnScrollChangeListener:Landroid/view/View$OnScrollChangeListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/view/View$OnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x800000

    const/high16 v11, 0x200000

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .local v6, "y":F
    iget v4, p0, Landroid/view/View;->mViewFlags:I

    .local v4, "viewFlags":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    and-int/lit8 v9, v4, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_3

    if-ne v0, v8, :cond_0

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x4000

    if-eqz v9, :cond_0

    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    and-int/lit16 v9, v4, 0x4000

    const/16 v10, 0x4000

    if-eq v9, v10, :cond_1

    and-int v9, v4, v11

    if-eq v9, v11, :cond_1

    and-int v9, v4, v12

    if-ne v9, v12, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    :goto_0
    return v7

    :cond_3
    iget-object v9, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v9, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v8

    goto :goto_0

    :cond_4
    and-int/lit16 v9, v4, 0x4000

    const/16 v10, 0x4000

    if-eq v9, v10, :cond_5

    and-int v9, v4, v11

    if-eq v9, v11, :cond_5

    and-int v9, v4, v12

    if-ne v9, v12, :cond_2

    :cond_5
    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    move v7, v8

    goto :goto_0

    :pswitch_0
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v10, 0x2000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_f

    move v3, v8

    .local v3, "prepressed":Z
    :goto_2
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x4000

    if-nez v9, :cond_7

    if-eqz v3, :cond_e

    :cond_7
    const/4 v1, 0x0

    .local v1, "focusTaken":Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    :cond_8
    if-eqz v3, :cond_9

    invoke-direct {p0, v8, v5, v6}, Landroid/view/View;->setPressed(ZFF)V

    :cond_9
    iget-boolean v9, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v9, :cond_b

    iget-boolean v9, p0, Landroid/view/View;->mIgnoreNextUpEvent:Z

    if-nez v9, :cond_b

    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    if-nez v1, :cond_b

    iget-object v9, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v9, :cond_a

    new-instance v9, Landroid/view/View$PerformClick;

    invoke-direct {v9, p0, v13}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v9, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    :cond_a
    iget-object v9, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_b
    iget-object v9, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v9, :cond_c

    new-instance v9, Landroid/view/View$UnsetPressedState;

    invoke-direct {v9, p0, v13}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v9, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    :cond_c
    if-eqz v3, :cond_10

    iget-object v9, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {p0, v9, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_3
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .end local v1    # "focusTaken":Z
    :cond_e
    iput-boolean v7, p0, Landroid/view/View;->mIgnoreNextUpEvent:Z

    goto :goto_1

    .end local v3    # "prepressed":Z
    :cond_f
    move v3, v7

    goto :goto_2

    .restart local v1    # "focusTaken":Z
    .restart local v3    # "prepressed":Z
    :cond_10
    iget-object v9, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v9}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_3

    .end local v1    # "focusTaken":Z
    .end local v3    # "prepressed":Z
    :pswitch_1
    iput-boolean v7, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v2

    .local v2, "isInScrollingContainer":Z
    if-eqz v2, :cond_12

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x2000000

    or-int/2addr v7, v9

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    iget-object v7, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v7, :cond_11

    new-instance v7, Landroid/view/View$CheckForTap;

    invoke-direct {v7, p0, v13}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v7, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    :cond_11
    iget-object v7, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, v7, Landroid/view/View$CheckForTap;->x:F

    iget-object v7, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, v7, Landroid/view/View$CheckForTap;->y:F

    iget-object v7, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p0, v7, v10, v11}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_12
    invoke-direct {p0, v8, v5, v6}, Landroid/view/View;->setPressed(ZFF)V

    invoke-direct {p0, v7}, Landroid/view/View;->checkForLongClick(I)V

    goto/16 :goto_1

    .end local v2    # "isInScrollingContainer":Z
    :pswitch_2
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    iput-boolean v7, p0, Landroid/view/View;->mInContextButtonPress:Z

    iput-boolean v7, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    iput-boolean v7, p0, Landroid/view/View;->mIgnoreNextUpEvent:Z

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget v9, p0, Landroid/view/View;->mTouchSlop:I

    int-to-float v9, v9

    invoke-virtual {p0, v5, v6, v9}, Landroid/view/View;->pointInView(FFF)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x4000

    if-eqz v9, :cond_6

    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x0

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .local v2, "visible":Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v4

    if-eq v2, v4, :cond_1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    iget-object v4, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "fg":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v4

    if-eq v2, v4, :cond_2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "fg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "visible":Z
    :cond_3
    move v2, v3

    goto :goto_0

    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "visible":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void

    :cond_3
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "clear"    # Z
    .param p3, "clearMask"    # I

    .prologue
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "             DIRTY("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") DRAWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CACHE_VALID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") INVALIDATED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, p3

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2, p3}, Landroid/view/View;->outputDirtyFlags(Ljava/lang/String;ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 16
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mOverScrollMode:I

    .local v10, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_7

    const/4 v2, 0x1

    .local v2, "canScrollHorizontal":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_8

    const/4 v3, 0x1

    .local v3, "canScrollVertical":Z
    :goto_1
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    if-eqz v2, :cond_9

    :cond_0
    const/4 v9, 0x1

    .local v9, "overScrollHorizontal":Z
    :goto_2
    if-eqz v10, :cond_1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_a

    if-eqz v3, :cond_a

    :cond_1
    const/4 v11, 0x1

    .local v11, "overScrollVertical":Z
    :goto_3
    add-int v7, p3, p1

    .local v7, "newScrollX":I
    if-nez v9, :cond_2

    const/16 p7, 0x0

    :cond_2
    add-int v8, p4, p2

    .local v8, "newScrollY":I
    if-nez v11, :cond_3

    const/16 p8, 0x0

    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .local v6, "left":I
    add-int v12, p7, p5

    .local v12, "right":I
    move/from16 v0, p8

    neg-int v13, v0

    .local v13, "top":I
    add-int v1, p8, p6

    .local v1, "bottom":I
    const/4 v4, 0x0

    .local v4, "clampedX":Z
    if-le v7, v12, :cond_b

    move v7, v12

    const/4 v4, 0x1

    :cond_4
    :goto_4
    const/4 v5, 0x0

    .local v5, "clampedY":Z
    if-le v8, v1, :cond_c

    move v8, v1

    const/4 v5, 0x1

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/view/View;->onOverScrolled(IIZZ)V

    if-nez v4, :cond_6

    if-eqz v5, :cond_d

    :cond_6
    const/4 v14, 0x1

    :goto_6
    return v14

    .end local v1    # "bottom":I
    .end local v2    # "canScrollHorizontal":Z
    .end local v3    # "canScrollVertical":Z
    .end local v4    # "clampedX":Z
    .end local v5    # "clampedY":Z
    .end local v6    # "left":I
    .end local v7    # "newScrollX":I
    .end local v8    # "newScrollY":I
    .end local v9    # "overScrollHorizontal":Z
    .end local v11    # "overScrollVertical":Z
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "canScrollHorizontal":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .restart local v3    # "canScrollVertical":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .restart local v9    # "overScrollHorizontal":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .restart local v1    # "bottom":I
    .restart local v4    # "clampedX":Z
    .restart local v6    # "left":I
    .restart local v7    # "newScrollX":I
    .restart local v8    # "newScrollY":I
    .restart local v11    # "overScrollVertical":Z
    .restart local v12    # "right":I
    .restart local v13    # "top":I
    :cond_b
    if-ge v7, v6, :cond_4

    move v7, v6

    const/4 v4, 0x1

    goto :goto_4

    .restart local v5    # "clampedY":Z
    :cond_c
    if-ge v8, v13, :cond_5

    move v8, v13

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    const/4 v14, 0x0

    goto :goto_6
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x2000

    if-eq p1, v8, :cond_0

    const/16 v8, 0x1000

    if-eq p1, v8, :cond_0

    const v8, 0x1020038

    if-eq p1, v8, :cond_0

    const v8, 0x1020039

    if-eq p1, v8, :cond_0

    const v8, 0x102003a

    if-eq p1, v8, :cond_0

    const v8, 0x102003b

    if-ne p1, v8, :cond_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchNestedPrePerformAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    move v6, v7

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v6

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0, v6}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v6

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v7}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    move-result v6

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    goto :goto_0

    :sswitch_8
    if-eqz p2, :cond_3

    const-string v7, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "granularity":I
    const-string v7, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .local v1, "extendSelection":Z
    invoke-direct {p0, v2, v6, v1}, Landroid/view/View;->traverseAtGranularity(IZZ)Z

    move-result v6

    goto/16 :goto_0

    .end local v1    # "extendSelection":Z
    .end local v2    # "granularity":I
    :sswitch_9
    if-eqz p2, :cond_3

    const-string v6, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "granularity":I
    const-string v6, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "extendSelection":Z
    invoke-direct {p0, v2, v7, v1}, Landroid/view/View;->traverseAtGranularity(IZZ)Z

    move-result v6

    goto/16 :goto_0

    .end local v1    # "extendSelection":Z
    .end local v2    # "granularity":I
    :sswitch_a
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "text":Ljava/lang/CharSequence;
    if-nez v5, :cond_4

    move v6, v7

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_7

    const-string v8, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, "start":I
    :goto_1
    if-eqz p2, :cond_5

    const-string v8, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "end":I
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionStart()I

    move-result v8

    if-ne v8, v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilitySelectionEnd()I

    move-result v8

    if-eq v8, v0, :cond_3

    :cond_6
    if-ne v4, v0, :cond_3

    invoke-virtual {p0, v4, v0}, Landroid/view/View;->setAccessibilitySelection(II)V

    invoke-virtual {p0, v7}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_0

    .end local v0    # "end":I
    .end local v4    # "start":I
    :cond_7
    move v4, v0

    goto :goto_1

    .end local v5    # "text":Ljava/lang/CharSequence;
    :sswitch_b
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_3

    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3, v6}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v6

    goto/16 :goto_0

    .end local v3    # "r":Landroid/graphics/Rect;
    :sswitch_c
    invoke-virtual {p0}, Landroid/view/View;->isContextClickable()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->performContextClick()Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x20000 -> :sswitch_a
        0x1020036 -> :sswitch_b
        0x102003c -> :sswitch_c
    .end sparse-switch
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->showContextMenu(FFI)Z

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public performClick()Z
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v1, 0x1

    .local v1, "result":Z
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return v1

    .end local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "visibility"    # I

    .prologue
    const/high16 v2, 0x4000000

    const/4 v3, 0x1

    and-int/lit8 v1, p2, 0xc

    if-nez v1, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    :cond_0
    iget v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p0, Landroid/view/View;->mSystemUiVisibility:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    # getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$1400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .end local v0    # "li":Landroid/view/View$ListenerInfo;
    :cond_1
    return-void
.end method

.method public performContextClick()Z
    .locals 3

    .prologue
    const/high16 v2, 0x800000

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    .local v0, "handled":Z
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnContextClickListener:Landroid/view/View$OnContextClickListener;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnContextClickListener:Landroid/view/View$OnContextClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnContextClickListener;->onContextClick(Landroid/view/View;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return v0
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .param p1, "feedbackConstant"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 3
    .param p1, "feedbackConstant"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {v1, p1, v0}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    .local v0, "handled":Z
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v1, "li":Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    return v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "soundConstant"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_0
.end method

.method final pointInView(FF)Z
    .locals 3
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v2, 0x0

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pointInView(FFF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const-wide/16 v2, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 3
    .param p1, "delayMilliseconds"    # J

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateDelayed(Landroid/view/View;J)V

    :cond_0
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 3
    .param p1, "delayMilliseconds"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iput p5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iput p6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V

    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->dispatchInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->obtain()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .local v1, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iput p1, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iput p2, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .end local v1    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    return-void
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public postOnAnimationDelayed(Ljava/lang/Runnable;J)V
    .locals 8
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v6, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method protected recomputePadding()V
    .locals 4

    .prologue
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->internalSetPadding(IIII)V

    return-void
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_1
    return v3
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .local v0, "li":Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestAccessibilityFocus()Z
    .locals 5

    .prologue
    const/high16 v4, 0x4000000

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const v2, 0x8000

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestApplyInsets()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestFitSystemWindows()V

    :cond_0
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/View;->requestFocusNoSearch(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final requestFocusFromTouch()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    return v1
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mMeasureCache:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clear()V

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->requestLayoutDuringLayout(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p0, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    .end local v0    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    :cond_4
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mViewRequestingLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 9
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_0
    return v4

    :cond_1
    move-object v0, p0

    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .local v3, "position":Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v3, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .local v4, "scrolled":Z
    :goto_1
    if-eqz v1, :cond_0

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-interface {v1, v0, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_2
    iget v5, v0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    iget v6, v0, Landroid/view/View;->mTop:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    move-object v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v2    # "parentView":Landroid/view/View;
    .end local v3    # "position":Landroid/graphics/RectF;
    .end local v4    # "scrolled":Z
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0
.end method

.method public final requestUnbufferedDispatch(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    goto :goto_0
.end method

.method public resetPaddingToInitialValues()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    :goto_1
    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    :goto_2
    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    goto :goto_2

    :cond_3
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    :goto_3
    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_5

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    :goto_4
    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    goto :goto_3

    :cond_5
    iget v0, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    goto :goto_4
.end method

.method protected resetResolvedDrawables()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedDrawablesInternal()V

    return-void
.end method

.method resetResolvedDrawablesInternal()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetResolvedPadding()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPaddingInternal()V

    return-void
.end method

.method resetResolvedPaddingInternal()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xf0001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1e01

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method public resetRtlProperties()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPadding()V

    invoke-virtual {p0}, Landroid/view/View;->resetResolvedDrawables()V

    return-void
.end method

.method resetSubtreeAccessibilityStateChanged()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void
.end method

.method protected resolveDrawables()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .local v0, "layoutDirection":I
    :goto_1
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->onResolveDrawables(I)V

    goto :goto_0

    .end local v0    # "layoutDirection":I
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    goto :goto_1
.end method

.method public resolveLayoutDirection()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v3, v3, -0x31

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v3, v3, 0xc

    shr-int/lit8 v3, v3, 0x2

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    move v1, v2

    :cond_1
    return v1

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->isLayoutDirectionResolved()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not fully implement ViewParent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v2, v1, :cond_0

    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resolveLayoutParams()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$LayoutParams;->resolveLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method public resolvePadding()V
    .locals 6

    .prologue
    const/high16 v3, -0x80000000

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .local v1, "resolvedLayoutDirection":I
    invoke-direct {p0}, Landroid/view/View;->isRtlCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/view/View;->mRightPaddingDefined:Z

    if-nez v2, :cond_3

    :cond_0
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "padding":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .restart local v0    # "padding":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-boolean v2, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    if-nez v2, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    :cond_2
    iget-boolean v2, p0, Landroid/view/View;->mRightPaddingDefined:Z

    if-nez v2, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_3
    packed-switch v1, :pswitch_data_0

    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    if-eq v2, v3, :cond_7

    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    :goto_0
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v2, v3, :cond_8

    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    :goto_1
    iget v2, p0, Landroid/view/View;->mUserPaddingBottom:I

    if-ltz v2, :cond_9

    iget v2, p0, Landroid/view/View;->mUserPaddingBottom:I

    :goto_2
    iput v2, p0, Landroid/view/View;->mUserPaddingBottom:I

    :cond_4
    iget v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v5, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->internalSetPadding(IIII)V

    invoke-virtual {p0, v1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    return-void

    :pswitch_0
    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    :goto_3
    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-eq v2, v3, :cond_6

    iget v2, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    :cond_5
    iget v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_3

    :cond_6
    iget v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    :cond_7
    iget v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_0

    :cond_8
    iget v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_1

    :cond_9
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public resolveRtlPropertiesIfNeeded()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/view/View;->needRtlPropertiesResolution()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutDirection()Z

    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutParams()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isTextDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isTextAlignmentResolved()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()Z

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->areDrawablesResolved()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->resolveDrawables()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isPaddingResolved()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resolveTextAlignment()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v7, 0x20000

    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    const v6, -0xf0001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v2

    .local v2, "textAlignment":I
    packed-switch v2, :pswitch_data_0

    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .end local v2    # "textAlignment":I
    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    :goto_1
    return v3

    .restart local v2    # "textAlignment":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextAlignment()Z

    move-result v5

    if-nez v5, :cond_0

    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v4, v7

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5}, Landroid/view/ViewParent;->isTextAlignmentResolved()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v5, 0x30000

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    goto :goto_1

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->getTextAlignment()I
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .local v1, "parentResolvedTextAlignment":I
    :goto_2
    packed-switch v1, :pswitch_data_1

    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .end local v1    # "parentResolvedTextAlignment":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .restart local v1    # "parentResolvedTextAlignment":I
    goto :goto_2

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v1, 0x11

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .end local v1    # "parentResolvedTextAlignment":I
    :pswitch_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v2, 0x11

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .end local v2    # "textAlignment":I
    :cond_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public resolveTextDirection()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v5, v5, -0x1e01

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v2

    .local v2, "textDirection":I
    packed-switch v2, :pswitch_data_0

    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .end local v2    # "textDirection":I
    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    :goto_1
    return v3

    .restart local v2    # "textDirection":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextDirection()Z

    move-result v5

    if-nez v5, :cond_0

    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5}, Landroid/view/ViewParent;->isTextDirectionResolved()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags2:I
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x600

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    move v3, v4

    goto :goto_1

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3}, Landroid/view/ViewParent;->getTextDirection()I
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .local v1, "parentResolvedDirection":I
    :goto_2
    packed-switch v1, :pswitch_data_1

    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .end local v1    # "parentResolvedDirection":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/AbstractMethodError;
    const-string v3, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not fully implement ViewParent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x3

    .restart local v1    # "parentResolvedDirection":I
    goto :goto_2

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v1, 0xa

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .end local v1    # "parentResolvedDirection":I
    :pswitch_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, v2, 0xa

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    .end local v2    # "textDirection":I
    :cond_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method rootViewRequestFocus()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 9
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v6, p3, v0

    .local v6, "delay":J
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-static {v6, v7}, Landroid/view/Choreographer;->subtractFrameDelay(J)J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .end local v6    # "delay":J
    :cond_0
    :goto_0
    return-void

    .restart local v6    # "delay":J
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2, v6, v7}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1

    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .local v0, "oldX":I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .local v1, "oldY":I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    iput p2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_0
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x2a1bf

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    iput-object p1, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public setAccessibilityLiveRegion(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x1800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x17

    const/high16 v2, 0x1800000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    :cond_0
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    if-ne p1, p2, :cond_0

    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    iput p1, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    :goto_1
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    goto :goto_1
.end method

.method public setAccessibilityTraversalAfter(I)V
    .locals 1
    .param p1, "afterId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mAccessibilityTraversalAfterId:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/view/View;->mAccessibilityTraversalAfterId:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0
.end method

.method public setAccessibilityTraversalBefore(I)V
    .locals 1
    .param p1, "beforeId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mAccessibilityTraversalBeforeId:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/view/View;->mAccessibilityTraversalBeforeId:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 5
    .param p1, "activated"    # Z

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    if-eq v2, p1, :cond_0

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40000001    # -1.9999999f

    and-int/2addr v2, v4

    if-eqz p1, :cond_2

    :goto_1
    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetActivated(Z)V

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setAlpha(F)Z

    invoke-virtual {p0, v2}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0
.end method

.method setAlphaNoInvalidation(F)Z
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    .local v0, "subclassHandlesAlpha":Z
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 v1, 0x1

    .end local v0    # "subclassHandlesAlpha":Z
    :goto_0
    return v1

    .restart local v0    # "subclassHandlesAlpha":Z
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    iget-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setAlpha(F)Z

    .end local v0    # "subclassHandlesAlpha":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    :cond_1
    return-void
.end method

.method public setAnimationMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    return-void
.end method

.method public setAssistBlocked(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setBackgroundBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-boolean v4, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    invoke-direct {p0}, Landroid/view/View;->rebuildOutline()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View;->mBackgroundResource:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    .local v1, "requestLayout":Z
    iput v4, p0, Landroid/view/View;->mBackgroundResource:I

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p1, :cond_a

    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .local v0, "padding":Landroid/graphics/Rect;
    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "padding":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .restart local v0    # "padding":Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedDrawablesInternal()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPaddingInternal()V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->internalSetPadding(IIII)V

    :goto_1
    iput-boolean v4, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    iput-boolean v4, p0, Landroid/view/View;->mRightPaddingDefined:Z

    :cond_3
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    if-eq v2, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/view/View;->applyBackgroundTint()V

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 v1, 0x1

    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_8
    iput-boolean v3, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    goto/16 :goto_0

    .restart local v0    # "padding":Landroid/graphics/Rect;
    :pswitch_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_1

    :cond_9
    move v2, v4

    goto :goto_2

    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_a
    iput-object v5, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_c

    :cond_b
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_c
    const/4 v1, 0x1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_0
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$TintInfo;

    invoke-direct {v0}, Landroid/view/View$TintInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    iput-object p1, v0, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintList:Z

    invoke-direct {p0}, Landroid/view/View;->applyBackgroundTint()V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$TintInfo;

    invoke-direct {v0}, Landroid/view/View$TintInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    iput-object p1, v0, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/view/View;->mBackgroundTint:Landroid/view/View$TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintMode:Z

    invoke-direct {p0}, Landroid/view/View;->applyBackgroundTint()V

    return-void
.end method

.method public final setBottom(I)V
    .locals 9
    .param p1, "bottom"    # I

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, p0, Landroid/view/View;->mBottom:I

    if-eq p1, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    .local v0, "matrixIsIdentity":Z
    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/view/View;->mBottom:I

    if-ge p1, v4, :cond_4

    iget v1, p0, Landroid/view/View;->mBottom:I

    .local v1, "maxBottom":I
    :goto_0
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .end local v1    # "maxBottom":I
    :cond_0
    :goto_1
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v5

    .local v3, "width":I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int v2, v4, v5

    .local v2, "oldHeight":I
    iput p1, p0, Landroid/view/View;->mBottom:I

    iget-object v4, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    iget v5, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v4, v5}, Landroid/view/RenderNode;->setBottom(I)Z

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4, v3, v2}, Landroid/view/View;->sizeChange(IIII)V

    if-nez v0, :cond_1

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    :cond_1
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    iget-object v4, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # setter for: Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z
    invoke-static {v4, v6}, Landroid/view/View$ForegroundInfo;->access$1802(Landroid/view/View$ForegroundInfo;Z)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_3
    return-void

    .restart local v0    # "matrixIsIdentity":Z
    :cond_4
    move v1, p1

    .restart local v1    # "maxBottom":I
    goto :goto_0

    .end local v1    # "maxBottom":I
    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_1
.end method

.method public setCameraDistance(F)V
    .locals 4
    .param p1, "distance"    # F

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v1

    .local v0, "dpi":F
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    invoke-virtual {p0, v3, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    const/16 v1, 0x4000

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    :goto_1
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    iget-object v1, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v2, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mClipBounds:Landroid/graphics/Rect;

    goto :goto_1
.end method

.method public setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->damageInParent()V

    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v0, v1

    .local v0, "nonEmptyDesc":Z
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto :goto_0

    .end local v0    # "nonEmptyDesc":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "nonEmptyDesc":Z
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0
.end method

.method public setContextClickable(Z)V
    .locals 2
    .param p1, "contextClickable"    # Z

    .prologue
    const/high16 v1, 0x800000

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisabledSystemUiVisibility(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method setDisplayListProperties(Landroid/view/RenderNode;)V
    .locals 7
    .param p1, "renderNode"    # Landroid/view/RenderNode;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "alpha":F
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/ViewGroup;

    iget v5, v5, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_1

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "parentVG":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    .local v3, "t":Landroid/view/animation/Transformation;
    invoke-virtual {v2, p0, v3}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v4

    .local v4, "transformType":I
    if-eqz v4, :cond_1

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    :cond_0
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/RenderNode;->setStaticMatrix(Landroid/graphics/Matrix;)Z

    .end local v2    # "parentVG":Landroid/view/ViewGroup;
    .end local v3    # "t":Landroid/view/animation/Transformation;
    .end local v4    # "transformType":I
    :cond_1
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v5, :cond_5

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v5

    mul-float/2addr v0, v5

    cmpg-float v5, v0, v6

    if-gez v5, :cond_2

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v1, v5

    .local v1, "multipliedAlpha":I
    invoke-virtual {p0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .end local v1    # "multipliedAlpha":I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setAlpha(F)Z

    .end local v0    # "alpha":F
    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .restart local v0    # "alpha":F
    :cond_5
    cmpg-float v5, v0, v6

    if-gez v5, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->setAlpha(F)Z

    goto :goto_1
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mCachingFailed:Z

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    const/high16 v0, 0x180000

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x400000

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 3
    .param p1, "elevation"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setElevation(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setFadingEdgeLength(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x400

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFitsSystemWindows(Z)V
    .locals 2
    .param p1, "fitSystemWindows"    # Z

    .prologue
    const/4 v1, 0x2

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFlags(II)V
    .locals 11
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const v10, -0x8001

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .local v0, "accessibilityEnabled":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v7

    .local v4, "oldIncludeForAccessibility":Z
    :goto_0
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .local v3, "old":I
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v9, p2, -0x1

    and-int/2addr v6, v9

    and-int v9, p1, p2

    or-int/2addr v6, v9

    iput v6, p0, Landroid/view/View;->mViewFlags:I

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    xor-int v1, v6, v3

    .local v1, "changed":I
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    .end local v1    # "changed":I
    .end local v3    # "old":I
    .end local v4    # "oldIncludeForAccessibility":Z
    :cond_1
    move v4, v8

    goto :goto_0

    .restart local v1    # "changed":I
    .restart local v3    # "old":I
    .restart local v4    # "oldIncludeForAccessibility":Z
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    .local v5, "privateFlags":I
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_3

    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_3

    and-int/lit8 v6, v3, 0x1

    if-ne v6, v7, :cond_16

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_3
    :goto_2
    and-int/lit8 v2, p1, 0xc

    .local v2, "newVisibility":I
    if-nez v2, :cond_4

    and-int/lit8 v6, v1, 0xc

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    if-le v6, v9, :cond_4

    iget v6, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    if-le v6, v9, :cond_4

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    :cond_4
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_8

    invoke-virtual {p0, v8}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Z)V

    :cond_6
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_7
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    :cond_8
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_b

    invoke-virtual {p0, v8}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/4 v9, 0x4

    if-ne v6, v9, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    if-eq v6, p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    :cond_a
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    :cond_b
    and-int/lit8 v6, v1, 0xc

    if-eqz v6, :cond_e

    if-eqz v2, :cond_c

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_c

    invoke-direct {p0}, Landroid/view/View;->cleanupDraw()V

    :cond_c
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_17

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/ViewGroup;

    and-int/lit8 v9, v1, 0xc

    invoke-virtual {v6, p0, v9, v2}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Z)V

    :cond_d
    :goto_3
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_e

    invoke-virtual {p0, p0, v2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_e
    const/high16 v6, 0x20000

    and-int/2addr v6, v1

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_f
    const v6, 0x8000

    and-int/2addr v6, v1

    if-eqz v6, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v6, v10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    :cond_10
    const/high16 v6, 0x180000

    and-int/2addr v6, v1

    if-eqz v6, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v6, v10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_11
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_13

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_19

    iget-object v6, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_12

    iget-object v6, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v6, :cond_18

    iget-object v6, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_18

    :cond_12
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    :cond_13
    const/high16 v6, 0x4000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_14

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_14

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_14

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v6, :cond_14

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_14
    if-eqz v0, :cond_0

    and-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_15

    and-int/lit8 v6, v1, 0xc

    if-nez v6, :cond_15

    and-int/lit16 v6, v1, 0x4000

    if-nez v6, :cond_15

    const/high16 v6, 0x200000

    and-int/2addr v6, v1

    if-nez v6, :cond_15

    const/high16 v6, 0x800000

    and-int/2addr v6, v1

    if-eqz v6, :cond_1b

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v6

    if-eq v4, v6, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    goto/16 :goto_1

    .end local v2    # "newVisibility":I
    :cond_16
    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_3

    and-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_2

    .restart local v2    # "newVisibility":I
    :cond_17
    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v9, 0x0

    invoke-interface {v6, p0, v9}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_18
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_4

    :cond_19
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x81

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_4

    :cond_1a
    invoke-virtual {p0, v8}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_1

    :cond_1b
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_0

    invoke-virtual {p0, v8}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto/16 :goto_1
.end method

.method public setFocusable(Z)V
    .locals 3
    .param p1, "focusable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/high16 v2, 0x40000

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .param p1, "focusableInTouchMode"    # Z

    .prologue
    const/high16 v1, 0x40000

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setFlags(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "foreground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/View$ForegroundInfo;

    invoke-direct {v0, v1}, Landroid/view/View$ForegroundInfo;-><init>(Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # setter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, p1}, Landroid/view/View$ForegroundInfo;->access$1302(Landroid/view/View$ForegroundInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    const/4 v1, 0x1

    # setter for: Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z
    invoke-static {v0, v1}, Landroid/view/View$ForegroundInfo;->access$1802(Landroid/view/View$ForegroundInfo;Z)Z

    if-eqz p1, :cond_7

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    invoke-direct {p0}, Landroid/view/View;->applyForegroundTint()V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_7
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_1
.end method

.method public setForegroundGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$ForegroundInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/View$ForegroundInfo;-><init>(Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mGravity:I
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2200(Landroid/view/View$ForegroundInfo;)I

    move-result v0

    if-eq v0, p1, :cond_3

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_1
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_2

    or-int/lit8 p1, p1, 0x30

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # setter for: Landroid/view/View$ForegroundInfo;->mGravity:I
    invoke-static {v0, p1}, Landroid/view/View$ForegroundInfo;->access$2202(Landroid/view/View$ForegroundInfo;I)I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setForegroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$ForegroundInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/View$ForegroundInfo;-><init>(Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    new-instance v1, Landroid/view/View$TintInfo;

    invoke-direct {v1}, Landroid/view/View$TintInfo;-><init>()V

    # setter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0, v1}, Landroid/view/View$ForegroundInfo;->access$2302(Landroid/view/View$ForegroundInfo;Landroid/view/View$TintInfo;)Landroid/view/View$TintInfo;

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintList:Z

    invoke-direct {p0}, Landroid/view/View;->applyForegroundTint()V

    return-void
.end method

.method public setForegroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View$ForegroundInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/View$ForegroundInfo;-><init>(Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    new-instance v1, Landroid/view/View$TintInfo;

    invoke-direct {v1}, Landroid/view/View$TintInfo;-><init>()V

    # setter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0, v1}, Landroid/view/View$ForegroundInfo;->access$2302(Landroid/view/View$ForegroundInfo;Landroid/view/View$TintInfo;)Landroid/view/View$TintInfo;

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$TintInfo;->mHasTintMode:Z

    invoke-direct {p0}, Landroid/view/View;->applyForegroundTint()V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "changed":Z
    iget v8, p0, Landroid/view/View;->mLeft:I

    if-ne v8, p1, :cond_0

    iget v8, p0, Landroid/view/View;->mRight:I

    move/from16 v0, p3

    if-ne v8, v0, :cond_0

    iget v8, p0, Landroid/view/View;->mTop:I

    if-ne v8, p2, :cond_0

    iget v8, p0, Landroid/view/View;->mBottom:I

    move/from16 v0, p4

    if-eq v8, v0, :cond_6

    :cond_0
    const/4 v1, 0x1

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v8, 0x20

    .local v2, "drawn":I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v8, v9

    .local v6, "oldWidth":I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v5, v8, v9

    .local v5, "oldHeight":I
    sub-int v4, p3, p1

    .local v4, "newWidth":I
    sub-int v3, p4, p2

    .local v3, "newHeight":I
    if-ne v4, v6, :cond_1

    if-eq v3, v5, :cond_7

    :cond_1
    const/4 v7, 0x1

    .local v7, "sizeChanged":Z
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    iput p1, p0, Landroid/view/View;->mLeft:I

    iput p2, p0, Landroid/view/View;->mTop:I

    move/from16 v0, p3

    iput v0, p0, Landroid/view/View;->mRight:I

    move/from16 v0, p4

    iput v0, p0, Landroid/view/View;->mBottom:I

    iget-object v8, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    iget v9, p0, Landroid/view/View;->mLeft:I

    iget v10, p0, Landroid/view/View;->mTop:I

    iget v11, p0, Landroid/view/View;->mRight:I

    iget v12, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    if-eqz v7, :cond_2

    invoke-direct {p0, v4, v3, v6, v5}, Landroid/view/View;->sizeChange(IIII)V

    :cond_2
    iget v8, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-eqz v8, :cond_4

    :cond_3
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    :cond_4
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v8, v2

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    iget-object v8, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    const/4 v9, 0x1

    # setter for: Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z
    invoke-static {v8, v9}, Landroid/view/View$ForegroundInfo;->access$1802(Landroid/view/View$ForegroundInfo;Z)Z

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .end local v2    # "drawn":I
    .end local v3    # "newHeight":I
    .end local v4    # "newWidth":I
    .end local v5    # "oldHeight":I
    .end local v6    # "oldWidth":I
    .end local v7    # "sizeChanged":Z
    :cond_6
    return v1

    .restart local v2    # "drawn":I
    .restart local v3    # "newHeight":I
    .restart local v4    # "newWidth":I
    .restart local v5    # "oldHeight":I
    .restart local v6    # "oldWidth":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 2
    .param p1, "hapticFeedbackEnabled"    # Z

    .prologue
    const/high16 v1, 0x10000000

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasTransientState(Z)V
    .locals 4
    .param p1, "hasTransientState"    # Z

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iput v1, p0, Landroid/view/View;->mTransientStateCount:I

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-gez v1, :cond_2

    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    const-string v1, "View"

    const-string v2, "hasTransientState decremented below 0: unmatched pair of setHasTransientState calls"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    :cond_3
    if-nez p1, :cond_0

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-nez v1, :cond_0

    :cond_4
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    const v3, 0x7fffffff

    and-int/2addr v3, v1

    if-eqz p1, :cond_5

    const/high16 v1, -0x80000000

    :goto_2
    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .locals 1
    .param p1, "horizontalFadingEdgeEnabled"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    :cond_1
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    return-void
.end method

.method public setHovered(Z)V
    .locals 2
    .param p1, "hovered"    # Z

    .prologue
    const/high16 v1, 0x10000000

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    goto :goto_0
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    iput p1, p0, Landroid/view/View;->mID:I

    iget v0, p0, Landroid/view/View;->mID:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mLabelForId:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mID:I

    :cond_0
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    .local v2, "oldMode":I
    if-eq p1, v2, :cond_2

    if-eqz v2, :cond_0

    if-nez p1, :cond_3

    :cond_0
    move v0, v1

    .local v0, "maySkipNotify":Z
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_4

    .local v1, "oldIncludeForAccessibility":Z
    :goto_1
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    const v5, -0x700001

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v5, p1, 0x14

    const/high16 v6, 0x700000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/View;->mPrivateFlags2:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v4

    if-eq v1, v4, :cond_5

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .end local v0    # "maySkipNotify":Z
    .end local v1    # "oldIncludeForAccessibility":Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_0

    .restart local v0    # "maySkipNotify":Z
    :cond_4
    move v1, v3

    goto :goto_1

    .restart local v1    # "oldIncludeForAccessibility":Z
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_2
.end method

.method public setIsRootNamespace(Z)V
    .locals 1
    .param p1, "isRoot"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepScreenOn"    # Z

    .prologue
    const/high16 v1, 0x4000000

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLabelFor(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, -0x1

    iget v0, p0, Landroid/view/View;->mLabelForId:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/view/View;->mLabelForId:I

    iget v0, p0, Landroid/view/View;->mLabelForId:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/View;->mID:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mID:I

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    .local v0, "layerType":I
    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    .end local p1    # "paint":Landroid/graphics/Paint;
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    :cond_0
    iput-object p1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    iget-object v2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 5
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x1

    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v3, p1}, Landroid/view/RenderNode;->setLayerType(I)Z

    move-result v1

    .local v1, "typeChanged":Z
    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .end local p2    # "paint":Landroid/graphics/Paint;
    :goto_0
    return-void

    .restart local p2    # "paint":Landroid/graphics/Paint;
    :cond_2
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-ne v3, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_3
    iput p1, p0, Landroid/view/View;->mLayerType:I

    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-nez v3, :cond_5

    move v0, v2

    .local v0, "layerDisabled":Z
    :goto_1
    if-eqz v0, :cond_6

    const/4 p2, 0x0

    .end local p2    # "paint":Landroid/graphics/Paint;
    :cond_4
    :goto_2
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    iget-object v4, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0

    .end local v0    # "layerDisabled":Z
    .restart local p2    # "paint":Landroid/graphics/Paint;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "layerDisabled":Z
    :cond_6
    if-nez p2, :cond_4

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto :goto_2
.end method

.method public setLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p0}, Landroid/view/View;->resetRtlProperties()V

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p0}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Layout parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutParams()V

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setLeft(I)V
    .locals 11
    .param p1, "left"    # I

    .prologue
    const/high16 v10, 0x10000000

    const/4 v9, 0x1

    iget v5, p0, Landroid/view/View;->mLeft:I

    if-eq p1, v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    .local v1, "matrixIsIdentity":Z
    if-eqz v1, :cond_5

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/view/View;->mLeft:I

    if-ge p1, v5, :cond_4

    move v2, p1

    .local v2, "minLeft":I
    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int v4, p1, v5

    .local v4, "xLoc":I
    :goto_0
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v6, v2

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_0
    :goto_1
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v6

    .local v3, "oldWidth":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v0, v5, v6

    .local v0, "height":I
    iput p1, p0, Landroid/view/View;->mLeft:I

    iget-object v5, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v5, p1}, Landroid/view/RenderNode;->setLeft(I)Z

    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5, v0, v3, v0}, Landroid/view/View;->sizeChange(IIII)V

    if-nez v1, :cond_1

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0, v9}, Landroid/view/View;->invalidate(Z)V

    :cond_1
    iput-boolean v9, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    iget-object v5, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # setter for: Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z
    invoke-static {v5, v9}, Landroid/view/View$ForegroundInfo;->access$1802(Landroid/view/View$ForegroundInfo;Z)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_3
    return-void

    .restart local v1    # "matrixIsIdentity":Z
    :cond_4
    iget v2, p0, Landroid/view/View;->mLeft:I

    .restart local v2    # "minLeft":I
    const/4 v4, 0x0

    .restart local v4    # "xLoc":I
    goto :goto_0

    .end local v2    # "minLeft":I
    .end local v4    # "xLoc":I
    :cond_5
    invoke-virtual {p0, v9}, Landroid/view/View;->invalidate(Z)V

    goto :goto_1
.end method

.method public setLeftTopRightBottom(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 2
    .param p1, "longClickable"    # Z

    .prologue
    const/high16 v1, 0x200000

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setMeasuredDimension(II)V
    .locals 6
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    invoke-static {p0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "optical":Z
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v4}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v4

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .local v0, "insets":Landroid/graphics/Insets;
    iget v4, v0, Landroid/graphics/Insets;->left:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    add-int v3, v4, v5

    .local v3, "opticalWidth":I
    iget v4, v0, Landroid/graphics/Insets;->top:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    add-int v2, v4, v5

    .local v2, "opticalHeight":I
    if-eqz v1, :cond_1

    .end local v3    # "opticalWidth":I
    :goto_0
    add-int/2addr p1, v3

    if-eqz v1, :cond_2

    .end local v2    # "opticalHeight":I
    :goto_1
    add-int/2addr p2, v2

    .end local v0    # "insets":Landroid/graphics/Insets;
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setMeasuredDimensionRaw(II)V

    return-void

    .restart local v0    # "insets":Landroid/graphics/Insets;
    .restart local v2    # "opticalHeight":I
    .restart local v3    # "opticalWidth":I
    :cond_1
    neg-int v3, v3

    goto :goto_0

    .end local v3    # "opticalWidth":I
    :cond_2
    neg-int v2, v2

    goto :goto_1
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .prologue
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .prologue
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    iget v0, p0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    goto :goto_0
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .param p1, "nextFocusDownId"    # I

    .prologue
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    return-void
.end method

.method public setNextFocusForwardId(I)V
    .locals 0
    .param p1, "nextFocusForwardId"    # I

    .prologue
    iput p1, p0, Landroid/view/View;->mNextFocusForwardId:I

    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .param p1, "nextFocusLeftId"    # I

    .prologue
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    return-void
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .param p1, "nextFocusRightId"    # I

    .prologue
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    return-void
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .param p1, "nextFocusUpId"    # I

    .prologue
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnApplyWindowInsetsListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnContextClickListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isContextClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setContextClickable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnContextClickListener:Landroid/view/View$OnContextClickListener;

    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnDragListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$802(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnGenericMotionListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnHoverListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$702(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnScrollChangeListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnScrollChangeListener:Landroid/view/View$OnScrollChangeListener;

    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$1402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    # setter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOpticalInsets(Landroid/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Insets;

    .prologue
    iput-object p1, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/view/ViewOutlineProvider;

    .prologue
    iput-object p1, p0, Landroid/view/View;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "overScrollMode"    # I

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    const/high16 v0, -0x80000000

    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPaddingInternal()V

    iput v0, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput p1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput p3, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    iput-boolean v1, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    iput-boolean v1, p0, Landroid/view/View;->mRightPaddingDefined:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->resetResolvedPaddingInternal()V

    iput p1, p0, Landroid/view/View;->mUserPaddingStart:I

    iput p3, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput-boolean v0, p0, Landroid/view/View;->mLeftPaddingDefined:Z

    iput-boolean v0, p0, Landroid/view/View;->mRightPaddingDefined:Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iput p1, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput p3, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    :goto_0
    return-void

    :pswitch_0
    iput p3, p0, Landroid/view/View;->mUserPaddingLeftInitial:I

    iput p1, p0, Landroid/view/View;->mUserPaddingRightInitial:I

    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPivotX(F)V
    .locals 3
    .param p1, "pivotX"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isPivotExplicitlySet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setPivotX(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    :cond_1
    return-void
.end method

.method public setPivotY(F)V
    .locals 3
    .param p1, "pivotY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isPivotExplicitlySet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setPivotY(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    :cond_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_1

    move v2, v0

    :goto_0
    if-eq p1, v2, :cond_2

    .local v0, "needsRefresh":Z
    :goto_1
    if-eqz p1, :cond_3

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    return-void

    .end local v0    # "needsRefresh":Z
    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .restart local v0    # "needsRefresh":Z
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2
.end method

.method public setRevealClip(ZFFF)V
    .locals 2
    .param p1, "shouldClip"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/RenderNode;->setRevealClip(ZFFF)Z

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    return-void
.end method

.method public final setRight(I)V
    .locals 10
    .param p1, "right"    # I

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget v4, p0, Landroid/view/View;->mRight:I

    if-eq p1, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v1

    .local v1, "matrixIsIdentity":Z
    if-eqz v1, :cond_5

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/view/View;->mRight:I

    if-ge p1, v4, :cond_4

    iget v2, p0, Landroid/view/View;->mRight:I

    .local v2, "maxRight":I
    :goto_0
    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v4, v2, v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v8, v8, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .end local v2    # "maxRight":I
    :cond_0
    :goto_1
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v5

    .local v3, "oldWidth":I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int v0, v4, v5

    .local v0, "height":I
    iput p1, p0, Landroid/view/View;->mRight:I

    iget-object v4, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    iget v5, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v4, v5}, Landroid/view/RenderNode;->setRight(I)Z

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v4, v0, v3, v0}, Landroid/view/View;->sizeChange(IIII)V

    if-nez v1, :cond_1

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    :cond_1
    iput-boolean v7, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    iget-object v4, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # setter for: Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z
    invoke-static {v4, v7}, Landroid/view/View$ForegroundInfo;->access$1802(Landroid/view/View$ForegroundInfo;Z)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .end local v0    # "height":I
    .end local v1    # "matrixIsIdentity":Z
    .end local v3    # "oldWidth":I
    :cond_3
    return-void

    .restart local v1    # "matrixIsIdentity":Z
    :cond_4
    move v2, p1

    .restart local v2    # "maxRight":I
    goto :goto_0

    .end local v2    # "maxRight":I
    :cond_5
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    goto :goto_1
.end method

.method public setRotation(F)V
    .locals 3
    .param p1, "rotation"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setRotation(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 3
    .param p1, "rotationX"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setRotationX(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_0
    return-void
.end method

.method public setRotationY(F)V
    .locals 3
    .param p1, "rotationY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setRotationY(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_0
    return-void
.end method

.method public setSaveEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x10000

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setSaveFromParentEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x20000000

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 3
    .param p1, "scaleX"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setScaleX(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 3
    .param p1, "scaleY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setScaleY(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_0
    return-void
.end method

.method public setScrollBarDefaultDelayBeforeFade(I)V
    .locals 1
    .param p1, "scrollBarDefaultDelayBeforeFade"    # I

    .prologue
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    return-void
.end method

.method public setScrollBarFadeDuration(I)V
    .locals 1
    .param p1, "scrollBarFadeDuration"    # I

    .prologue
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    return-void
.end method

.method public setScrollBarSize(I)V
    .locals 1
    .param p1, "scrollBarSize"    # I

    .prologue
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    const/high16 v2, 0x3000000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    return-void
.end method

.method public setScrollContainer(Z)V
    .locals 2
    .param p1, "isScrollContainer"    # Z

    .prologue
    const/high16 v1, 0x100000

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setScrollIndicators(I)V
    .locals 1
    .param p1, "indicators"    # I

    .prologue
    const/16 v0, 0x3f

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setScrollIndicators(II)V

    return-void
.end method

.method public setScrollIndicators(II)V
    .locals 3
    .param p1, "indicators"    # I
    .param p2, "mask"    # I

    .prologue
    shl-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0x3f00

    shl-int/lit8 p1, p1, 0x8

    and-int/2addr p1, p2

    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    or-int v0, p1, v1

    .local v0, "updatedFlags":I
    iget v1, p0, Landroid/view/View;->mPrivateFlags3:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Landroid/view/View;->mPrivateFlags3:I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->initializeScrollIndicatorsInternal()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setScrollX(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public setScrollY(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 2
    .param p1, "fadeScrollbars"    # Z

    .prologue
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .local v0, "scrollabilityCache":Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 5
    .param p1, "selected"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    if-eq v0, p1, :cond_1

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v0, -0x5

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    or-int/2addr v0, v4

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_2
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 2
    .param p1, "soundEffectsEnabled"    # Z

    .prologue
    const/high16 v1, 0x8000000

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStateListAnimator(Landroid/animation/StateListAnimator;)V
    .locals 2
    .param p1, "stateListAnimator"    # Landroid/animation/StateListAnimator;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mStateListAnimator:Landroid/animation/StateListAnimator;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mStateListAnimator:Landroid/animation/StateListAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mStateListAnimator:Landroid/animation/StateListAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/StateListAnimator;->setTarget(Landroid/view/View;)V

    :cond_2
    iput-object p1, p0, Landroid/view/View;->mStateListAnimator:Landroid/animation/StateListAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/animation/StateListAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/StateListAnimator;->setState([I)V

    goto :goto_0
.end method

.method public setSystemUiVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/view/View;->mSystemUiVisibility:I

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 3
    .param p1, "textAlignment"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRawTextAlignment()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xe001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0xd

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public setTextDirection(I)V
    .locals 2
    .param p1, "textDirection"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getRawTextDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1c1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x1c0

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    :cond_0
    return-void
.end method

.method public final setTop(I)V
    .locals 10
    .param p1, "top"    # I

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x1

    iget v5, p0, Landroid/view/View;->mTop:I

    if-eq p1, v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v0

    .local v0, "matrixIsIdentity":Z
    if-eqz v0, :cond_5

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/view/View;->mTop:I

    if-ge p1, v5, :cond_4

    move v1, p1

    .local v1, "minTop":I
    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int v4, p1, v5

    .local v4, "yLoc":I
    :goto_0
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0, v5, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_0
    :goto_1
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v6

    .local v3, "width":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v2, v5, v6

    .local v2, "oldHeight":I
    iput p1, p0, Landroid/view/View;->mTop:I

    iget-object v5, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    iget v6, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v5, v6}, Landroid/view/RenderNode;->setTop(I)Z

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v3, v5, v3, v2}, Landroid/view/View;->sizeChange(IIII)V

    if-nez v0, :cond_1

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Z)V

    :cond_1
    iput-boolean v8, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    iget-object v5, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # setter for: Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z
    invoke-static {v5, v8}, Landroid/view/View$ForegroundInfo;->access$1802(Landroid/view/View$ForegroundInfo;Z)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .end local v0    # "matrixIsIdentity":Z
    .end local v2    # "oldHeight":I
    .end local v3    # "width":I
    :cond_3
    return-void

    .restart local v0    # "matrixIsIdentity":Z
    :cond_4
    iget v1, p0, Landroid/view/View;->mTop:I

    .restart local v1    # "minTop":I
    const/4 v4, 0x0

    .restart local v4    # "yLoc":I
    goto :goto_0

    .end local v1    # "minTop":I
    .end local v4    # "yLoc":I
    :cond_5
    invoke-virtual {p0, v8}, Landroid/view/View;->invalidate(Z)V

    goto :goto_1
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 0
    .param p1, "delegate"    # Landroid/view/TouchDelegate;

    .prologue
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-void
.end method

.method public setTransitionAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0}, Landroid/view/View;->getFinalAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setAlpha(F)Z

    :cond_0
    return-void
.end method

.method public final setTransitionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "transitionName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/view/View;->mTransitionName:Ljava/lang/String;

    return-void
.end method

.method public setTransitionVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, -0xd

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    return-void
.end method

.method public setTranslationX(F)V
    .locals 3
    .param p1, "translationX"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationX(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 3
    .param p1, "translationY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationY(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    :cond_0
    return-void
.end method

.method public setTranslationZ(F)V
    .locals 3
    .param p1, "translationZ"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationZ(F)Z

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeededAndWasQuickRejected()V

    :cond_0
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1
    .param p1, "verticalFadingEdgeEnabled"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    :cond_1
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    return-void
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 2
    .param p1, "willNotCacheDrawing"    # Z

    .prologue
    const/high16 v1, 0x20000

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWillNotDraw(Z)V
    .locals 2
    .param p1, "willNotDraw"    # Z

    .prologue
    const/16 v1, 0x80

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setZ(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "parent":Landroid/view/ViewParent;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ame":Ljava/lang/AbstractMethodError;
    invoke-interface {v1, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@android:view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mStartActivityRequestWho:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View;->mStartActivityRequestWho:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/content/Context;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 23
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLocalState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    const/16 v19, 0x0

    .local v19, "okay":Z
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .local v21, "shadowSize":Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .local v22, "shadowTouchPoint":Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Drag shadow dimensions must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .local v8, "surface":Landroid/view/Surface;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .local v11, "token":Landroid/os/IBinder;
    if-eqz v11, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .local v17, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .local v20, "root":Landroid/view/ViewRootImpl;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v3

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "root":Landroid/view/ViewRootImpl;
    :cond_2
    :goto_0
    return v19

    .restart local v11    # "token":Landroid/os/IBinder;
    .restart local v17    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v3

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v11    # "token":Landroid/os/IBinder;
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/Exception;
    const-string v3, "View"

    const-string v4, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 7
    .param p1, "axes"    # I

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "p":Landroid/view/ViewParent;
    move-object v0, p0

    .local v0, "child":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2, v0, p0, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v2, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    invoke-interface {v2, v0, p0, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/AbstractMethodError;
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewParent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not implement interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "method onStartNestedScroll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/AbstractMethodError;
    :cond_1
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_2

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    :cond_2
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "p":Landroid/view/ViewParent;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mNestedScrollingParent:Landroid/view/ViewParent;

    :cond_0
    return-void
.end method

.method public toGlobalMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "info":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .local v1, "m":Landroid/graphics/Matrix;
    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toLocalMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .local v0, "info":Landroid/view/View$AttachInfo;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mTmpMatrix:Landroid/graphics/Matrix;

    .local v1, "m":Landroid/graphics/Matrix;
    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v7, 0x46

    const/16 v9, 0x44

    const/16 v12, 0x2c

    const/16 v11, 0x20

    const/16 v8, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x7b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    sparse-switch v6, :sswitch_data_0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    if-ne v6, v10, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_2

    const/16 v6, 0x45

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x80

    const/16 v10, 0x80

    if-ne v6, v10, :cond_3

    move v6, v8

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_4

    const/16 v6, 0x48

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_5

    const/16 v6, 0x56

    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_6

    const/16 v6, 0x43

    :goto_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v10, 0x200000

    and-int/2addr v6, v10

    if-eqz v6, :cond_7

    const/16 v6, 0x4c

    :goto_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v10, 0x800000

    and-int/2addr v6, v10

    if-eqz v6, :cond_8

    const/16 v6, 0x58

    :goto_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    const/16 v6, 0x52

    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_a

    :goto_a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_b

    const/16 v6, 0x53

    :goto_b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_c

    const/16 v6, 0x70

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_c
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x10000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    const/16 v6, 0x48

    :goto_d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_f

    const/16 v6, 0x41

    :goto_e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_10

    const/16 v6, 0x49

    :goto_f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x600000

    and-int/2addr v6, v7

    if-eqz v6, :cond_11

    :goto_10
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .local v1, "id":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const-string v6, " #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .local v4, "r":Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    const/high16 v6, -0x1000000

    and-int/2addr v6, v1

    sparse-switch v6, :sswitch_data_1

    :try_start_0
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "pkgname":Ljava/lang/String;
    :goto_11
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "typename":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "entryname":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "entryname":Ljava/lang/String;
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "typename":Ljava/lang/String;
    :cond_0
    :goto_12
    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .end local v1    # "id":I
    :sswitch_0
    const/16 v6, 0x56

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_1
    const/16 v6, 0x49

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_2
    const/16 v6, 0x47

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    move v6, v8

    goto/16 :goto_1

    :cond_2
    move v6, v8

    goto/16 :goto_2

    :cond_3
    move v6, v9

    goto/16 :goto_3

    :cond_4
    move v6, v8

    goto/16 :goto_4

    :cond_5
    move v6, v8

    goto/16 :goto_5

    :cond_6
    move v6, v8

    goto/16 :goto_6

    :cond_7
    move v6, v8

    goto/16 :goto_7

    :cond_8
    move v6, v8

    goto/16 :goto_8

    :cond_9
    move v6, v8

    goto/16 :goto_9

    :cond_a
    move v7, v8

    goto/16 :goto_a

    :cond_b
    move v6, v8

    goto/16 :goto_b

    :cond_c
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_d

    const/16 v6, 0x50

    :goto_13
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_d
    move v6, v8

    goto :goto_13

    :cond_e
    move v6, v8

    goto/16 :goto_d

    :cond_f
    move v6, v8

    goto/16 :goto_e

    :cond_10
    move v6, v8

    goto/16 :goto_f

    :cond_11
    move v9, v8

    goto/16 :goto_10

    .restart local v1    # "id":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    :sswitch_3
    :try_start_1
    const-string v3, "app"

    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_11

    .end local v3    # "pkgname":Ljava/lang/String;
    :sswitch_4
    const-string v3, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_11

    .end local v3    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_12

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .local v1, "vp":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    iget v3, v1, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, v1, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .end local v1    # "vp":Landroid/view/View;
    :cond_0
    :goto_0
    iget v3, p0, Landroid/view/View;->mLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    return-void

    :cond_2
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    .local v2, "vr":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    const/4 v3, 0x0

    iget v4, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0
.end method

.method public transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 5
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .local v1, "vp":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    iget v3, v1, Landroid/view/View;->mScrollX:I

    int-to-float v3, v3

    iget v4, v1, Landroid/view/View;->mScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .end local v1    # "vp":Landroid/view/View;
    :cond_0
    :goto_0
    iget v3, p0, Landroid/view/View;->mLeft:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    return-void

    :cond_2
    instance-of v3, v0, Landroid/view/ViewRootImpl;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewRootImpl;

    .local v2, "vr":Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p1}, Landroid/view/ViewRootImpl;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    const/4 v3, 0x0

    iget v4, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method transformRect(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .local v0, "boundingRect":Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .end local v0    # "boundingRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method unFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public updateDisplayListIfDirty()Landroid/view/RenderNode;
    .locals 12

    .prologue
    const v11, 0x8020

    const v10, -0x600001

    const/4 v9, 0x1

    iget-object v5, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .local v5, "renderNode":Landroid/view/RenderNode;
    invoke-virtual {p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-object v5

    :cond_0
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/view/RenderNode;->isValid()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-eqz v7, :cond_7

    :cond_1
    invoke-virtual {v5}, Landroid/view/RenderNode;->isValid()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-nez v7, :cond_2

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v7, v11

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p0}, Landroid/view/View;->dispatchGetDisplayList()V

    goto :goto_0

    :cond_2
    iput-boolean v9, p0, Landroid/view/View;->mRecreateDisplayList:Z

    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v7, v8

    .local v6, "width":I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int v2, v7, v8

    .local v2, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v4

    .local v4, "layerType":I
    invoke-virtual {v5, v6, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v1

    .local v1, "canvas":Landroid/view/DisplayListCanvas;
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v7, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    invoke-virtual {v1, v7}, Landroid/view/DisplayListCanvas;->setHighContrastText(Z)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v3

    .local v3, "layer":Landroid/view/HardwareLayer;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7, v8, v9}, Landroid/view/DisplayListCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    invoke-virtual {v5, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setDisplayListProperties(Landroid/view/RenderNode;)V

    goto :goto_0

    :cond_4
    if-ne v4, v9, :cond_5

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {p0, v7}, Landroid/view/View;->buildDrawingCache(Z)V

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v7, v8, v9}, Landroid/view/DisplayListCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "cache":Landroid/graphics/Bitmap;
    .end local v3    # "layer":Landroid/view/HardwareLayer;
    :catchall_0
    move-exception v7

    invoke-virtual {v5, v1}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setDisplayListProperties(Landroid/view/RenderNode;)V

    throw v7

    .restart local v3    # "layer":Landroid/view/HardwareLayer;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    iget v7, p0, Landroid/view/View;->mScrollX:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, p0, Landroid/view/View;->mScrollY:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/view/DisplayListCanvas;->translate(FF)V

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v7, v11

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v7, v7, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v7, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/view/View;->mOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v1    # "canvas":Landroid/view/DisplayListCanvas;
    .end local v2    # "height":I
    .end local v3    # "layer":Landroid/view/HardwareLayer;
    .end local v4    # "layerType":I
    .end local v6    # "width":I
    :cond_7
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v7, v11

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 3
    .param p1, "localValue"    # I
    .param p2, "localChanges"    # I

    .prologue
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int v0, v1, v2

    .local v0, "val":I
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mForegroundInfo:Landroid/view/View$ForegroundInfo;

    # getter for: Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/view/View$ForegroundInfo;->access$1300(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotCacheDrawing()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x20000

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotDraw()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
