.class public Landroid/telecom/AudioState;
.super Ljava/lang/Object;
.source "AudioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/AudioState;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROUTE_ALL:I = 0xf

.field public static final ROUTE_BLUETOOTH:I = 0x2

.field public static final ROUTE_EARPIECE:I = 0x1

.field public static final ROUTE_SPEAKER:I = 0x8

.field public static final ROUTE_WIRED_HEADSET:I = 0x4

.field public static final ROUTE_WIRED_OR_EARPIECE:I = 0x5


# instance fields
.field private final isMuted:Z

.field private final route:I

.field private final supportedRouteMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telecom/AudioState$1;

    invoke-direct {v0}, Landroid/telecom/AudioState$1;-><init>()V

    sput-object v0, Landroid/telecom/AudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    invoke-virtual {p1}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->route:I

    invoke-virtual {p1}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    return-void
.end method

.method public constructor <init>(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->route:I

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    iput v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "muted"    # Z
    .param p2, "route"    # I
    .param p3, "supportedRouteMask"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telecom/AudioState;->isMuted:Z

    iput p2, p0, Landroid/telecom/AudioState;->route:I

    iput p3, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    return-void
.end method

.method public static audioRouteToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "route"    # I

    .prologue
    if-eqz p0, :cond_0

    and-int/lit8 v1, p0, -0x10

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "UNKNOWN"

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "buffer":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "EARPIECE"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v1, "BLUETOOTH"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const-string v1, "WIRED_HEADSET"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    const-string v1, "SPEAKER"

    invoke-static {v0, v1}, Landroid/telecom/AudioState;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Landroid/telecom/AudioState;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/telecom/AudioState;

    .local v0, "state":Landroid/telecom/AudioState;
    invoke-virtual {p0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v2

    invoke-virtual {v0}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getRoute()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telecom/AudioState;->route:I

    return v0
.end method

.method public getSupportedRouteMask()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[AudioState isMuted: %b, route: %s, supportedRouteMask: %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/telecom/AudioState;->isMuted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Landroid/telecom/AudioState;->route:I

    invoke-static {v4}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-static {v4}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-boolean v0, p0, Landroid/telecom/AudioState;->isMuted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/telecom/AudioState;->route:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
