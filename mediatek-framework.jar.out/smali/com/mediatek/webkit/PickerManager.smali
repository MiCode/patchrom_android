.class public Lcom/mediatek/webkit/PickerManager;
.super Ljava/lang/Object;
.source "PickerManager.java"

# interfaces
.implements Lcom/mediatek/common/webkit/IPicker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/webkit/PickerManager$ColorChangedListener;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

.field private mPickerType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "colorPicker"

    iput-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mPickerType:Ljava/lang/String;

    iput-object p1, p0, Lcom/mediatek/webkit/PickerManager;->mPickerType:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/mediatek/webkit/PickerManager;
    .locals 1
    .parameter "type"

    .prologue
    invoke-static {p0}, Lcom/mediatek/webkit/PickerManager;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mediatek/webkit/PickerManager;

    invoke-direct {v0, p0}, Lcom/mediatek/webkit/PickerManager;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    const-string v0, "colorPicker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "monthPicker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "weekPicker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mediatek/webkit/PickerManager;->mPickerType:Ljava/lang/String;

    return-object v0
.end method

.method public setOnChangedListener(Lcom/mediatek/common/webkit/IOnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/mediatek/webkit/PickerManager;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    return-void
.end method

.method public show(Landroid/content/Context;IILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "initialValue1"
    .parameter "initialValue2"
    .parameter "initialObj"

    .prologue
    iget-object v1, p0, Lcom/mediatek/webkit/PickerManager;->mPickerType:Ljava/lang/String;

    const-string v2, "colorPicker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/mediatek/webkit/ColorPickerDialog;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/webkit/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .local v0, mDialog:Lcom/mediatek/webkit/ColorPickerDialog;
    iget-object v1, p0, Lcom/mediatek/webkit/PickerManager;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/mediatek/webkit/PickerManager$ColorChangedListener;

    iget-object v2, p0, Lcom/mediatek/webkit/PickerManager;->mListener:Lcom/mediatek/common/webkit/IOnChangedListener;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/webkit/PickerManager$ColorChangedListener;-><init>(Lcom/mediatek/webkit/PickerManager;Lcom/mediatek/common/webkit/IOnChangedListener;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/webkit/ColorPickerDialog;->setOnColorChangedListener(Lcom/mediatek/webkit/ColorPickerDialog$OnColorChangedListener;)V

    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/webkit/ColorPickerDialog;->show()V

    .end local v0           #mDialog:Lcom/mediatek/webkit/ColorPickerDialog;
    :cond_1
    return-void
.end method
