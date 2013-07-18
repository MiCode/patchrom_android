.class final Landroid/webkit/DateTimePickerManager$1;
.super Ljava/lang/Object;
.source "DateTimePickerManager.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/DateTimePickerManager;->createPicker(Landroid/webkit/WebViewClassic;Landroid/content/Context;ILjava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$view:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Ljava/util/Date;Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/DateTimePickerManager$1;->val$date:Ljava/util/Date;

    iput-object p2, p0, Landroid/webkit/DateTimePickerManager$1;->val$view:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6
    .parameter "picker"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/DateTimePickerManager$1;->val$date:Ljava/util/Date;

    add-int/lit16 v4, p2, -0x76c

    invoke-virtual {v0, v4}, Ljava/util/Date;->setYear(I)V

    iget-object v0, p0, Landroid/webkit/DateTimePickerManager$1;->val$date:Ljava/util/Date;

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMonth(I)V

    iget-object v0, p0, Landroid/webkit/DateTimePickerManager$1;->val$date:Ljava/util/Date;

    invoke-virtual {v0, p4}, Ljava/util/Date;->setDate(I)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v4, p0, Landroid/webkit/DateTimePickerManager$1;->val$date:Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .local v3, output:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/DateTimePickerManager$1;->val$view:Landroid/webkit/WebViewClassic;

    move v4, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebViewClassic;->replaceTextfieldText(IILjava/lang/String;II)V

    return-void
.end method
