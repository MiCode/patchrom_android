.class Landroid/view/AccessibilityInteractionController$1;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Landroid/util/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/PoolableManager",
        "<",
        "Landroid/view/AccessibilityInteractionController$SomeArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$1;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Landroid/util/Poolable;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$1;->newInstance()Landroid/view/AccessibilityInteractionController$SomeArgs;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Landroid/view/AccessibilityInteractionController$SomeArgs;
    .locals 3

    .prologue
    new-instance v0, Landroid/view/AccessibilityInteractionController$SomeArgs;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$1;->this$0:Landroid/view/AccessibilityInteractionController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/AccessibilityInteractionController$SomeArgs;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/AccessibilityInteractionController$1;->onAcquired(Landroid/view/AccessibilityInteractionController$SomeArgs;)V

    return-void
.end method

.method public onAcquired(Landroid/view/AccessibilityInteractionController$SomeArgs;)V
    .locals 0
    .parameter "info"

    .prologue
    return-void
.end method

.method public bridge synthetic onReleased(Landroid/util/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/AccessibilityInteractionController$1;->onReleased(Landroid/view/AccessibilityInteractionController$SomeArgs;)V

    return-void
.end method

.method public onReleased(Landroid/view/AccessibilityInteractionController$SomeArgs;)V
    .locals 0
    .parameter "info"

    .prologue
    #calls: Landroid/view/AccessibilityInteractionController$SomeArgs;->clear()V
    invoke-static {p1}, Landroid/view/AccessibilityInteractionController$SomeArgs;->access$200(Landroid/view/AccessibilityInteractionController$SomeArgs;)V

    return-void
.end method
