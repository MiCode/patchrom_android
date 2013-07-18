.class public Landroid/drm/DrmStore$DrmInfoType;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmInfoType"
.end annotation


# static fields
.field public static final KEY_DRM_CHECK_CLOCK:Ljava/lang/String; = "checkClock"

.field public static final KEY_DRM_INSTALL_DRM_MSG:Ljava/lang/String; = "installDrmMsg"

.field public static final KEY_DRM_SAVE_DEVICE_ID:Ljava/lang/String; = "saveDeviceId"

.field public static final KEY_DRM_UPDATE_CLOCK:Ljava/lang/String; = "updateClock"

.field public static final TYPE_DRM_CHECK_CLOCK:I = 0x7d6

.field public static final TYPE_DRM_INSTALL_DRM_MSG:I = 0x7da

.field public static final TYPE_DRM_LOAD_CLOCK:I = 0x7d4

.field public static final TYPE_DRM_LOAD_DEVICE_ID:I = 0x7d7

.field public static final TYPE_DRM_LOAD_SECURE_TIME:I = 0x7d9

.field public static final TYPE_DRM_SAVE_CLOCK:I = 0x7d5

.field public static final TYPE_DRM_SAVE_DEVICE_ID:I = 0x7d8

.field public static final TYPE_DRM_UPDATE_CLOCK:I = 0x7d1

.field public static final TYPE_DRM_UPDATE_OFFSET:I = 0x7d3

.field public static final TYPE_DRM_UPDATE_TIME_BASE:I = 0x7d2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
