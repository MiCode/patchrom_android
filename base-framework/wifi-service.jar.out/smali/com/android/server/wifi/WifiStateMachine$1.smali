.class Lcom/android/server/wifi/WifiStateMachine$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Lcom/android/server/net/NetlinkTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$1;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2008c

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method
