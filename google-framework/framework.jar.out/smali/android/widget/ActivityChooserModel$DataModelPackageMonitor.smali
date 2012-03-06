.class final Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataModelPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1145
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$600(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1150
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1300(Landroid/widget/ActivityChooserModel;)V

    .line 1151
    monitor-exit v1

    .line 1152
    return-void

    .line 1151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$600(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1157
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1300(Landroid/widget/ActivityChooserModel;)V

    .line 1158
    monitor-exit v1

    .line 1159
    return-void

    .line 1158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 1171
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$600(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1172
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/widget/ActivityChooserModel;->access$1400(Landroid/widget/ActivityChooserModel;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1300(Landroid/widget/ActivityChooserModel;)V

    .line 1174
    monitor-exit v1

    .line 1175
    return-void

    .line 1174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$600(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1164
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/widget/ActivityChooserModel;->access$1400(Landroid/widget/ActivityChooserModel;Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1300(Landroid/widget/ActivityChooserModel;)V

    .line 1166
    monitor-exit v1

    .line 1167
    return-void

    .line 1166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
