.class Landroid/telecom/RemoteConference$1;
.super Ljava/lang/Object;
.source "RemoteConference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConference;->setDestroyed()V
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
    iput-object p1, p0, Landroid/telecom/RemoteConference$1;->this$0:Landroid/telecom/RemoteConference;

    iput-object p2, p0, Landroid/telecom/RemoteConference$1;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iput-object p3, p0, Landroid/telecom/RemoteConference$1;->val$conference:Landroid/telecom/RemoteConference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConference$1;->val$callback:Landroid/telecom/RemoteConference$Callback;

    iget-object v1, p0, Landroid/telecom/RemoteConference$1;->val$conference:Landroid/telecom/RemoteConference;

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference$Callback;->onDestroyed(Landroid/telecom/RemoteConference;)V

    return-void
.end method
