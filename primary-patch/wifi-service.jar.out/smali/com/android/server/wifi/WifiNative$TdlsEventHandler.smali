.class public abstract Lcom/android/server/wifi/WifiNative$TdlsEventHandler;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TdlsEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNative;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$TdlsEventHandler;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onTdlsStatus(Ljava/lang/String;II)V
.end method
