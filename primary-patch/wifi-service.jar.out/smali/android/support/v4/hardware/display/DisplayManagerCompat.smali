.class public abstract Landroid/support/v4/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;,
        Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;
    }
.end annotation


# static fields
.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field private static final sInstances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/hardware/display/DisplayManagerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/hardware/display/DisplayManagerCompat;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v3, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/hardware/display/DisplayManagerCompat;

    .local v0, "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v1, "version":I
    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    new-instance v0, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;

    .end local v0    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    invoke-direct {v0, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$JellybeanMr1Impl;-><init>(Landroid/content/Context;)V

    .restart local v0    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    :goto_0
    sget-object v2, Landroid/support/v4/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "version":I
    :cond_0
    monitor-exit v3

    return-object v0

    .restart local v1    # "version":I
    :cond_1
    new-instance v0, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;

    .end local v0    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    invoke-direct {v0, p0}, Landroid/support/v4/hardware/display/DisplayManagerCompat$LegacyImpl;-><init>(Landroid/content/Context;)V

    .restart local v0    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    goto :goto_0

    .end local v0    # "instance":Landroid/support/v4/hardware/display/DisplayManagerCompat;
    .end local v1    # "version":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public abstract getDisplay(I)Landroid/view/Display;
.end method

.method public abstract getDisplays()[Landroid/view/Display;
.end method

.method public abstract getDisplays(Ljava/lang/String;)[Landroid/view/Display;
.end method
