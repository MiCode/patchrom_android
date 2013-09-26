.class Landroid/service/dreams/Dream$1;
.super Ljava/lang/Object;
.source "Dream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/Dream;->attach(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/Dream;


# direct methods
.method constructor <init>(Landroid/service/dreams/Dream;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/service/dreams/Dream$1;->this$0:Landroid/service/dreams/Dream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v0, "Dream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dream window added on thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/dreams/Dream$1;->this$0:Landroid/service/dreams/Dream;

    invoke-virtual {v0}, Landroid/service/dreams/Dream;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/Dream$1;->this$0:Landroid/service/dreams/Dream;

    #getter for: Landroid/service/dreams/Dream;->mWindow:Landroid/view/Window;
    invoke-static {v1}, Landroid/service/dreams/Dream;->access$000(Landroid/service/dreams/Dream;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/Dream$1;->this$0:Landroid/service/dreams/Dream;

    #getter for: Landroid/service/dreams/Dream;->mWindow:Landroid/view/Window;
    invoke-static {v2}, Landroid/service/dreams/Dream;->access$000(Landroid/service/dreams/Dream;)Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
