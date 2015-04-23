.class Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemAnimationInfo"
.end annotation


# static fields
.field static final FADE_IN:I = 0x1

.field static final FADE_OUT:I = 0x2

.field static final MOVE:I


# instance fields
.field animType:I

.field animator:Landroid/animation/Animator;

.field id:I

.field menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;


# direct methods
.method constructor <init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "info"    # Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .param p3, "anim"    # Landroid/animation/Animator;
    .param p4, "animType"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iput-object p3, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    iput p4, p0, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    return-void
.end method
