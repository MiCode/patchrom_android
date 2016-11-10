.class public Lcom/android/server/MountService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mMountService:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)V

    :cond_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->onCleanupUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/MountService;

    invoke-virtual {p0}, Lcom/android/server/MountService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    const-string v0, "mount"

    iget-object v1, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MountService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->onStartUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;I)V

    return-void
.end method
