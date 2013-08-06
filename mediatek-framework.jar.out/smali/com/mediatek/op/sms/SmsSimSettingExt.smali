.class public Lcom/mediatek/op/sms/SmsSimSettingExt;
.super Ljava/lang/Object;
.source "SmsSimSettingExt.java"

# interfaces
.implements Lcom/mediatek/common/sms/ISmsSimSettingExt;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "SmsSimSettingExt"

    sput-object v0, Lcom/mediatek/op/sms/SmsSimSettingExt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmsSimDefaultSetting()J
    .locals 2

    .prologue
    sget-object v0, Lcom/mediatek/op/sms/SmsSimSettingExt;->TAG:Ljava/lang/String;

    const-string v1, "getSmsSimDefaultSetting, DEFAULT_SIM_SETTING_ALWAYS_ASK"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method
