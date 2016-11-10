.class public Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
.super Landroid/content/pm/IOnPermissionsChangeListener$Stub;
.source "ApplicationPackageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnPermissionsChangeListenerDelegate"
.end annotation


# static fields
.field private static final MSG_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field final synthetic this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method public constructor <init>(Landroid/app/ApplicationPackageManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .local v0, "uid":I
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-interface {v1, v0}, Landroid/content/pm/PackageManager$OnPermissionsChangedListener;->onPermissionsChanged(I)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPermissionsChanged(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
