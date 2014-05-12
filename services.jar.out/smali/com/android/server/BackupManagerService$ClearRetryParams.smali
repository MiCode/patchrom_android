.class Lcom/android/server/BackupManagerService$ClearRetryParams;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearRetryParams"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;

.field public transportName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "transport"
    .parameter "pkg"

    .prologue
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ClearRetryParams;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$ClearRetryParams;->transportName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$ClearRetryParams;->packageName:Ljava/lang/String;

    return-void
.end method
