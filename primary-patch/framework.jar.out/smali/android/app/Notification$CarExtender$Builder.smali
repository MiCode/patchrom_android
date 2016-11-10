.class public Landroid/app/Notification$CarExtender$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLatestTimestamp:J

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipant:Ljava/lang/String;

.field private mReadPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroid/app/Notification$CarExtender$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 8

    .prologue
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    iget-object v2, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .local v1, "messages":[Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    aput-object v2, v5, v0

    .local v5, "participants":[Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$CarExtender$UnreadConversation;

    iget-object v2, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    iget-object v3, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    iget-wide v6, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    invoke-direct/range {v0 .. v7}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v0
.end method

.method public setLatestTimestamp(J)Landroid/app/Notification$CarExtender$Builder;
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    return-object p0
.end method

.method public setReadPendingIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$CarExtender$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setReplyAction(Landroid/app/PendingIntent;Landroid/app/RemoteInput;)Landroid/app/Notification$CarExtender$Builder;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;

    .prologue
    iput-object p2, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method
