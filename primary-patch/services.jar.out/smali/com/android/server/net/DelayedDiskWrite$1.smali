.class Lcom/android/server/net/DelayedDiskWrite$1;
.super Ljava/lang/Object;
.source "DelayedDiskWrite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/DelayedDiskWrite;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$open:Z

.field final synthetic val$w:Lcom/android/server/net/DelayedDiskWrite$Writer;


# direct methods
.method constructor <init>(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/net/DelayedDiskWrite$1;->this$0:Lcom/android/server/net/DelayedDiskWrite;

    iput-object p2, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$w:Lcom/android/server/net/DelayedDiskWrite$Writer;

    iput-boolean p4, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$open:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite$1;->this$0:Lcom/android/server/net/DelayedDiskWrite;

    iget-object v1, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$w:Lcom/android/server/net/DelayedDiskWrite$Writer;

    iget-boolean v3, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$open:Z

    # invokes: Lcom/android/server/net/DelayedDiskWrite;->doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->access$000(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    return-void
.end method
