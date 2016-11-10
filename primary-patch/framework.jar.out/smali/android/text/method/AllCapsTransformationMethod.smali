.class public Landroid/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final TAG:Ljava/lang/String; = "AllCapsTransformationMethod"


# instance fields
.field private mEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    iget-boolean v1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    if-nez v1, :cond_0

    const-string v1, "AllCapsTransformationMethod"

    const-string v2, "Caller did not enable length changes; not transforming text"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local p1    # "source":Ljava/lang/CharSequence;
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .restart local p1    # "source":Ljava/lang/CharSequence;
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .local v0, "locale":Ljava/util/Locale;
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .locals 0
    .param p1, "allowLengthChanges"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    return-void
.end method
