.class Landroid/app/ActivityThread$ApplicationThread$1;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread$ApplicationThread;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityThread$ApplicationThread;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$fd:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$ApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->this$1:Landroid/app/ActivityThread$ApplicationThread;

    iput-object p2, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$fd:Ljava/io/FileDescriptor;

    iput-object p3, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread$1;->this$1:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$args:[Ljava/lang/String;

    # invokes: Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread$ApplicationThread;->access$800(Landroid/app/ActivityThread$ApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method
