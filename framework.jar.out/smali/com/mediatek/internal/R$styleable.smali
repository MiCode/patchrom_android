.class public final Lcom/mediatek/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BladeView:[I = null

.field public static final BladeView_bladeIndicator:I = 0x6

.field public static final BladeView_bladeIndicatorHeight:I = 0xa

.field public static final BladeView_bladeIndicatorWidth:I = 0x9

.field public static final BladeView_disablePromptColor:I = 0xe

.field public static final BladeView_disableSectionColor:I = 0xc

.field public static final BladeView_enablePromptColor:I = 0xd

.field public static final BladeView_enableSectionColor:I = 0xb

.field public static final BladeView_fullSectionsId:I = 0x3

.field public static final BladeView_indicatorTopsId:I = 0x7

.field public static final BladeView_promptAnimationDuration:I = 0x8

.field public static final BladeView_promptHorzOffset:I = 0x0

.field public static final BladeView_promptVertOffset:I = 0x1

.field public static final BladeView_replacedSectionsId:I = 0x4

.field public static final BladeView_sectionBaselinesId:I = 0x5

.field public static final BladeView_sectionFontSize:I = 0x2

.field public static final BookmarkView:[I = null

.field public static final BookmarkView_dotGap:I = 0x3

.field public static final BookmarkView_imageDispHeight:I = 0x1

.field public static final BookmarkView_imageDispWidth:I = 0x0

.field public static final BookmarkView_imageReflection:I = 0x4

.field public static final BookmarkView_infoColor:I = 0x7

.field public static final BookmarkView_maxZoomOut:I = 0x5

.field public static final BookmarkView_spaceBetweenItems:I = 0x2

.field public static final BookmarkView_titleColor:I = 0x6

.field public static final GlowPadView:[I = null

.field public static final GlowPadView_alwaysTrackFinger:I = 0xe

.field public static final GlowPadView_android_gravity:I = 0x0

.field public static final GlowPadView_directionDescriptions:I = 0x3

.field public static final GlowPadView_expandDrawables:I = 0xd

.field public static final GlowPadView_feedbackCount:I = 0xc

.field public static final GlowPadView_glowRadius:I = 0x9

.field public static final GlowPadView_handleDrawable:I = 0x4

.field public static final GlowPadView_innerRadius:I = 0x7

.field public static final GlowPadView_outerRadius:I = 0x8

.field public static final GlowPadView_outerRingDrawable:I = 0x5

.field public static final GlowPadView_pointDrawable:I = 0x6

.field public static final GlowPadView_snapMargin:I = 0xb

.field public static final GlowPadView_targetDescriptions:I = 0x2

.field public static final GlowPadView_targetDrawables:I = 0x1

.field public static final GlowPadView_vibrationDuration:I = 0xa

.field public static final MTKAppWidgetProviderInfo:[I = null

.field public static final MTKAppWidgetProviderInfo_hasUsedCustomerView:I = 0x0

.field public static final MTKManifest:[I = null

.field public static final MTKManifest_isThemePackage:I = 0x0

.field public static final MTKManifest_themeNameId:I = 0x1

.field public static final UnReadEventView:[I

.field public static final UnReadEventView_newEventDrawables:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0xf

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/internal/R$styleable;->BladeView:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/internal/R$styleable;->BookmarkView:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/internal/R$styleable;->GlowPadView:[I

    new-array v0, v3, [I

    const v1, 0x2010011

    aput v1, v0, v2

    sput-object v0, Lcom/mediatek/internal/R$styleable;->MTKAppWidgetProviderInfo:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/internal/R$styleable;->MTKManifest:[I

    new-array v0, v3, [I

    const v1, 0x2010027

    aput v1, v0, v2

    sput-object v0, Lcom/mediatek/internal/R$styleable;->UnReadEventView:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x2t
        0x1t 0x0t 0x1t 0x2t
        0x2t 0x0t 0x1t 0x2t
        0x3t 0x0t 0x1t 0x2t
        0x4t 0x0t 0x1t 0x2t
        0x5t 0x0t 0x1t 0x2t
        0x6t 0x0t 0x1t 0x2t
        0x7t 0x0t 0x1t 0x2t
        0x8t 0x0t 0x1t 0x2t
        0x9t 0x0t 0x1t 0x2t
        0xat 0x0t 0x1t 0x2t
        0xbt 0x0t 0x1t 0x2t
        0xct 0x0t 0x1t 0x2t
        0xdt 0x0t 0x1t 0x2t
        0xet 0x0t 0x1t 0x2t
    .end array-data

    :array_1
    .array-data 0x4
        0x12t 0x0t 0x1t 0x2t
        0x13t 0x0t 0x1t 0x2t
        0x14t 0x0t 0x1t 0x2t
        0x15t 0x0t 0x1t 0x2t
        0x16t 0x0t 0x1t 0x2t
        0x17t 0x0t 0x1t 0x2t
        0x18t 0x0t 0x1t 0x2t
        0x19t 0x0t 0x1t 0x2t
    .end array-data

    :array_2
    .array-data 0x4
        0xaft 0x0t 0x1t 0x1t
        0x1at 0x0t 0x1t 0x2t
        0x1bt 0x0t 0x1t 0x2t
        0x1ct 0x0t 0x1t 0x2t
        0x1dt 0x0t 0x1t 0x2t
        0x1et 0x0t 0x1t 0x2t
        0x1ft 0x0t 0x1t 0x2t
        0x20t 0x0t 0x1t 0x2t
        0x21t 0x0t 0x1t 0x2t
        0x22t 0x0t 0x1t 0x2t
        0x23t 0x0t 0x1t 0x2t
        0x24t 0x0t 0x1t 0x2t
        0x25t 0x0t 0x1t 0x2t
        0x26t 0x0t 0x1t 0x2t
        0x28t 0x0t 0x1t 0x2t
    .end array-data

    :array_3
    .array-data 0x4
        0xft 0x0t 0x1t 0x2t
        0x10t 0x0t 0x1t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
