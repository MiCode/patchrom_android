.class Lcom/android/internal/telephony/CarrierServiceBindHelper$1;
.super Landroid/os/Handler;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHandler: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .local v2, "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binding to phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bind()Z

    goto :goto_0

    .end local v2    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .restart local v2    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bind timeout for phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    goto :goto_0

    .end local v2    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .restart local v2    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding for phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    goto :goto_0

    .end local v2    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "carrierPackageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    # getter for: Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$200(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    move-result-object v1

    .local v1, "arr$":[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .local v0, "appBinding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed and corresponds to a phone. Rebinding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bind()Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
