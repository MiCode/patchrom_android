.class public Landroid/widget/WeatherAnimateView;
.super Landroid/widget/RelativeLayout;
.source "WeatherAnimateView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x320

.field private static final IMAGEVIEW_ALPHA_OPAQUE:I = 0x1

.field private static final IMAGEVIEW_ALPHA_TRANSPARENT:I = 0x0

.field private static final PROPERTY_IMAGEVIEW_ALPHA:Ljava/lang/String; = "alpha"

.field private static final TAG:Ljava/lang/String; = "WeatherAnimationView"


# instance fields
.field private mFadeInAnimator:Landroid/animation/Animator;

.field private mFadeOutAnimator:Landroid/animation/Animator;

.field private mInView:Landroid/widget/ImageView;

.field private mLastRes:Landroid/graphics/Bitmap;

.field private mOutView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/widget/WeatherAnimateView;->initAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/widget/WeatherAnimateView;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/WeatherAnimateView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/WeatherAnimateView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/WeatherAnimateView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/WeatherAnimateView;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method private initAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x320

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string v0, "WeatherAnimationView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tag_weather_out_view"

    invoke-virtual {p0, v0}, Landroid/widget/WeatherAnimateView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    const-string v0, "tag_weather_in_view"

    invoke-virtual {p0, v0}, Landroid/widget/WeatherAnimateView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/widget/WeatherAnimateView;->initAnimation()V

    return-void
.end method

.method public setImageViewBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "res"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v1, "WeatherAnimationView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImageViewBitmap mLastResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    .local v0, tmpImageView:Landroid/widget/ImageView;
    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/WeatherAnimateView;->mInView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/widget/WeatherAnimateView$1;

    invoke-direct {v2, p0, p1}, Landroid/widget/WeatherAnimateView$1;-><init>(Landroid/widget/WeatherAnimateView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/widget/WeatherAnimateView;->mOutView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/widget/WeatherAnimateView;->mFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public setLastRes(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "res"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput-object p1, p0, Landroid/widget/WeatherAnimateView;->mLastRes:Landroid/graphics/Bitmap;

    return-void
.end method
