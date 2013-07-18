.class public Landroid/drm/DrmStore$MetadataKey;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetadataKey"
.end annotation


# static fields
.field public static final META_KEY_CONTENT_DESCRIPTION:Ljava/lang/String; = "drm_content_description"

.field public static final META_KEY_CONTENT_NAME:Ljava/lang/String; = "drm_content_name"

.field public static final META_KEY_CONTENT_URI:Ljava/lang/String; = "drm_content_uri"

.field public static final META_KEY_CONTENT_VENDOR:Ljava/lang/String; = "drm_content_vendor"

.field public static final META_KEY_DATALEN:Ljava/lang/String; = "drm_dataLen"

.field public static final META_KEY_ICON_URI:Ljava/lang/String; = "drm_icon_uri"

.field public static final META_KEY_IS_DRM:Ljava/lang/String; = "is_drm"

.field public static final META_KEY_METHOD:Ljava/lang/String; = "drm_method"

.field public static final META_KEY_MIME:Ljava/lang/String; = "drm_mime_type"

.field public static final META_KEY_OFFSET:Ljava/lang/String; = "drm_offset"

.field public static final META_KEY_RIGHTS_ISSUER:Ljava/lang/String; = "drm_rights_issuer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
