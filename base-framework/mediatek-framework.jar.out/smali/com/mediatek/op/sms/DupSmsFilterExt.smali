.class Lcom/mediatek/op/sms/DupSmsFilterExt;
.super Ljava/lang/Object;
.source "DupSmsFilterExt.java"

# interfaces
.implements Lcom/mediatek/common/sms/IDupSmsFilterExt;


# static fields
.field protected static final DEFAULT_DUP_SMS_KEEP_PERIOD:J = 0x493e0L

.field protected static final EVENT_CLEAR_SMS_LIST:I = 0x1

.field protected static final KEY_DUP_SMS_KEEP_PERIOD:Ljava/lang/String; = "dev.dup_sms_keep_period"

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mSimId:I

.field protected mSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "DupSmsFilterExt"

    sput-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    iput-object v1, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsList:Ljava/util/ArrayList;

    new-instance v0, Lcom/mediatek/op/sms/DupSmsFilterExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/op/sms/DupSmsFilterExt$1;-><init>(Lcom/mediatek/op/sms/DupSmsFilterExt;)V

    iput-object v0, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "call constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "FAIL! context is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/mediatek/op/sms/DupSmsFilterExt;->sendClearMessage()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/op/sms/DupSmsFilterExt;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/mediatek/op/sms/DupSmsFilterExt;->sendClearMessage()V

    return-void
.end method

.method private isTestIccCard()Z
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v0, -0x1

    .local v0, ret:I
    iget v2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    if-nez v2, :cond_1

    const-string v2, "gsm.sim.ril.testsim"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    :goto_0
    sget-object v2, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isTestIccCard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    iget v2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSimId:I

    if-ne v2, v1, :cond_0

    const-string v2, "gsm.sim.ril.testsim.2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sendClearMessage()V
    .locals 5

    .prologue
    sget-object v2, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v3, "call sendClearMessage"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "dev.dup_sms_keep_period"

    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, delayedPeriod:J
    iget-object v2, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public containDupSms([B)Z
    .locals 5
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    sget-object v3, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v4, "call containDupSms"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mediatek/op/sms/DupSmsFilterExt;->isTestIccCard()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .local v1, oldPdu:[B
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/op/sms/DupSmsFilterExt;->isDupSms([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .end local v1           #oldPdu:[B
    :cond_2
    iget-object v3, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/mediatek/op/sms/DupSmsFilterExt;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected isDupSms([B[B)Z
    .locals 2
    .parameter "newPdu"
    .parameter "oldPdu"

    .prologue
    sget-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "call isDupSms"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/op/sms/DupSmsFilterExt;->TAG:Ljava/lang/String;

    const-string v1, "find a duplicated sms"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
