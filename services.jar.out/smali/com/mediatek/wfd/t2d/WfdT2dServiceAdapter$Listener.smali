.class public interface abstract Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;
.super Ljava/lang/Object;
.source "WfdT2dServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# static fields
.field public static final ALLOW_T2D:I = 0x1

.field public static final REJECT_T2D:I


# virtual methods
.method public abstract onT2dConnectFail()V
.end method

.method public abstract onT2dConnecting(Ljava/lang/String;)V
.end method

.method public abstract onT2dRequestReceived()I
.end method
