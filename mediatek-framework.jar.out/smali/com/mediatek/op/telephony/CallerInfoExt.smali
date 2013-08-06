.class public Lcom/mediatek/op/telephony/CallerInfoExt;
.super Ljava/lang/Object;
.source "CallerInfoExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ICallerInfoExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeLabel(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "cursor"

    .prologue
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
