.class Landroid/graphics/drawable/RippleForeground$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/RippleForeground;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/RippleForeground;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    const/4 v1, 0x1

    # setter for: Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z
    invoke-static {v0, v1}, Landroid/graphics/drawable/RippleForeground;->access$002(Landroid/graphics/drawable/RippleForeground;Z)Z

    return-void
.end method
