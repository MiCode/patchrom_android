.class public Lcom/android/internal/telephony/gsm/FDTimer;
.super Ljava/lang/Object;
.source "FDTimer.java"


# static fields
.field protected static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field protected static final PROPERTY_RIL_FD_MODE:Ljava/lang/String; = "ril.fd.mode"

.field private static final STR_PROPERTY_FD_SCREEN_OFF_R8_TIMER:Ljava/lang/String; = "persist.radio.fd.off.r8.counter"

.field private static final STR_PROPERTY_FD_SCREEN_OFF_TIMER:Ljava/lang/String; = "persist.radio.fd.off.counter"

.field private static final STR_PROPERTY_FD_SCREEN_ON_R8_TIMER:Ljava/lang/String; = "persist.radio.fd.r8.counter"

.field private static final STR_PROPERTY_FD_SCREEN_ON_TIMER:Ljava/lang/String; = "persist.radio.fd.counter"

.field private static numberOfSupportedTypes:I

.field private static timerValue:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "150"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "150"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 11
    .parameter "p"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/high16 v5, 0x4024

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "FDTimer"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/FDTimer;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .local v0, timerStr:[Ljava/lang/String;
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "persist.radio.fd.off.counter"

    const-string v2, "5"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v1, "persist.radio.fd.counter"

    const-string v2, "15"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v1, "persist.radio.fd.off.r8.counter"

    const-string v2, "5"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v9

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v1, "persist.radio.fd.r8.counter"

    const-string v2, "15"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v2

    aget-object v3, v0, v10

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v1, "FDTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FD timers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDefaultTimerValue()[Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfSupportedTypes()I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/FDTimerType;->SupportedTimerTypes:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v0

    return v0
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 10
    .parameter "newTimerValue"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    const-string v5, "ril.fd.mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, FD_MD_Enable_Mode:I
    const-string v5, "gsm.3gswitch"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v0, v3

    .local v0, FDSimID:I
    :goto_0
    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    if-ne v3, v0, :cond_2

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    aget-object v5, p1, v2

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #FDSimID:I
    .end local v2           #i:I
    :cond_0
    move v0, v4

    goto :goto_0

    .restart local v0       #FDSimID:I
    .restart local v2       #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/FDModeType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v8, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/FDModeType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v8, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/FDModeType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v8, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v5, v6, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/FDTimer;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/FDModeType;->ordinal()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/gsm/FDTimer;->timerValue:[Ljava/lang/String;

    sget-object v8, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/FDTimerType;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v5, v6, v7, p2}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .end local v2           #i:I
    :cond_2
    return v4
.end method
