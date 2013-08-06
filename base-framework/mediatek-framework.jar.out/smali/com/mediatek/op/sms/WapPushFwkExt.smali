.class Lcom/mediatek/op/sms/WapPushFwkExt;
.super Ljava/lang/Object;
.source "WapPushFwkExt.java"

# interfaces
.implements Lcom/mediatek/common/sms/IWapPushFwkExt;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "WapPushFwkExt"

    sput-object v0, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "phoneId"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    if-nez p1, :cond_0

    sget-object v0, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v1, "FAIL! context is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/mediatek/op/sms/WapPushFwkExt;->mPhoneId:I

    sget-object v0, Lcom/mediatek/op/sms/WapPushFwkExt;->TAG:Ljava/lang/String;

    const-string v1, "call WapPushFwkExt constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public allowDispatchWapPush()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected cancelAutoPushNotification()V
    .locals 0

    .prologue
    return-void
.end method

.method public isMmsWapPush([B)Z
    .locals 1
    .parameter "pdu"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyForAutoPushSetting()V
    .locals 0

    .prologue
    return-void
.end method

.method protected printWapPushSettingInfo()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "unset/enabled/disabled - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected shouldNotifyUser()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
