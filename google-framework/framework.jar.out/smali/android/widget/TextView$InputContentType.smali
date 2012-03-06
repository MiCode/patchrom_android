.class Landroid/widget/TextView$InputContentType;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputContentType"
.end annotation


# instance fields
.field enterDown:Z

.field extras:Landroid/os/Bundle;

.field imeActionId:I

.field imeActionLabel:Ljava/lang/CharSequence;

.field imeOptions:I

.field onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field privateImeOptions:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    return-void
.end method
