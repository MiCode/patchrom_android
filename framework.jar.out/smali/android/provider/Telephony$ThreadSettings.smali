.class public final Landroid/provider/Telephony$ThreadSettings;
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
    name = "ThreadSettings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final MUTE:Ljava/lang/String; = "mute"

.field public static final MUTE_START:Ljava/lang/String; = "mute_start"

.field public static final NOTIFICATION_ENABLE:Ljava/lang/String; = "notification_enable"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final SPAM:Ljava/lang/String; = "spam"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final WALLPAPER:Ljava/lang/String; = "_data"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "thread_settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$ThreadSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
