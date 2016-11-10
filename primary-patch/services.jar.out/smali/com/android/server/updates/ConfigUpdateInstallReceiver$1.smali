.class Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;
.super Ljava/lang/Thread;
.source "ConfigUpdateInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/updates/ConfigUpdateInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iput-object p2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0xc864

    :try_start_0
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getAltContent(Landroid/content/Context;Landroid/content/Intent;)[B
    invoke-static {v7, v8, v9}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)[B

    move-result-object v0

    .local v0, "altContent":[B
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getVersionFromIntent(Landroid/content/Intent;)I
    invoke-static {v7, v8}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I

    move-result v2

    .local v2, "altVersion":I
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$200(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .local v1, "altRequiredHash":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    # invokes: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentVersion()I
    invoke-static {v7}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$300(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I

    move-result v4

    .local v4, "currentVersion":I
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    # invokes: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentContent()[B
    invoke-static {v7}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$400(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B

    move-result-object v7

    # invokes: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentHash([B)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$500([B)Ljava/lang/String;

    move-result-object v3

    .local v3, "currentHash":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    # invokes: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z
    invoke-static {v7, v4, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$600(Lcom/android/server/updates/ConfigUpdateInstallReceiver;II)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ConfigUpdateInstallReceiver"

    const-string v8, "Not installing, new version is <= current version"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "altContent":[B
    .end local v1    # "altRequiredHash":Ljava/lang/String;
    .end local v2    # "altVersion":I
    .end local v3    # "currentHash":Ljava/lang/String;
    .end local v4    # "currentVersion":I
    :goto_0
    return-void

    .restart local v0    # "altContent":[B
    .restart local v1    # "altRequiredHash":Ljava/lang/String;
    .restart local v2    # "altVersion":I
    .restart local v3    # "currentHash":Ljava/lang/String;
    .restart local v4    # "currentVersion":I
    :cond_0
    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    # invokes: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v3, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$700(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const v7, 0xc864

    const-string v8, "Current hash did not match required value"

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "altContent":[B
    .end local v1    # "altRequiredHash":Ljava/lang/String;
    .end local v2    # "altVersion":I
    .end local v3    # "currentHash":Ljava/lang/String;
    .end local v4    # "currentVersion":I
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const-string v7, "ConfigUpdateInstallReceiver"

    const-string v8, "Could not update content!"

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "errMsg":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_1

    const/4 v7, 0x0

    const/16 v8, 0x63

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-static {v10, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "errMsg":Ljava/lang/String;
    .restart local v0    # "altContent":[B
    .restart local v1    # "altRequiredHash":Ljava/lang/String;
    .restart local v2    # "altVersion":I
    .restart local v3    # "currentHash":Ljava/lang/String;
    .restart local v4    # "currentVersion":I
    :cond_2
    :try_start_1
    const-string v7, "ConfigUpdateInstallReceiver"

    const-string v8, "Found new update, installing..."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    invoke-virtual {v7, v0, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install([BI)V

    const-string v7, "ConfigUpdateInstallReceiver"

    const-string v8, "Installation successful"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v8, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
