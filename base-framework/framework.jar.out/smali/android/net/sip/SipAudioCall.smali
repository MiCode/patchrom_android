.class public Landroid/net/sip/SipAudioCall;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipAudioCall$Listener;
    }
.end annotation


# static fields
.field private static final DONT_RELEASE_SOCKET:Z = false

.field private static final RELEASE_SOCKET:Z = true

.field private static final SESSION_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRANSFER_TIMEOUT:I = 0xf


# instance fields
.field private mAudioGroup:Landroid/net/rtp/AudioGroup;

.field private mAudioStream:Landroid/net/rtp/AudioStream;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mHold:Z

.field private mInCall:Z

.field private mListener:Landroid/net/sip/SipAudioCall$Listener;

.field private mLocalProfile:Landroid/net/sip/SipProfile;

.field private mMuted:Z

.field private mPeerSd:Ljava/lang/String;

.field private mPendingCallRequest:Landroid/net/sip/SipProfile;

.field private mSessionId:J

.field private mSipSession:Landroid/net/sip/SipSession;

.field private mTransferringSession:Landroid/net/sip/SipSession;

.field private mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "context"
    .parameter "localProfile"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    iput-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    iput v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/sip/SipAudioCall;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return v0
.end method

.method static synthetic access$1002(Landroid/net/sip/SipAudioCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return p1
.end method

.method static synthetic access$1102(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SimpleSessionDescription;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/sip/SipAudioCall;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    return v0
.end method

.method static synthetic access$400(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/sip/SipAudioCall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->transferToNewSession()V

    return-void
.end method

.method static synthetic access$800(Landroid/net/sip/SipAudioCall;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    return v0
.end method

.method static synthetic access$900(Landroid/net/sip/SipAudioCall;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->close(Z)V

    return-void
.end method

.method private declared-synchronized close(Z)V
    .locals 2
    .parameter "closeRtp"

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 22
    .parameter "offerSd"

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v4

    :cond_0
    return-object v4

    :cond_1
    new-instance v14, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .local v14, offer:Landroid/net/sip/SimpleSessionDescription;
    new-instance v4, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    move-wide/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .local v4, answer:Landroid/net/sip/SimpleSessionDescription;
    const/4 v7, 0x0

    .local v7, codec:Landroid/net/rtp/AudioCodec;
    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .local v5, arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    array-length v11, v5

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v5           #arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_b

    aget-object v13, v5, v10

    .local v13, media:Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v7, :cond_a

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v18

    if-lez v18, :cond_a

    const-string v18, "audio"

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "RTP/AVP"

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    .local v6, arr$:[I
    array-length v12, v6

    .local v12, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_1
    if-ge v9, v12, :cond_2

    aget v17, v6, v9

    .local v17, type:I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v7

    if-eqz v7, :cond_4

    .end local v17           #type:I
    :cond_2
    if-eqz v7, :cond_a

    const-string v18, "audio"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v19

    const/16 v20, 0x1

    const-string v21, "RTP/AVP"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .local v15, reply:Landroid/net/sip/SimpleSessionDescription$Media;
    iget v0, v7, Landroid/net/rtp/AudioCodec;->type:I

    move/from16 v18, v0

    iget-object v0, v7, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    array-length v12, v6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v12, :cond_5

    aget v17, v6, v9

    .restart local v17       #type:I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v16

    .local v16, rtpmap:Ljava/lang/String;
    iget v0, v7, Landroid/net/rtp/AudioCodec;->type:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    if-eqz v16, :cond_3

    const-string v18, "telephone-event"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v15           #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v16           #rtpmap:Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v17           #type:I
    .restart local v15       #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_5
    const-string v18, "recvonly"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    const-string v18, "sendonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6           #arr$:[I
    :cond_6
    :goto_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto/16 :goto_0

    .end local v10           #i$:I
    .restart local v6       #arr$:[I
    .restart local v9       #i$:I
    :cond_7
    const-string v18, "sendonly"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    const-string v18, "recvonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v18, "recvonly"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    const-string v18, "sendonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v18, "sendonly"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    const-string v18, "recvonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v6           #arr$:[I
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v15           #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_a
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .restart local v15       #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getFormats()[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v12, v6

    .restart local v12       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_4
    if-ge v9, v12, :cond_6

    aget-object v8, v6, v9

    .local v8, format:Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v8, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #format:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v13           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v15           #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    .restart local v10       #i$:I
    :cond_b
    if-nez v7, :cond_0

    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "Reject SDP: no suitable codecs"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method private createContinueOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 8

    .prologue
    new-instance v3, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v4, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .local v3, offer:Landroid/net/sip/SimpleSessionDescription;
    const-string v4, "audio"

    iget-object v5, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v5}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "RTP/AVP"

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .local v2, media:Landroid/net/sip/SimpleSessionDescription$Media;
    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getCodec()Landroid/net/rtp/AudioCodec;

    move-result-object v0

    .local v0, codec:Landroid/net/rtp/AudioCodec;
    iget v4, v0, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v5, v0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getDtmfType()I

    move-result v1

    .local v1, dtmfType:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const-string v4, "telephone-event/8000"

    const-string v5, "0-15"

    invoke-virtual {v2, v1, v4, v5}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v3
.end method

.method private createHoldOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    .local v0, offer:Landroid/net/sip/SimpleSessionDescription;
    const-string v1, "sendonly"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createListener()Landroid/net/sip/SipSession$Listener;
    .locals 1

    .prologue
    new-instance v0, Landroid/net/sip/SipAudioCall$1;

    invoke-direct {v0, p0}, Landroid/net/sip/SipAudioCall$1;-><init>(Landroid/net/sip/SipAudioCall;)V

    return-object v0
.end method

.method private createOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 11

    .prologue
    new-instance v6, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v7, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .local v6, offer:Landroid/net/sip/SimpleSessionDescription;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v2

    .local v2, codecs:[Landroid/net/rtp/AudioCodec;
    const-string v7, "audio"

    iget-object v8, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v8}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v8

    const/4 v9, 0x1

    const-string v10, "RTP/AVP"

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .local v5, media:Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v0

    .local v0, arr$:[Landroid/net/rtp/AudioCodec;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, codec:Landroid/net/rtp/AudioCodec;
    iget v7, v1, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v8, v1, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v9, v1, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #codec:Landroid/net/rtp/AudioCodec;
    :cond_0
    const/16 v7, 0x7f

    const-string v8, "telephone-event/8000"

    const-string v9, "0-15"

    invoke-virtual {v5, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPeerProfile(Landroid/net/sip/SipSession;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "session"

    .prologue
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private grabWifiHighPerfLock()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v1, "acquire wifi high perf lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_0
    return-void
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isWifiOn()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onError(ILjava/lang/String;)V
    .locals 5
    .parameter "errorCode"
    .parameter "message"

    .prologue
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sip session error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    .local v0, listener:Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-enter p0

    const/16 v2, -0xa

    if-eq p1, v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isInCall()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->close(Z)V

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v1

    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private releaseWifiHighPerfLock()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v1, "release wifi high perf lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    return-void
.end method

.method private setAudioGroupMode()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->isSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0
.end method

.method private declared-synchronized startAudioInternal()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    if-nez v15, :cond_0

    sget-object v15, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v16, "startAudioInternal() mPeerSd = null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "mPeerSd = null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    :cond_0
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    new-instance v11, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {v11, v15}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .local v11, offer:Landroid/net/sip/SimpleSessionDescription;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .local v13, stream:Landroid/net/rtp/AudioStream;
    const/4 v5, 0x0

    .local v5, codec:Landroid/net/rtp/AudioCodec;
    invoke-virtual {v11}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .local v2, arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    array-length v8, v2

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v2           #arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v10, v2, v7

    .local v10, media:Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v5, :cond_c

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v15

    if-lez v15, :cond_c

    const-string v15, "audio"

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const-string v15, "RTP/AVP"

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v3

    .local v3, arr$:[I
    array-length v9, v3

    .local v9, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_1
    if-ge v6, v9, :cond_1

    aget v14, v3, v6

    .local v14, type:I
    invoke-virtual {v10, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v5

    if-eqz v5, :cond_4

    .end local v14           #type:I
    :cond_1
    if-eqz v5, :cond_c

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getAddress()Ljava/lang/String;

    move-result-object v1

    .local v1, address:Ljava/lang/String;
    if-nez v1, :cond_2

    invoke-virtual {v11}, Landroid/net/sip/SimpleSessionDescription;->getAddress()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/net/rtp/AudioStream;->associate(Ljava/net/InetAddress;I)V

    const/4 v15, -0x1

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    invoke-virtual {v13, v5}, Landroid/net/rtp/AudioStream;->setCodec(Landroid/net/rtp/AudioCodec;)V

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v2

    .end local v3           #arr$:[I
    .local v2, arr$:[I
    array-length v8, v2

    .end local v9           #len$:I
    .restart local v8       #len$:I
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_5

    aget v14, v2, v6

    .restart local v14       #type:I
    invoke-virtual {v10, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v12

    .local v12, rtpmap:Ljava/lang/String;
    iget v15, v5, Landroid/net/rtp/AudioCodec;->type:I

    if-eq v14, v15, :cond_3

    if-eqz v12, :cond_3

    const-string v15, "telephone-event"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v13, v14}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v1           #address:Ljava/lang/String;
    .end local v2           #arr$:[I
    .end local v8           #len$:I
    .end local v12           #rtpmap:Ljava/lang/String;
    .restart local v3       #arr$:[I
    .restart local v9       #len$:I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v3           #arr$:[I
    .end local v9           #len$:I
    .end local v14           #type:I
    .restart local v1       #address:Ljava/lang/String;
    .restart local v2       #arr$:[I
    .restart local v8       #len$:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    .end local v1           #address:Ljava/lang/String;
    .end local v2           #arr$:[I
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v10           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_6
    :goto_3
    if-nez v5, :cond_d

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Reject SDP: no suitable codecs"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .restart local v1       #address:Ljava/lang/String;
    .restart local v2       #arr$:[I
    .restart local v6       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_7
    const-string v15, "recvonly"

    invoke-virtual {v10, v15}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    :cond_8
    const-string v15, "sendonly"

    invoke-virtual {v10, v15}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    :cond_9
    const-string v15, "recvonly"

    invoke-virtual {v11, v15}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    :cond_a
    const-string v15, "sendonly"

    invoke-virtual {v11, v15}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    :cond_b
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .end local v1           #address:Ljava/lang/String;
    .end local v2           #arr$:[I
    .end local v6           #i$:I
    .end local v8           #len$:I
    :cond_c
    add-int/lit8 v6, v7, 0x1

    .restart local v6       #i$:I
    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto/16 :goto_0

    .end local v7           #i$:I
    .end local v10           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->isWifiOn()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->grabWifiHighPerfLock()V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v4

    .local v4, audioGroup:Landroid/net/rtp/AudioGroup;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v15, :cond_f

    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    if-nez v4, :cond_10

    :try_start_2
    new-instance v4, Landroid/net/rtp/AudioGroup;

    .end local v4           #audioGroup:Landroid/net/rtp/AudioGroup;
    invoke-direct {v4}, Landroid/net/rtp/AudioGroup;-><init>()V

    .restart local v4       #audioGroup:Landroid/net/rtp/AudioGroup;
    :cond_10
    invoke-virtual {v13, v4}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private stopCall(Z)V
    .locals 3
    .parameter "releaseSocket"

    .prologue
    const/4 v2, 0x0

    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v1, "stop audiocall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->releaseWifiHighPerfLock()V

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0, v2}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->release()V

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    :cond_0
    return-void
.end method

.method private throwSipException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "throwable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    instance-of v0, p1, Landroid/net/sip/SipException;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/net/sip/SipException;

    .end local p1
    throw p1

    .restart local p1
    :cond_0
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private declared-synchronized transferToNewSession()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .local v0, origin:Landroid/net/sip/SipSession;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->endCall()V

    :cond_1
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->startAudio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #origin:Landroid/net/sip/SipSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #origin:Landroid/net/sip/SipSession;
    :cond_2
    :try_start_2
    new-instance v2, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, t:Ljava/lang/Throwable;
    :try_start_3
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transferToNewSession(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public answerCall(I)V
    .locals 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v1, :cond_0

    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "No call to answer"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "answerCall()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 4
    .parameter "session"
    .parameter "sessionDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    sget-object v1, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachCall()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    sget-object v1, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v2, "attachCall()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->throwSipException(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->close(Z)V

    return-void
.end method

.method public continueCall(I)V
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->endCall()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getAudioStream()Landroid/net/rtp/AudioStream;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSipSession()Landroid/net/sip/SipSession;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getState()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public holdCall(I)V
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_1

    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, "Not in a call to hold call"

    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createHoldOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnHold()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V
    .locals 3
    .parameter "peerProfile"
    .parameter "sipSession"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p3}, Landroid/net/sip/SipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "makeCall()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendDtmf(I)V
    .locals 1
    .parameter "code"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->sendDtmf(ILandroid/os/Message;)V

    return-void
.end method

.method public sendDtmf(ILandroid/os/Message;)V
    .locals 4
    .parameter "code"
    .parameter "result"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send DTMF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #audioGroup:Landroid/net/rtp/AudioGroup;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioGroup(Landroid/net/rtp/AudioGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    :cond_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V

    return-void
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V
    .locals 4
    .parameter "listener"
    .parameter "callbackImmediately"

    .prologue
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p0, v2, v3}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v3, "setListener()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v0

    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onReadyToCall(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSpeakerMode(Z)V
    .locals 2
    .parameter "speakerMode"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startAudio()V
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->startAudioInternal()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, -0x7

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    const/4 v1, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toggleMute()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
