.class public Landroid/drm/DrmStore$DrmObjectMime;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmObjectMime"
.end annotation


# static fields
.field public static final MIME_DRM_CONTENT:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final MIME_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final MIME_RIGHTS_WBXML:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final MIME_RIGHTS_XML:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
