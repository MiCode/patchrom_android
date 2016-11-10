.class public interface abstract Landroid/os/MessageQueue$OnFileDescriptorEventListener;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFileDescriptorEventListener"
.end annotation


# static fields
.field public static final EVENT_ERROR:I = 0x4

.field public static final EVENT_INPUT:I = 0x1

.field public static final EVENT_OUTPUT:I = 0x2


# virtual methods
.method public abstract onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
.end method
