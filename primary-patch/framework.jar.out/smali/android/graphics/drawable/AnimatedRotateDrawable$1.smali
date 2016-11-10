.class Landroid/graphics/drawable/AnimatedRotateDrawable$1;
.super Ljava/lang/Object;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedRotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    # getter for: Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$200(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v1

    # += operator for: Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$116(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    # getter for: Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$100(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    # getter for: Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F
    invoke-static {v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$200(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/4 v1, 0x0

    # setter for: Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$102(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->invalidateSelf()V

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    # invokes: Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->access$300(Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    return-void
.end method
