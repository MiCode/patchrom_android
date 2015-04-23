.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "android.content.IContentProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .local v0, "in":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContentProviderProxy;

    .end local v0    # "in":Landroid/content/IContentProvider;
    invoke-direct {v0, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 49
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :pswitch_1
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .local v6, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .local v39, "num":I
    const/4 v7, 0x0

    .local v7, "projection":[Ljava/lang/String;
    if-lez v39, :cond_0

    move/from16 v0, v39

    new-array v7, v0, [Ljava/lang/String;

    const/16 v36, 0x0

    .local v36, "i":I
    :goto_1
    move/from16 v0, v36

    move/from16 v1, v39

    if-ge v0, v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v36

    add-int/lit8 v36, v36, 0x1

    goto :goto_1

    .end local v36    # "i":I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    const/4 v9, 0x0

    .local v9, "selectionArgs":[Ljava/lang/String;
    if-lez v39, :cond_1

    move/from16 v0, v39

    new-array v9, v0, [Ljava/lang/String;

    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_2
    move/from16 v0, v36

    move/from16 v1, v39

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v36

    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .end local v36    # "i":I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v41

    .local v41, "observer":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v11

    .local v11, "cancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/content/ContentProviderNative;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v32

    .local v32, "cursor":Landroid/database/Cursor;
    if-eqz v32, :cond_6

    const/16 v28, 0x0

    .local v28, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_1
    new-instance v29, Landroid/database/CursorToBulkCursorAdaptor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2, v4}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .local v29, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    const/16 v32, 0x0

    :try_start_2
    invoke-virtual/range {v29 .. v29}, Landroid/database/CursorToBulkCursorAdaptor;->getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v33

    .local v33, "d":Landroid/database/BulkCursorDescriptor;
    const/16 v28, 0x0

    .end local v29    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/database/BulkCursorDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v28, :cond_2

    :try_start_4
    invoke-virtual/range {v28 .. v28}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    :cond_2
    if-eqz v32, :cond_3

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .end local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .end local v33    # "d":Landroid/database/BulkCursorDescriptor;
    :cond_3
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v28, :cond_4

    invoke-virtual/range {v28 .. v28}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    :cond_4
    if-eqz v32, :cond_5

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "sortOrder":Ljava/lang/String;
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .end local v39    # "num":I
    .end local v41    # "observer":Landroid/database/IContentObserver;
    :catch_0
    move-exception v34

    .local v34, "e":Ljava/lang/Exception;
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v5    # "callingPkg":Ljava/lang/String;
    .restart local v6    # "url":Landroid/net/Uri;
    .restart local v7    # "projection":[Ljava/lang/String;
    .restart local v8    # "selection":Ljava/lang/String;
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "sortOrder":Ljava/lang/String;
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    .restart local v39    # "num":I
    .restart local v41    # "observer":Landroid/database/IContentObserver;
    :cond_6
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "sortOrder":Ljava/lang/String;
    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .end local v39    # "num":I
    .end local v41    # "observer":Landroid/database/IContentObserver;
    :pswitch_2
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v47

    .local v47, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v6    # "url":Landroid/net/Uri;
    .end local v47    # "type":Ljava/lang/String;
    :pswitch_3
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .local v15, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v15}, Landroid/content/ContentProviderNative;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v43

    .local v43, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v43    # "out":Landroid/net/Uri;
    :pswitch_4
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/content/ContentValues;

    .local v15, "values":[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v15}, Landroid/content/ContentProviderNative;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v31

    .local v31, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v15    # "values":[Landroid/content/ContentValues;
    .end local v31    # "count":I
    :pswitch_5
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .local v40, "numOperations":I
    new-instance v42, Ljava/util/ArrayList;

    move-object/from16 v0, v42

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v42, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_5
    move/from16 v0, v36

    move/from16 v1, v40

    if-ge v0, v1, :cond_7

    sget-object v4, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v36, v36, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v45

    .local v45, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v36    # "i":I
    .end local v40    # "numOperations":I
    .end local v42    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v45    # "results":[Landroid/content/ContentProviderResult;
    :pswitch_6
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8, v9}, Landroid/content/ContentProviderNative;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v31

    .restart local v31    # "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v31    # "count":I
    :pswitch_7
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    sget-object v4, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .local v15, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "selection":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentProviderNative;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v31

    .restart local v31    # "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v8    # "selection":Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v31    # "count":I
    :pswitch_8
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "mode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v20

    .local v20, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .local v21, "callerToken":Landroid/os/IBinder;
    move-object/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentProviderNative;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;

    move-result-object v35

    .local v35, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v19    # "mode":Ljava/lang/String;
    .end local v20    # "signal":Landroid/os/ICancellationSignal;
    .end local v21    # "callerToken":Landroid/os/IBinder;
    .end local v35    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_9
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "mode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v20

    .restart local v20    # "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/content/ContentProviderNative;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v35

    .local v35, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_9

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v19    # "mode":Ljava/lang/String;
    .end local v20    # "signal":Landroid/os/ICancellationSignal;
    .end local v35    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_a
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .local v37, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .local v46, "stringArg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v30

    .local v30, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v46

    move-object/from16 v3, v30

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v44

    .local v44, "responseBundle":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v30    # "args":Landroid/os/Bundle;
    .end local v37    # "method":Ljava/lang/String;
    .end local v44    # "responseBundle":Landroid/os/Bundle;
    .end local v46    # "stringArg":Ljava/lang/String;
    :pswitch_b
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .local v38, "mimeTypeFilter":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    .local v48, "types":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v6    # "url":Landroid/net/Uri;
    .end local v38    # "mimeTypeFilter":Ljava/lang/String;
    .end local v48    # "types":[Ljava/lang/String;
    :pswitch_c
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v26

    .local v26, "opts":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v20

    .restart local v20    # "signal":Landroid/os/ICancellationSignal;
    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v27, v20

    invoke-virtual/range {v22 .. v27}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v35

    .restart local v35    # "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v20    # "signal":Landroid/os/ICancellationSignal;
    .end local v25    # "mimeType":Ljava/lang/String;
    .end local v26    # "opts":Landroid/os/Bundle;
    .end local v35    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_d
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v11

    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-interface {v11}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :pswitch_e
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderNative;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v43

    .restart local v43    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v5    # "callingPkg":Ljava/lang/String;
    .end local v6    # "url":Landroid/net/Uri;
    .end local v43    # "out":Landroid/net/Uri;
    :pswitch_f
    const-string v4, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "callingPkg":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .restart local v6    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderNative;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v43

    .restart local v43    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v43    # "out":Landroid/net/Uri;
    .restart local v7    # "projection":[Ljava/lang/String;
    .restart local v8    # "selection":Ljava/lang/String;
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "sortOrder":Ljava/lang/String;
    .restart local v11    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .restart local v29    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    .restart local v39    # "num":I
    .restart local v41    # "observer":Landroid/database/IContentObserver;
    :catchall_1
    move-exception v4

    move-object/from16 v28, v29

    .end local v29    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local v28    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
