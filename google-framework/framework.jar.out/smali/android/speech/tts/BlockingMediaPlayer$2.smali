.class Landroid/speech/tts/BlockingMediaPlayer$2;
.super Ljava/lang/Object;
.source "BlockingMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/BlockingMediaPlayer;->startAndWait()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/BlockingMediaPlayer;


# direct methods
.method constructor <init>(Landroid/speech/tts/BlockingMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Landroid/speech/tts/BlockingMediaPlayer$2;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer$2;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    #calls: Landroid/speech/tts/BlockingMediaPlayer;->finish()V
    invoke-static {v0}, Landroid/speech/tts/BlockingMediaPlayer;->access$100(Landroid/speech/tts/BlockingMediaPlayer;)V

    .line 84
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 85
    return-void
.end method
