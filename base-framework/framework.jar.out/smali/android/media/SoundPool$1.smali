.class Landroid/media/SoundPool$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SoundPool;


# direct methods
.method constructor <init>(Landroid/media/SoundPool;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/SoundPool$1;->this$0:Landroid/media/SoundPool;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool$1;->this$0:Landroid/media/SoundPool;

    # getter for: Landroid/media/SoundPool;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/SoundPool;->access$000(Landroid/media/SoundPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/SoundPool$1;->this$0:Landroid/media/SoundPool;

    # invokes: Landroid/media/SoundPool;->updateAppOpsPlayAudio()V
    invoke-static {v0}, Landroid/media/SoundPool;->access$100(Landroid/media/SoundPool;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
