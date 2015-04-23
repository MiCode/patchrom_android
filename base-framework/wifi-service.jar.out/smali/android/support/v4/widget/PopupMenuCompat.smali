.class public Landroid/support/v4/widget/PopupMenuCompat;
.super Ljava/lang/Object;
.source "PopupMenuCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/PopupMenuCompat$KitKatPopupMenuImpl;,
        Landroid/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;,
        Landroid/support/v4/widget/PopupMenuCompat$PopupMenuImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/PopupMenuCompat$PopupMenuImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v1, Landroid/support/v4/widget/PopupMenuCompat$KitKatPopupMenuImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/PopupMenuCompat$KitKatPopupMenuImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/PopupMenuCompat;->IMPL:Landroid/support/v4/widget/PopupMenuCompat$PopupMenuImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/PopupMenuCompat;->IMPL:Landroid/support/v4/widget/PopupMenuCompat$PopupMenuImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "popupMenu"    # Ljava/lang/Object;

    .prologue
    sget-object v0, Landroid/support/v4/widget/PopupMenuCompat;->IMPL:Landroid/support/v4/widget/PopupMenuCompat$PopupMenuImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/PopupMenuCompat$PopupMenuImpl;->getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
