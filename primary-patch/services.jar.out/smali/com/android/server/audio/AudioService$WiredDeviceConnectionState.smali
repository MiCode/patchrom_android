.class Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiredDeviceConnectionState"
.end annotation


# instance fields
.field public final mAddress:Ljava/lang/String;

.field public final mCaller:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mState:I

.field public final mType:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "state"    # I
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "caller"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iput p3, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    iput-object p4, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    return-void
.end method
