.class Landroid/widget/ActivityChooserView$3;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Landroid/widget/ActivityChooserView$3;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 243
    iget-object v0, p0, Landroid/widget/ActivityChooserView$3;->this$0:Landroid/widget/ActivityChooserView;

    #calls: Landroid/widget/ActivityChooserView;->updateAppearance()V
    invoke-static {v0}, Landroid/widget/ActivityChooserView;->access$400(Landroid/widget/ActivityChooserView;)V

    .line 244
    return-void
.end method
