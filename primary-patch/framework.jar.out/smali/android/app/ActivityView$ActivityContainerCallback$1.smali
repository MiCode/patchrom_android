.class Landroid/app/ActivityView$ActivityContainerCallback$1;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityView$ActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView$ActivityContainerCallback;

.field final synthetic val$activityView:Landroid/app/ActivityView;

.field final synthetic val$callbackRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/app/ActivityView$ActivityContainerCallback;Ljava/lang/ref/WeakReference;Landroid/app/ActivityView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->this$0:Landroid/app/ActivityView$ActivityContainerCallback;

    iput-object p2, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->val$callbackRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->val$activityView:Landroid/app/ActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->val$callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityView$ActivityViewCallback;

    .local v0, "callback":Landroid/app/ActivityView$ActivityViewCallback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityView$ActivityContainerCallback$1;->val$activityView:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView$ActivityViewCallback;->onAllActivitiesComplete(Landroid/app/ActivityView;)V

    :cond_0
    return-void
.end method
