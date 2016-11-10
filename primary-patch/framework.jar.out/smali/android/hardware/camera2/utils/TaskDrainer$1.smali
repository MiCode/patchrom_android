.class Landroid/hardware/camera2/utils/TaskDrainer$1;
.super Ljava/lang/Object;
.source "TaskDrainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/utils/TaskDrainer;->postDrained()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/utils/TaskDrainer;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/utils/TaskDrainer;)V
    .locals 0

    .prologue
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer$1;, "Landroid/hardware/camera2/utils/TaskDrainer.1;"
    iput-object p1, p0, Landroid/hardware/camera2/utils/TaskDrainer$1;->this$0:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .local p0, "this":Landroid/hardware/camera2/utils/TaskDrainer$1;, "Landroid/hardware/camera2/utils/TaskDrainer.1;"
    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer$1;->this$0:Landroid/hardware/camera2/utils/TaskDrainer;

    # getter for: Landroid/hardware/camera2/utils/TaskDrainer;->mListener:Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;
    invoke-static {v0}, Landroid/hardware/camera2/utils/TaskDrainer;->access$000(Landroid/hardware/camera2/utils/TaskDrainer;)Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;->onDrained()V

    return-void
.end method
