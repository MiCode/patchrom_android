.class Landroid/drm/DrmUtils$DrmScanCompletedProxy;
.super Ljava/lang/Object;
.source "DrmUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrmScanCompletedProxy"
.end annotation


# instance fields
.field private mClient:Landroid/drm/DrmUtils$OnDrmScanCompletedListener;

.field private mScanCount:I

.field private mScannedCount:I


# direct methods
.method public constructor <init>(Landroid/drm/DrmUtils$OnDrmScanCompletedListener;I)V
    .locals 1
    .parameter "callback"
    .parameter "scanCount"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    iput p2, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mScanCount:I

    iput-object p1, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mClient:Landroid/drm/DrmUtils$OnDrmScanCompletedListener;

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "path"
    .parameter "uri"

    .prologue
    iget v0, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    iget-object v0, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mClient:Landroid/drm/DrmUtils$OnDrmScanCompletedListener;

    invoke-interface {v0, p1, p2}, Landroid/drm/DrmUtils$OnDrmScanCompletedListener;->onScanCompletedOne(Ljava/lang/String;Landroid/net/Uri;)V

    iget v0, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    iget v1, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mScanCount:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mClient:Landroid/drm/DrmUtils$OnDrmScanCompletedListener;

    iget v1, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    invoke-interface {v0, v1}, Landroid/drm/DrmUtils$OnDrmScanCompletedListener;->onScanCompletedAll(I)V

    :cond_0
    const-string v0, "DrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanCompleted() : path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanCompleted() : mScannedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mScannedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScanCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/drm/DrmUtils$DrmScanCompletedProxy;->mScanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
