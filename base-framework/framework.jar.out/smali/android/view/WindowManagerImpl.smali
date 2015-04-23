.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# instance fields
.field private mDefaultToken:Landroid/os/IBinder;

.field private final mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/view/WindowManagerGlobal;

.field private final mParentWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/Display;Landroid/view/Window;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "parentWindow"    # Landroid/view/Window;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    return-void
.end method

.method private applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Params must be WindowManager.LayoutParams"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V

    return-void
.end method

.method public createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "parentWindow"    # Landroid/view/Window;

    .prologue
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1, p1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-direct {v0, p1, v1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    return-void
.end method

.method public setDefaultToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
