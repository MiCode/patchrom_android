.class Lcom/android/server/DeviceStorageMonitorService$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 5
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$1502(Lcom/android/server/DeviceStorageMonitorService;J)J

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$1602(Lcom/android/server/DeviceStorageMonitorService;J)J

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$1702(Lcom/android/server/DeviceStorageMonitorService;J)J

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J
    invoke-static {v1}, Lcom/android/server/DeviceStorageMonitorService;->access$1500(Lcom/android/server/DeviceStorageMonitorService;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J
    invoke-static {v3}, Lcom/android/server/DeviceStorageMonitorService;->access$1700(Lcom/android/server/DeviceStorageMonitorService;)J

    move-result-wide v3

    add-long/2addr v1, v3

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$402(Lcom/android/server/DeviceStorageMonitorService;J)J

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mGetSize:Z
    invoke-static {v0, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$1802(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    const-string v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatsObserver  mCacheSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mCacheSize:J
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$1500(Lcom/android/server/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mCodeSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mCodeSize:J
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$1600(Lcom/android/server/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mDataSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mDataSize:J
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$1700(Lcom/android/server/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTotalSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$400(Lcom/android/server/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
