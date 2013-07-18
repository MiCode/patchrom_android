.class public Landroid/drm/DrmStore$RightsStatus;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RightsStatus"
.end annotation


# static fields
.field public static final RIGHTS_EXPIRED:I = 0x2

.field public static final RIGHTS_INVALID:I = 0x1

.field public static final RIGHTS_NOT_ACQUIRED:I = 0x3

.field public static final RIGHTS_VALID:I = 0x0

.field public static final SECURE_TIMER_INVALID:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
