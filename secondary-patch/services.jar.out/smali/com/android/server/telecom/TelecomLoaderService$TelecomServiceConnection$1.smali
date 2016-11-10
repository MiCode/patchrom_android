.class Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;->this$1:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;->this$1:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    iget-object v0, v0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # invokes: Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$000(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method
