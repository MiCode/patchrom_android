.class Landroid/accounts/ChooseTypeAndAccountActivity$2;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseTypeAndAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/ChooseTypeAndAccountActivity;


# direct methods
.method constructor <init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity$2;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 213
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity$2;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    #calls: Landroid/accounts/ChooseTypeAndAccountActivity;->startChooseAccountTypeActivity()V
    invoke-static {v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->access$000(Landroid/accounts/ChooseTypeAndAccountActivity;)V

    .line 214
    return-void
.end method
