.class Landroid/view/ViewRootImpl$ResizedInfo;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizedInfo"
.end annotation


# instance fields
.field coveredInsets:Landroid/graphics/Rect;

.field newConfig:Landroid/content/res/Configuration;

.field final synthetic this$0:Landroid/view/ViewRootImpl;

.field visibleInsets:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Landroid/view/ViewRootImpl$ResizedInfo;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
