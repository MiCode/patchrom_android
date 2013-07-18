.class Lcom/android/internal/os/storage/ExternalStorageFormatter$3$1;
.super Ljava/lang/Object;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/os/storage/ExternalStorageFormatter$3;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$3;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3$1;->this$1:Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3$1;->this$1:Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    iget-object v0, v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v1, 0x10404a3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
