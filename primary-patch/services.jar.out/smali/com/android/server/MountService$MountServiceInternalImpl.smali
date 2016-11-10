.class final Lcom/android/server/MountService$MountServiceInternalImpl;
.super Landroid/os/storage/MountServiceInternal;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MountServiceInternalImpl"
.end annotation


# instance fields
.field private final mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method private constructor <init>(Lcom/android/server/MountService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/os/storage/MountServiceInternal;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/MountService;
    .param p2, "x1"    # Lcom/android/server/MountService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService$MountServiceInternalImpl;-><init>(Lcom/android/server/MountService;)V

    return-void
.end method


# virtual methods
.method public addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const v1, 0x7fffffff

    .local v1, "mountMode":I
    iget-object v5, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;

    .local v2, "policy":Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    invoke-interface {v2, p1, p2}, Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;->getMountMode(ILjava/lang/String;)I

    move-result v3

    .local v3, "policyMode":I
    if-nez v3, :cond_1

    move v1, v4

    .end local v1    # "mountMode":I
    .end local v2    # "policy":Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    .end local v3    # "policyMode":I
    :cond_0
    :goto_1
    return v1

    .restart local v1    # "mountMode":I
    .restart local v2    # "policy":Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    .restart local v3    # "policyMode":I
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .end local v2    # "policy":Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    .end local v3    # "policyMode":I
    :cond_2
    const v5, 0x7fffffff

    if-ne v1, v5, :cond_0

    move v1, v4

    goto :goto_1
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;

    .local v1, "policy":Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    invoke-interface {v1, p1, p2}, Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v2

    .local v2, "policyHasStorage":Z
    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onExternalStoragePolicyChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/MountService$MountServiceInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v0

    .local v0, "mountMode":I
    iget-object v1, p0, Lcom/android/server/MountService$MountServiceInternalImpl;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->remountUidExternalStorage(II)V
    invoke-static {v1, p1, v0}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;II)V

    return-void
.end method
