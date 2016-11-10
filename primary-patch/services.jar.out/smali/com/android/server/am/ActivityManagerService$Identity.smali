.class Lcom/android/server/am/ActivityManagerService$Identity;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Identity"
.end annotation


# instance fields
.field public final pid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p2, "_token"    # Landroid/os/IBinder;
    .param p3, "_pid"    # I
    .param p4, "_uid"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$Identity;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$Identity;->token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$Identity;->pid:I

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$Identity;->uid:I

    return-void
.end method
