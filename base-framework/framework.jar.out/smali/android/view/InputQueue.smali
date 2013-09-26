.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$Callback;
    }
.end annotation


# instance fields
.field final mChannel:Landroid/view/InputChannel;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;)V
    .locals 0
    .parameter "channel"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InputQueue;->mChannel:Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public getInputChannel()Landroid/view/InputChannel;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/InputQueue;->mChannel:Landroid/view/InputChannel;

    return-object v0
.end method
