.class public final Landroid/provider/ContactsContract$DialerSearch;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$ViewDialerSearchColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DialerSearch"
.end annotation


# static fields
.field public static final MATCHED_DATA_OFFSETS:Ljava/lang/String; = "matched_data_offsets"

.field public static final MATCHED_NAME_OFFSETS:Ljava/lang/String; = "matched_name_offsets"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
