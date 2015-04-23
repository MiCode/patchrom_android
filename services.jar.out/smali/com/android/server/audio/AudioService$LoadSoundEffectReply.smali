.class Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadSoundEffectReply"
.end annotation


# instance fields
.field public mStatus:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    return-void
.end method
