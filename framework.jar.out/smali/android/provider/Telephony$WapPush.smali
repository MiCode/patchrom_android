.class public final Landroid/provider/Telephony$WapPush;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WapPush"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ADDR:Ljava/lang/String; = "address"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SL:Landroid/net/Uri; = null

.field public static final CONTENT_URI_THREAD:Landroid/net/Uri; = null

.field public static final CREATE:Ljava/lang/String; = "created"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date ASC"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final EXPIRATION:Ljava/lang/String; = "expiration"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final SEEN:Ljava/lang/String; = "seen"

.field public static final SERVICE_ADDR:Ljava/lang/String; = "service_center"

.field public static final SIID:Ljava/lang/String; = "siid"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final STATUS_LOCKED:I = 0x1

.field public static final STATUS_READ:I = 0x1

.field public static final STATUS_SEEN:I = 0x1

.field public static final STATUS_UNLOCKED:I = 0x0

.field public static final STATUS_UNREAD:I = 0x0

.field public static final STATUS_UNSEEN:I = 0x0

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_SI:I = 0x0

.field public static final TYPE_SL:I = 0x1

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://wappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://wappush/si"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$WapPush;->CONTENT_URI_SI:Landroid/net/Uri;

    const-string v0, "content://wappush/sl"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$WapPush;->CONTENT_URI_SL:Landroid/net/Uri;

    const-string v0, "content://wappush/thread_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$WapPush;->CONTENT_URI_THREAD:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
