.class Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;
.super Landroid/service/chooser/IChooserTargetResult$Stub;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->access$500(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->access$500(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;-><init>(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->this$0:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$200(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
