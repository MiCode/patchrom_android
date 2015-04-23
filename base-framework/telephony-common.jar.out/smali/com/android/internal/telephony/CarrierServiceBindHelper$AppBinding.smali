.class Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBinding"
.end annotation


# instance fields
.field private bindCount:I

.field private carrierPackage:Ljava/lang/String;

.field private connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

.field private lastBindStartMillis:J

.field private lastUnbindMillis:J

.field private phoneId:I

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private unbindCount:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V
    .locals 0
    .param p2, "phoneId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    return-void
.end method


# virtual methods
.method public bind()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$300(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.carrier.CarrierService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v6, v9, v10}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, "carrierPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No carrier app for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    move v6, v8

    :goto_0
    return v6

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found carrier app: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.service.carrier.CarrierService"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "carrierService":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$300(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v9, 0x80

    invoke-virtual {v6, v2, v9}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "carrierResolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    .local v5, "metadata":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    :cond_2
    if-eqz v5, :cond_3

    const-string v6, "android.service.carrier.LONG_LIVED_BINDING"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    const-string v6, "Carrier app does not want a long lived binding"

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    move v6, v8

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Binding to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " for phone "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    new-instance v6, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {v6, v9, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;)V

    iput-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x2710

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$300(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    const/4 v10, 0x1

    invoke-virtual {v6, v2, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    goto/16 :goto_0

    :cond_5
    const-string v3, "bindService returned false"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "error":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to bind to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    move v6, v8

    goto/16 :goto_0

    .end local v3    # "error":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "error":Ljava/lang/String;
    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier app binding for phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  bindCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  lastBindStartMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  unbindCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  lastUnbindMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    return v0
.end method

.method public handleConnectionDown()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    const-string v0, "Unbinding from carrier app"

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$300(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    goto :goto_0
.end method
