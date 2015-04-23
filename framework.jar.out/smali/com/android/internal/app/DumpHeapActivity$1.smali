.class Lcom/android/internal/app/DumpHeapActivity$1;
.super Ljava/lang/Object;
.source "DumpHeapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/DumpHeapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/DumpHeapActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/DumpHeapActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/DumpHeapActivity$1;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity$1;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity$1;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/DumpHeapActivity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity$1;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/DumpHeapActivity;->finish()V

    return-void
.end method
