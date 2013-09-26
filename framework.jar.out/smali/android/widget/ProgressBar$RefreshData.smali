.class Landroid/widget/ProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/widget/ProgressBar$RefreshData;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fromUser:Z

.field public id:I

.field private mIsPooled:Z

.field private mNext:Landroid/widget/ProgressBar$RefreshData;

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/widget/ProgressBar$RefreshData$1;

    invoke-direct {v0}, Landroid/widget/ProgressBar$RefreshData$1;-><init>()V

    const/16 v1, 0x18

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/widget/ProgressBar$RefreshData;->sPool:Landroid/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/ProgressBar$RefreshData;-><init>()V

    return-void
.end method

.method public static obtain(IIZ)Landroid/widget/ProgressBar$RefreshData;
    .locals 2
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    sget-object v1, Landroid/widget/ProgressBar$RefreshData;->sPool:Landroid/util/Pool;

    invoke-interface {v1}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar$RefreshData;

    .local v0, rd:Landroid/widget/ProgressBar$RefreshData;
    iput p0, v0, Landroid/widget/ProgressBar$RefreshData;->id:I

    iput p1, v0, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iput-boolean p2, v0, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    return-object v0
.end method


# virtual methods
.method public getNextPoolable()Landroid/widget/ProgressBar$RefreshData;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshData;->mNext:Landroid/widget/ProgressBar$RefreshData;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/ProgressBar$RefreshData;->getNextPoolable()Landroid/widget/ProgressBar$RefreshData;

    move-result-object v0

    return-object v0
.end method

.method public isPooled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ProgressBar$RefreshData;->mIsPooled:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/ProgressBar$RefreshData;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    return-void
.end method

.method public setNextPoolable(Landroid/widget/ProgressBar$RefreshData;)V
    .locals 0
    .parameter "element"

    .prologue
    iput-object p1, p0, Landroid/widget/ProgressBar$RefreshData;->mNext:Landroid/widget/ProgressBar$RefreshData;

    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/widget/ProgressBar$RefreshData;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar$RefreshData;->setNextPoolable(Landroid/widget/ProgressBar$RefreshData;)V

    return-void
.end method

.method public setPooled(Z)V
    .locals 0
    .parameter "isPooled"

    .prologue
    iput-boolean p1, p0, Landroid/widget/ProgressBar$RefreshData;->mIsPooled:Z

    return-void
.end method
