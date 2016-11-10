.class public abstract Landroid/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field static final NULL_CALLBACK:Landroid/app/SharedElementCallback;


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/app/SharedElementCallback$1;

    invoke-direct {v0}, Landroid/app/SharedElementCallback$1;-><init>()V

    sput-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 9
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .prologue
    instance-of v7, p1, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    invoke-static {v3}, Landroid/transition/TransitionUtils;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "sharedElement:snapshot:bitmap"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v7, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v8, :cond_1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v7, 0x9

    new-array v6, v7, [F

    .local v6, "values":[F
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v7, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "values":[F
    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object v7, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    if-nez v7, :cond_3

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v7, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    :goto_1
    iget-object v7, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v7, p3}, Landroid/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v7, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .prologue
    const/4 v6, 0x0

    .local v6, "view":Landroid/view/View;
    instance-of v7, p2, Landroid/os/Bundle;

    if-eqz v7, :cond_2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "sharedElement:snapshot:bitmap"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const/4 v7, 0x0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v7

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v2, "imageView":Landroid/widget/ImageView;
    move-object v6, v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v7, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v7, v8, :cond_1

    const-string v7, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    .local v5, "values":[F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v5    # "values":[F
    :cond_1
    :goto_1
    move-object v7, v6

    goto :goto_0

    :cond_2
    instance-of v7, p2, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/view/View;

    .end local v6    # "view":Landroid/view/View;
    invoke-direct {v6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "resources":Landroid/content/res/Resources;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .param p3, "listener"    # Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p3}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
