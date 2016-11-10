.class Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
.super Ljava/lang/Object;
.source "HdmiCecKeycode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecKeycode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeycodeEntry"
.end annotation


# instance fields
.field private final mAndroidKeycode:I

.field private final mCecKeycodeAndParams:[B

.field private final mIsRepeatable:Z


# direct methods
.method private constructor <init>(II)V
    .locals 2
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I

    .prologue
    const/4 v0, 0x1

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/hdmi/HdmiCecKeycode$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 1
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I
    .param p3, "isRepeatable"    # Z

    .prologue
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    return-void
.end method

.method synthetic constructor <init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/android/server/hdmi/HdmiCecKeycode$1;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(IIZ[B)V
    .locals 4
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I
    .param p3, "isRepeatable"    # Z
    .param p4, "cecParams"    # [B

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    array-length v0, p4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    const/4 v1, 0x1

    array-length v2, p4

    invoke-static {p4, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    return-void
.end method

.method synthetic constructor <init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Z
    .param p4, "x3"    # [B
    .param p5, "x4"    # Lcom/android/server/hdmi/HdmiCecKeycode$1;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    return-void
.end method

.method private constructor <init>(II[B)V
    .locals 1
    .param p1, "androidKeycode"    # I
    .param p2, "cecKeycode"    # I
    .param p3, "cecParams"    # [B

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toCecKeycodeAndParamIfMatched(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;[B)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    .param p1, "x1"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toAndroidKeycodeIfMatched([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->isRepeatableIfMatched(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isRepeatableIfMatched(I)Ljava/lang/Boolean;
    .locals 1
    .param p1, "androidKeycode"    # I

    .prologue
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toAndroidKeycodeIfMatched([B)I
    .locals 1
    .param p1, "cecKeycodeAndParams"    # [B

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private toCecKeycodeAndParamIfMatched(I)[B
    .locals 1
    .param p1, "androidKeycode"    # I

    .prologue
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
