.class public Landroid/media/audiopolicy/AudioMix;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMix$1;,
        Landroid/media/audiopolicy/AudioMix$Builder;
    }
.end annotation


# static fields
.field private static final CALLBACK_FLAGS_ALL:I = 0x1

.field public static final CALLBACK_FLAG_NOTIFY_ACTIVITY:I = 0x1

.field public static final MIX_STATE_DISABLED:I = -0x1

.field public static final MIX_STATE_IDLE:I = 0x0

.field public static final MIX_STATE_MIXING:I = 0x1

.field public static final MIX_TYPE_INVALID:I = -0x1

.field public static final MIX_TYPE_PLAYERS:I = 0x0

.field public static final MIX_TYPE_RECORDERS:I = 0x1

.field public static final ROUTE_FLAG_LOOP_BACK:I = 0x2

.field public static final ROUTE_FLAG_RENDER:I = 0x1


# instance fields
.field mCallbackFlags:I

.field private mFormat:Landroid/media/AudioFormat;

.field mMixState:I

.field private mMixType:I

.field private mRegistrationId:Ljava/lang/String;

.field private mRouteFlags:I

.field private mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method private constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;II)V
    .locals 1
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "routeFlags"    # I
    .param p4, "callbackFlags"    # I

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    iput p3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRegistrationId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    iput p4, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IILandroid/media/audiopolicy/AudioMix$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p2, "x1"    # Landroid/media/AudioFormat;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/media/audiopolicy/AudioMix$1;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;II)V

    return-void
.end method


# virtual methods
.method getFormat()Landroid/media/AudioFormat;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public getMixState()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    return v0
.end method

.method public getMixType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    return v0
.end method

.method public getRegistration()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method getRouteFlags()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    return v0
.end method

.method getRule()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method setRegistration(Ljava/lang/String;)V
    .locals 0
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mRegistrationId:Ljava/lang/String;

    return-void
.end method
