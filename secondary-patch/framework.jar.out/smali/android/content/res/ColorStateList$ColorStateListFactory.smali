.class Landroid/content/res/ColorStateList$ColorStateListFactory;
.super Landroid/content/res/ConstantState;
.source "ColorStateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ColorStateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorStateListFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState",
        "<",
        "Landroid/content/res/ColorStateList;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSrc:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "src"    # Landroid/content/res/ColorStateList;

    .prologue
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    iput-object p1, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    # getter for: Landroid/content/res/ColorStateList;->mChangingConfigurations:I
    invoke-static {v0}, Landroid/content/res/ColorStateList;->access$000(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public newInstance()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p2}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;->newInstance()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ColorStateList$ColorStateListFactory;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
