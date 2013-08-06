.class Lcom/mediatek/webkit/PickerManager$ColorChangedListener;
.super Ljava/lang/Object;
.source "PickerManager.java"

# interfaces
.implements Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/webkit/PickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorChangedListener"
.end annotation


# instance fields
.field private mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

.field final synthetic this$0:Lcom/mediatek/webkit/PickerManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/webkit/PickerManager;Lcom/mediatek/common/webkit/IOnChangedListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/mediatek/webkit/PickerManager$ColorChangedListener;->this$0:Lcom/mediatek/webkit/PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mediatek/webkit/PickerManager$ColorChangedListener;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 4
    .parameter "color"

    .prologue
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager$ColorChangedListener;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager$ColorChangedListener;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    const-string v1, "colorPicker"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/mediatek/common/webkit/IOnChangedListener;->onChanged(Ljava/lang/String;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
