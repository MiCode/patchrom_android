.class public Landroid/widget/AlphaLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AlphaLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ANIMATION:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Landroid/widget/AlphaLinearLayout;->ANIMATION:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/widget/AlphaLinearLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Landroid/widget/AlphaLinearLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    sget-object v0, Landroid/widget/AlphaLinearLayout;->ANIMATION:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public startAlpha(I)V
    .locals 1
    .parameter "alph"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    sget-object v0, Landroid/widget/AlphaLinearLayout;->ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/AlphaLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
