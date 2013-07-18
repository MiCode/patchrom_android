.class public Landroid/drm/DrmStore$DrmFileExt;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmFileExt"
.end annotation


# static fields
.field public static final EXT_DRM_CONTENT:Ljava/lang/String; = ".dcf"

.field public static final EXT_DRM_MESSAGE:Ljava/lang/String; = ".dm"

.field public static final EXT_RIGHTS_WBXML:Ljava/lang/String; = ".drc"

.field public static final EXT_RIGHTS_XML:Ljava/lang/String; = ".dr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
