.class public abstract Landroid/view/IDisplayContentChangeListener$Stub;
.super Landroid/os/Binder;
.source "IDisplayContentChangeListener.java"

# interfaces
.implements Landroid/view/IDisplayContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayContentChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayContentChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayContentChangeListener"

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x2

.field static final TRANSACTION_onRotationChanged:I = 0x4

.field static final TRANSACTION_onWindowLayersChanged:I = 0x3

.field static final TRANSACTION_onWindowTransition:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IDisplayContentChangeListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayContentChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayContentChangeListener;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.view.IDisplayContentChangeListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IDisplayContentChangeListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/IDisplayContentChangeListener;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/IDisplayContentChangeListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IDisplayContentChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "android.view.IDisplayContentChangeListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "android.view.IDisplayContentChangeListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/view/WindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    .local v2, _arg2:Landroid/view/WindowInfo;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/IDisplayContentChangeListener$Stub;->onWindowTransition(IILandroid/view/WindowInfo;)V

    goto :goto_0

    .end local v2           #_arg2:Landroid/view/WindowInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/view/WindowInfo;
    goto :goto_1

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/view/WindowInfo;
    :sswitch_2
    const-string v4, "android.view.IDisplayContentChangeListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .local v1, _arg1:Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .local v2, _arg2:Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/IDisplayContentChangeListener$Stub;->onRectangleOnScreenRequested(ILandroid/graphics/Rect;Z)V

    goto :goto_0

    .end local v1           #_arg1:Landroid/graphics/Rect;
    .end local v2           #_arg2:Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/graphics/Rect;
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/graphics/Rect;
    :sswitch_3
    const-string v4, "android.view.IDisplayContentChangeListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/view/IDisplayContentChangeListener$Stub;->onWindowLayersChanged(I)V

    goto :goto_0

    .end local v0           #_arg0:I
    :sswitch_4
    const-string v4, "android.view.IDisplayContentChangeListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/view/IDisplayContentChangeListener$Stub;->onRotationChanged(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
