.class public Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.super Landroid/os/Handler;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;,
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    }
.end annotation


# static fields
.field private static final AID:Ljava/lang/String; = "A00000015141434C00"

.field private static final CLA:I = 0x80

.field private static final COMMAND:I = 0xca

.field private static final DATA:Ljava/lang/String; = ""

.field private static final DBG:Z = false

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x3

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0x1

.field private static final EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCarrierPrivilegeRules"

.field private static final MAX_RETRY:I = 0x1

.field private static final P1:I = 0xff

.field private static final P2:I = 0x40

.field private static final P2_EXTENDED_DATA:I = 0x60

.field private static final P3:I = 0x0

.field private static final RETRY_INTERVAL_MS:I = 0x2710

.field private static final STATE_ERROR:I = 0x2

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_LOADING:I = 0x0

.field private static final TAG_ALL_REF_AR_DO:Ljava/lang/String; = "FF40"

.field private static final TAG_AR_DO:Ljava/lang/String; = "E3"

.field private static final TAG_DEVICE_APP_ID_REF_DO:Ljava/lang/String; = "C1"

.field private static final TAG_PERM_AR_DO:Ljava/lang/String; = "DB"

.field private static final TAG_PKG_REF_DO:Ljava/lang/String; = "CA"

.field private static final TAG_REF_AR_DO:Ljava/lang/String; = "E2"

.field private static final TAG_REF_DO:Ljava/lang/String; = "E1"


# instance fields
.field private mAccessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field private mLoadedCallback:Landroid/os/Message;

.field private mRetryCount:I

.field private final mRetryRunnable:Ljava/lang/Runnable;

.field private mRules:Ljava/lang/String;

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStatusMessage:Ljava/lang/String;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V
    .locals 2
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "loadedCallback"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    const-string v0, "Creating UiccCarrierPrivilegeRules"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Not loaded."

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel()V

    return-void
.end method

.method private static getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B
    .locals 5
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .param p1, "algo"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "UiccCarrierPrivilegeRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STATE_LOADING"

    goto :goto_0

    :pswitch_1
    const-string v0, "STATE_LOADED"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATE_ERROR"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isDataComplete()Z
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataComplete mRules:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    const-string v3, "FF40"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v2, "FF40"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .local v0, "allRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "lengthBytes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataComplete lengthBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "FF40"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->length:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$200(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    const-string v2, "isDataComplete yes"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const-string v2, "isDataComplete no"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "allRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v1    # "lengthBytes":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tags don\'t match."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method private openChannel()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v1, "A00000015141434C00"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private static parseRefArdo(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .locals 15
    .param p0, "rule"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x1

    const/4 v0, 0x0

    const/4 v13, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got rule: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "certificateHash":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "tmp":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .local v2, "accessType":J
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "E1"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v9, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v11, "E1"

    invoke-direct {v9, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .local v9, "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-virtual {v9, p0, v13}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "C1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .end local v9    # "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_0
    :goto_1
    return-object v0

    .restart local v9    # "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v11, "C1"

    invoke-direct {v5, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .local v5, "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v13}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "CA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v8, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v11, "CA"

    invoke-direct {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .local v8, "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-virtual {v8, v10, v14}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    .end local v6    # "packageName":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    .restart local v6    # "packageName":Ljava/lang/String;
    goto :goto_0

    .end local v8    # "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .end local v5    # "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v9    # "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_3
    const-string v11, "E3"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v11, "E3"

    invoke-direct {v1, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .local v1, "arDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-virtual {v1, p0, v13}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "DB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v11, "DB"

    invoke-direct {v7, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .local v7, "permDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v14}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_0

    .end local v1    # "arDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v7    # "permDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_4
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Invalid Rule type"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v0, v11, v6, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;-><init>([BLjava/lang/String;J)V

    .local v0, "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    goto :goto_1
.end method

.method private static parseRules(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got rules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v5, "FF40"

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .local v2, "allRefArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v5, 0x1

    invoke-virtual {v2, p0, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v3

    .local v3, "arDos":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "accessRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v5, "E2"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .local v4, "refArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRefArdo(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    move-result-object v0

    .local v0, "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v5, "UiccCarrierPrivilegeRules"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip unrecognized rule."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->value:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v4    # "refArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_1
    return-object v1
.end method

.method private updateState(ILjava/lang/String;)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiccCarrierPrivilegeRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mStatusMessage=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v2, :cond_0

    const-string v2, " mAccessRules: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    .local v0, "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  rule=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v2, " mAccessRules: null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v5

    .local v5, "status":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_0

    const/4 v2, 0x0

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "status":I
    :cond_2
    return-object v2
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 10
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const v8, 0x8040

    :try_start_0
    invoke-virtual {p1, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .local v5, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v7, "signatures":[Landroid/content/pm/Signature;
    move-object v1, v7

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .local v6, "sig":Landroid/content/pm/Signature;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "accessStatus":I
    if-eqz v0, :cond_0

    .end local v0    # "accessStatus":I
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Landroid/content/pm/Signature;
    .end local v7    # "signatures":[Landroid/content/pm/Signature;
    :goto_1
    return v0

    .restart local v0    # "accessStatus":I
    .restart local v1    # "arr$":[Landroid/content/pm/Signature;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "sig":Landroid/content/pm/Signature;
    .restart local v7    # "signatures":[Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "accessStatus":I
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Landroid/content/pm/Signature;
    .end local v7    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "UiccCarrierPrivilegeRules"

    const-string v9, "NameNotFoundException"

    invoke-static {v8, v9, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 7
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasCarrierPrivileges: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .local v4, "state":I
    if-nez v4, :cond_0

    const-string v5, "Rules not loaded."

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const-string v5, "Error loading rules."

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 v5, -0x2

    goto :goto_0

    :cond_1
    const-string v5, "SHA-1"

    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "certHash":[B
    const-string v5, "SHA-256"

    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v2

    .local v2, "certHash256":[B
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    .local v0, "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->matches([BLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v2, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->matches([BLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 7
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "packages":[Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    .local v0, "accessStatus":I
    if-eqz v0, :cond_0

    .end local v0    # "accessStatus":I
    .end local v5    # "pkg":Ljava/lang/String;
    :goto_1
    return v0

    .restart local v0    # "accessStatus":I
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "accessStatus":I
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "UiccCarrierPrivilegeRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "EVENT_OPEN_LOGICAL_CHANNEL_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .local v11, "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const/16 v4, 0x80

    const/16 v5, 0xca

    const/16 v6, 0xff

    const/16 v7, 0x40

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x2

    new-instance v15, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v11    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v2, "EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v14, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/uicc/IccIoResult;

    .local v14, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget v2, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_3

    iget v2, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-nez v2, :cond_3

    iget-object v2, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v2, :cond_3

    iget-object v2, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v2, v2

    if-lez v2, :cond_3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->isDataComplete()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    const/4 v2, 0x1

    const-string v3, "Success!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v14    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    goto/16 :goto_0

    .restart local v14    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const/16 v4, 0x80

    const/16 v5, 0xca

    const/16 v6, 0xff

    const/16 v7, 0x60

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x2

    new-instance v15, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v13

    .local v13, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing rules: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto :goto_1

    .end local v13    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v13

    .local v13, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing rules: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto :goto_1

    .end local v13    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response: payload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sw1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sw2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, "errorMsg":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_1

    .end local v12    # "errorMsg":Ljava/lang/String;
    .end local v14    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_4
    const/4 v2, 0x2

    const-string v3, "Error reading value from SIM."

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_1

    .end local v11    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "EVENT_CLOSE_LOGICAL_CHANNEL_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
