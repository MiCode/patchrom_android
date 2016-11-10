.class public Lcom/android/internal/telephony/CarrierServiceBindHelper;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;,
        Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    }
.end annotation


# static fields
.field private static final BIND_TIMEOUT_MILLIS:I = 0x2710

.field private static final EVENT_BIND:I = 0x0

.field private static final EVENT_BIND_TIMEOUT:I = 0x2

.field private static final EVENT_PACKAGE_CHANGED:I = 0x3

.field private static final EVENT_UNBIND:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/CarrierServiceBindHelper$PackageChangedBroadcastReceiver;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$1;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .local v6, "numPhones":I
    new-array v0, v6, [Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    const/4 v7, 0x0

    .local v7, "phoneId":I
    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    new-instance v1, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    invoke-direct {v1, p0, v7}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V

    aput-object v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "pkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v4, "CarrierServiceBindHelper:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .local v0, "arr$":[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    :cond_0
    return-void
.end method

.method public updateForPhoneId(ILjava/lang/String;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update binding for phoneId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " simState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_0
    const-string v3, "ABSENT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v3, "CARD_IO_ERROR"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v3, "UNKNOWN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "LOADED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "LOCKED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper;->mBindings:[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    aget-object v3, v3, p1

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79d7dbfb -> :sswitch_3
        -0x79d6d8f6 -> :sswitch_4
        -0x6d207e22 -> :sswitch_1
        0x19d1382a -> :sswitch_2
        0x72b3d739 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
