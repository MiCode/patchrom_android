.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftCurrentPositionChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput-wide p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;->val$timeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$000(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    # getter for: Landroid/media/tv/TvInputManager$SessionCallbackRecord;->mSession:Landroid/media/tv/TvInputManager$Session;
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$15;->val$timeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/TvInputManager$SessionCallback;->onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V

    return-void
.end method
