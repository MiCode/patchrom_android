.class public Landroid/accounts/CantAddAccountActivity;
.super Landroid/app/Activity;
.source "CantAddAccountActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    invoke-virtual {p0}, Landroid/accounts/CantAddAccountActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x109002a

    invoke-virtual {p0, v0}, Landroid/accounts/CantAddAccountActivity;->setContentView(I)V

    return-void
.end method
