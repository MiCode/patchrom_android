.class Landroid/widget/Editor$EasyEditSpanController$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$EasyEditSpanController;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$EasyEditSpanController;


# direct methods
.method constructor <init>(Landroid/widget/Editor$EasyEditSpanController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$EasyEditSpanController$1;->this$1:Landroid/widget/Editor$EasyEditSpanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$EasyEditSpanController$1;->this$1:Landroid/widget/Editor$EasyEditSpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditSpanController;->hide()V

    return-void
.end method
