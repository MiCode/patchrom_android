.class public final Lcom/android/server/PerfService;
.super Ljava/lang/Object;
.source "PerfService.java"


# static fields
.field public static final SCN_APP_ROTATE:I = 0x2

.field public static final SCN_APP_SWITCH:I = 0x1

.field public static final SCN_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PerfService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativePerfBoostDisable(I)I
.end method

.method public static native nativePerfBoostEnable(I)I
.end method
