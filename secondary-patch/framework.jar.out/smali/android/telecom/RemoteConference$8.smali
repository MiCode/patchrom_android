.class Landroid/telecom/RemoteConference$8;
.super Ljava/lang/Object;
.source "RemoteConference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConference;->setExtras(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConference;

.field final synthetic val$callback:Landroid/telecom/RemoteConference$Callback;

.field final synthetic val$conference:Landroid/telecom/RemoteConference;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/telecom/RemoteConference$8;->this$0:Landroid/telecom/RemoteConference;

    iput-object p2, p0, Landroid/telecom/RemoteConference$8;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConference$8;->val$conference:Landroid/telecom/RemoteConference;

    iput-object p4, p0, Landroid/telecom/RemoteConference$8;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference$8;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConference$8;->val$conference:Landroid/telecom/RemoteConference;

    iget-object v2, p0, Landroid/telecom/RemoteConference$8;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConference$Callback;->onExtrasChanged(Landroid/telecom/RemoteConference;Landroid/os/Bundle;)V

    return-void
.end method
