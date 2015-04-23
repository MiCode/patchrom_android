.class Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->onActiveSessionsChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

.field final synthetic val$tokens:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iget-object v3, v3, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    # getter for: Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    invoke-static {v3}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$300(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v4, Landroid/media/session/MediaController;

    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iget-object v3, v3, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    # getter for: Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$400(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/content/Context;

    move-result-object v5

    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaSession$Token;

    invoke-direct {v4, v5, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iget-object v3, v3, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    # getter for: Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    invoke-static {v3}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$300(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    .end local v0    # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method
