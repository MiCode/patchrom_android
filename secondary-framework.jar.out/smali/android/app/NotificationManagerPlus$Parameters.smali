.class Landroid/app/NotificationManagerPlus$Parameters;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parameters"
.end annotation


# instance fields
.field mCancelHandled:Z

.field mCancelable:Z

.field mContext:Landroid/content/Context;

.field mNegativeButtonHandled:Z

.field mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNegativeButtonText:Ljava/lang/CharSequence;

.field mNeutralButtonHandled:Z

.field mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNeutralButtonText:Ljava/lang/CharSequence;

.field mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mOnFirstShowListener:Landroid/app/NotificationManagerPlus$OnFirstShowListener;

.field mOnLastDismissListener:Landroid/app/NotificationManagerPlus$OnLastDismissListener;

.field mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field mPositiveButtonHandled:Z

.field mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/NotificationManagerPlus$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/app/NotificationManagerPlus$Parameters;-><init>()V

    return-void
.end method
