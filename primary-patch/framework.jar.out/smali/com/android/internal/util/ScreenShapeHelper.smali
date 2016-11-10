.class public Lcom/android/internal/util/ScreenShapeHelper;
.super Ljava/lang/Object;
.source "ScreenShapeHelper.java"


# static fields
.field private static final IS_EMULATOR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "goldfish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/ScreenShapeHelper;->IS_EMULATOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowOutsetBottomPx(Landroid/content/res/Resources;)I
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    sget-boolean v0, Lcom/android/internal/util/ScreenShapeHelper;->IS_EMULATOR:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.emu.win_outset_bottom_px"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x10e008c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method
