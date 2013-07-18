.class public Landroid/drm/DrmStore$NTPResult;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NTPResult"
.end annotation


# static fields
.field public static final NTP_SYNC_NETWORK_ERROR:I = -0x3

.field public static final NTP_SYNC_NETWORK_TIMEOUT:I = -0x1

.field public static final NTP_SYNC_SERVER_TIMEOUT:I = -0x2

.field public static final NTP_SYNC_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
