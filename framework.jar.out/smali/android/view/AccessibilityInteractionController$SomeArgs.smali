.class Landroid/view/AccessibilityInteractionController$SomeArgs;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SomeArgs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/AccessibilityInteractionController$SomeArgs;",
        ">;"
    }
.end annotation


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field private mIsPooled:Z

.field private mNext:Landroid/view/AccessibilityInteractionController$SomeArgs;

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$SomeArgs;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/AccessibilityInteractionController$SomeArgs;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController$SomeArgs;->clear()V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    iput v0, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi1:I

    iput v0, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi2:I

    iput v0, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->argi3:I

    return-void
.end method


# virtual methods
.method public getNextPoolable()Landroid/view/AccessibilityInteractionController$SomeArgs;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->mNext:Landroid/view/AccessibilityInteractionController$SomeArgs;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$SomeArgs;->getNextPoolable()Landroid/view/AccessibilityInteractionController$SomeArgs;

    move-result-object v0

    return-object v0
.end method

.method public isPooled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->mIsPooled:Z

    return v0
.end method

.method public setNextPoolable(Landroid/view/AccessibilityInteractionController$SomeArgs;)V
    .locals 0
    .parameter "args"

    .prologue
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->mNext:Landroid/view/AccessibilityInteractionController$SomeArgs;

    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/view/AccessibilityInteractionController$SomeArgs;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/AccessibilityInteractionController$SomeArgs;->setNextPoolable(Landroid/view/AccessibilityInteractionController$SomeArgs;)V

    return-void
.end method

.method public setPooled(Z)V
    .locals 0
    .parameter "isPooled"

    .prologue
    iput-boolean p1, p0, Landroid/view/AccessibilityInteractionController$SomeArgs;->mIsPooled:Z

    return-void
.end method
