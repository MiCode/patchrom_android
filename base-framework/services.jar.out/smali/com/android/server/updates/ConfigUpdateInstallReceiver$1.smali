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
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iput-object p2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0xc864

    :try_start_0
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v10, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCert(Landroid/content/ContentResolver;)Ljava/security/cert/X509Certificate;
    invoke-static {v0, v10}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/ContentResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .local v5, cert:Ljava/security/cert/X509Certificate;
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v10, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getAltContent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .local v1, altContent:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v10, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getVersionFromIntent(Landroid/content/Intent;)I
    invoke-static {v0, v10}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$200(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I

    move-result v2

    .local v2, altVersion:I
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v10, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$300(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .local v3, altRequiredHash:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    iget-object v10, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getSignatureFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$400(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .local v4, altSig:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentVersion()I
    invoke-static {v0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$500(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I

    move-result v7

    .local v7, currentVersion:I
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentContent()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$600(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentHash(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, currentHash:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyVersion(II)Z
    invoke-static {v0, v7, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$800(Lcom/android/server/updates/ConfigUpdateInstallReceiver;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ConfigUpdateInstallReceiver"

    const-string v10, "Not installing, new version is <= current version"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #altContent:Ljava/lang/String;
    .end local v2           #altVersion:I
    .end local v3           #altRequiredHash:Ljava/lang/String;
    .end local v4           #altSig:Ljava/lang/String;
    .end local v5           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #currentHash:Ljava/lang/String;
    .end local v7           #currentVersion:I
    :goto_0
    return-void

    .restart local v1       #altContent:Ljava/lang/String;
    .restart local v2       #altVersion:I
    .restart local v3       #altRequiredHash:Ljava/lang/String;
    .restart local v4       #altSig:Ljava/lang/String;
    .restart local v5       #cert:Ljava/security/cert/X509Certificate;
    .restart local v6       #currentHash:Ljava/lang/String;
    .restart local v7       #currentVersion:I
    :cond_0
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v6, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$900(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0xc864

    const-string v10, "Current hash did not match required value"

    invoke-static {v0, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #altContent:Ljava/lang/String;
    .end local v2           #altVersion:I
    .end local v3           #altRequiredHash:Ljava/lang/String;
    .end local v4           #altSig:Ljava/lang/String;
    .end local v5           #cert:Ljava/security/cert/X509Certificate;
    .end local v6           #currentHash:Ljava/lang/String;
    .end local v7           #currentVersion:I
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    const-string v0, "ConfigUpdateInstallReceiver"

    const-string v10, "Could not update content!"

    invoke-static {v0, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, errMsg:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v10, 0x64

    if-le v0, v10, :cond_1

    const/4 v0, 0x0

    const/16 v10, 0x63

    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_1
    invoke-static {v11, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #errMsg:Ljava/lang/String;
    .restart local v1       #altContent:Ljava/lang/String;
    .restart local v2       #altVersion:I
    .restart local v3       #altRequiredHash:Ljava/lang/String;
    .restart local v4       #altSig:Ljava/lang/String;
    .restart local v5       #cert:Ljava/security/cert/X509Certificate;
    .restart local v6       #currentHash:Ljava/lang/String;
    .restart local v7       #currentVersion:I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifySignature(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$1000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0xc864

    const-string v10, "Signature did not verify"

    invoke-static {v0, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "ConfigUpdateInstallReceiver"

    const-string v10, "Found new update, installing..."

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->this$0:Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    #calls: Lcom/android/server/updates/ConfigUpdateInstallReceiver;->install(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->access$1100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;I)V

    const-string v0, "ConfigUpdateInstallReceiver"

    const-string v10, "Installation successful"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
