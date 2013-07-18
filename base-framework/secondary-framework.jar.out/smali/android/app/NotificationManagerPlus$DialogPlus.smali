.class Landroid/app/NotificationManagerPlus$DialogPlus;
.super Landroid/app/AlertDialog;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogPlus"
.end annotation


# instance fields
.field public mId:I

.field public mPackageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    iput p1, p0, Landroid/app/NotificationManagerPlus$DialogPlus;->mId:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    iput-object p1, p0, Landroid/app/NotificationManagerPlus$DialogPlus;->mPackageName:Ljava/lang/String;

    return-void
.end method
