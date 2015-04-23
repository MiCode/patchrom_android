.class public abstract Landroid/webkit/WebMessagePort$WebMessageCallback;
.super Ljava/lang/Object;
.source "WebMessagePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebMessagePort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WebMessageCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/webkit/WebMessagePort;Landroid/webkit/WebMessage;)V
    .locals 0
    .param p1, "port"    # Landroid/webkit/WebMessagePort;
    .param p2, "message"    # Landroid/webkit/WebMessage;

    .prologue
    return-void
.end method
