.class final Landroid/view/ViewRootImpl$SyntheticKeyHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticKeyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticKeyHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/view/KeyEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/16 v0, 0x17

    const/4 v6, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :sswitch_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticKeyHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v1, Landroid/view/ViewRootImpl;->mFlipControllerFallbackKeys:Z

    if-eqz v1, :cond_0

    .local v6, keyCode:I
    :goto_2
    iget-object v13, p0, Landroid/view/ViewRootImpl$SyntheticKeyHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    or-int/lit16 v11, v11, 0x400

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v13, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    const/4 v0, 0x1

    goto :goto_1

    .end local v6           #keyCode:I
    :cond_0
    move v6, v0

    goto :goto_2

    :sswitch_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticKeyHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v1, v1, Landroid/view/ViewRootImpl;->mFlipControllerFallbackKeys:Z

    if-eqz v1, :cond_1

    move v6, v0

    .restart local v6       #keyCode:I
    :cond_1
    goto :goto_2

    .end local v6           #keyCode:I
    :sswitch_2
    const/16 v6, 0x17

    .restart local v6       #keyCode:I
    goto :goto_2

    .end local v6           #keyCode:I
    :sswitch_3
    const/16 v6, 0x52

    .restart local v6       #keyCode:I
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x61 -> :sswitch_1
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
        0x6a -> :sswitch_2
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0x6d -> :sswitch_3
        0x6e -> :sswitch_3
        0xbc -> :sswitch_2
        0xbd -> :sswitch_2
        0xbe -> :sswitch_2
        0xbf -> :sswitch_2
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_2
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_2
        0xc6 -> :sswitch_2
        0xc7 -> :sswitch_2
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
    .end sparse-switch
.end method
