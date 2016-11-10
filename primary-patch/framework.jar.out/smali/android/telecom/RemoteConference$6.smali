.class Landroid/telecom/RemoteConference$6;
.super Ljava/lang/Object;
.source "RemoteConference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConference;

.field final synthetic val$callback:Landroid/telecom/RemoteConference$Callback;

.field final synthetic val$conference:Landroid/telecom/RemoteConference;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/RemoteConference$6;->this$0:Landroid/telecom/RemoteConference;

    iput-object p2, p0, Landroid/telecom/RemoteConference$6;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConference$6;->val$conference:Landroid/telecom/RemoteConference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference$6;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConference$6;->val$conference:Landroid/telecom/RemoteConference;

    iget-object v2, p0, Landroid/telecom/RemoteConference$6;->this$0:Landroid/telecom/RemoteConference;

    # getter for: Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;
    invoke-static {v2}, Landroid/telecom/RemoteConference;->access$100(Landroid/telecom/RemoteConference;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConference$Callback;->onConferenceableConnectionsChanged(Landroid/telecom/RemoteConference;Ljava/util/List;)V

    return-void
.end method
