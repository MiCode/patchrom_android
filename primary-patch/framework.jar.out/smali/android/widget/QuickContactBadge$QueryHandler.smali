.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    .local v8, "lookupUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .local v4, "createUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .local v9, "trigger":Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v5, p2

    .local v5, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v10, v8}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # invokes: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v10}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    if-eqz v9, :cond_5

    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # getter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v10}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v10}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # getter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v12}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v13, v13, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    iget-object v14, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # getter for: Landroid/widget/QuickContactBadge;->mPrioritizedMimeType:Ljava/lang/String;
    invoke-static {v14}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v11, v12, v13, v14}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    .end local v5    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v5    # "extras":Landroid/os/Bundle;
    :pswitch_0
    const/4 v9, 0x1

    :try_start_0
    const-string v10, "tel"

    const-string v11, "uri_content"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .local v2, "contactId":J
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    .end local v2    # "contactId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    const/4 v9, 0x1

    const-string v10, "mailto"

    const-string v11, "uri_content"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .restart local v2    # "contactId":J
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "lookupKey":Ljava/lang/String;
    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto/16 :goto_1

    .end local v2    # "contactId":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v10

    if-eqz p3, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v10

    :cond_5
    if-eqz v4, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v6, v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v6, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_6

    const-string v10, "uri_content"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_6
    iget-object v10, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v10}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
