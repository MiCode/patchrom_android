.class Landroid/media/RemoteDisplay$5;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayTouchEvent(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;

.field final synthetic val$flags:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/RemoteDisplay$5;->this$0:Landroid/media/RemoteDisplay;

    iput p2, p0, Landroid/media/RemoteDisplay$5;->val$x:I

    iput p3, p0, Landroid/media/RemoteDisplay$5;->val$y:I

    iput p4, p0, Landroid/media/RemoteDisplay$5;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/media/RemoteDisplay$5;->this$0:Landroid/media/RemoteDisplay;

    #getter for: Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;
    invoke-static {v0}, Landroid/media/RemoteDisplay;->access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplay$5;->val$x:I

    iget v2, p0, Landroid/media/RemoteDisplay$5;->val$y:I

    iget v3, p0, Landroid/media/RemoteDisplay$5;->val$flags:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/RemoteDisplay$Listener;->onDisplayTouchEvent(III)V

    return-void
.end method
