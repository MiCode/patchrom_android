.class Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserAvatar.java"


# static fields
.field private static final ACTIVE_ALPHA:F = 1.0f

.field private static final ACTIVE_SCALE:F = 1.5f

.field private static final ACTIVE_TEXT_ALPHA:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final INACTIVE_ALPHA:F = 1.0f

.field private static final INACTIVE_TEXT_ALPHA:F = 0.5f

.field private static final SWITCH_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActiveAlpha:F

.field private final mActiveScale:F

.field private final mActiveTextAlpha:F

.field private final mFrameColor:I

.field private final mFrameShadowColor:I

.field private mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

.field private final mHighlightColor:I

.field private final mIconSize:F

.field private final mInactiveAlpha:F

.field private final mInactiveTextAlpha:F

.field private mInit:Z

.field private final mShadowRadius:F

.field private final mStroke:F

.field private final mTextColor:I

.field private mTouched:Z

.field private mUserImage:Landroid/widget/ImageView;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserName:Landroid/widget/TextView;

.field private mUserSelector:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x1060069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    const v1, 0x1050072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    const v1, 0x1050070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    const v1, 0x1050071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    const v1, 0x1060067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    const v1, 0x1060068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    const v1, 0x106006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    const/high16 v1, 0x3fc0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    return-object v0
.end method

.method public static fromXml(ILandroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .locals 3
    .parameter "resId"
    .parameter "context"
    .parameter "userSelector"
    .parameter "info"

    .prologue
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .local v0, icon:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0, p3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->init(Landroid/content/pm/UserInfo;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V

    return-object v0
.end method


# virtual methods
.method public getUserInfo()Landroid/content/pm/UserInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public init(Landroid/content/pm/UserInfo;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V
    .locals 9
    .parameter "user"
    .parameter "userSelector"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    const v0, 0x10202b9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    const v0, 0x10202ba

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    const/4 v1, 0x0

    .local v1, icon:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->rewriteIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10802be

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    return-void

    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to open profile icon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected rewriteIconPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system"

    const-string v1, "data"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    return-object p1
.end method

.method public setActive(ZZLjava/lang/Runnable;)V
    .locals 7
    .parameter "active"
    .parameter "animate"
    .parameter "onComplete"

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;

    .local v0, parent:Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;
    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;->setTopChild(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    const v3, 0x1040549

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    .end local v0           #parent:Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    const/16 v2, 0x96

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method updateVisualsForActive(ZZILjava/lang/Runnable;)V
    .locals 11
    .parameter "active"
    .parameter "animate"
    .parameter "duration"
    .parameter "onComplete"

    .prologue
    const/high16 v3, 0x3f80

    const/16 v10, 0xff

    const/high16 v1, 0x437f

    if-eqz p1, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    .local v5, finalAlpha:F
    :goto_0
    if-eqz p1, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    .local v4, initAlpha:F
    :goto_1
    if-eqz p1, :cond_3

    .local v3, finalScale:F
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->getScale()F

    move-result v2

    .local v2, initScale:F
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .local v7, finalTextAlpha:I
    :goto_3
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .local v6, initTextAlpha:I
    :goto_4
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .local v8, textColor:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .local v9, va:Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;FFFFII)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$2;

    invoke-direct {v0, p0, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v0, p3

    invoke-virtual {v9, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .end local v9           #va:Landroid/animation/ValueAnimator;
    :cond_0
    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    return-void

    .end local v2           #initScale:F
    .end local v3           #finalScale:F
    .end local v4           #initAlpha:F
    .end local v5           #finalAlpha:F
    .end local v6           #initTextAlpha:I
    .end local v7           #finalTextAlpha:I
    .end local v8           #textColor:I
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    goto :goto_0

    .restart local v5       #finalAlpha:F
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    goto :goto_1

    .restart local v4       #initAlpha:F
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    div-float/2addr v3, v0

    goto :goto_2

    .restart local v2       #initScale:F
    .restart local v3       #finalScale:F
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_3

    .restart local v7       #finalTextAlpha:I
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    goto :goto_4

    .restart local v6       #initTextAlpha:I
    .restart local v8       #textColor:I
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-static {v7, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
