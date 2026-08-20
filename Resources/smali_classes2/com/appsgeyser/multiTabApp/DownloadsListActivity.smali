.class public Lcom/appsgeyser/multiTabApp/DownloadsListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DownloadsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_COMPLETE:I = 0x65

.field public static final DOWNLOAD_LIST_MSG:Ljava/lang/String;

.field public static final DOWNLOAD_START:I = 0x64

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final IDM_DELETE:I

.field private _dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

.field activityReceiver:Landroid/content/BroadcastReceiver;

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
            ">;"
        }
    .end annotation
.end field

.field downloadManager:Landroid/app/DownloadManager;

.field private downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
            ">;"
        }
    .end annotation
.end field

.field private myTimer:Ljava/util/Timer;

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a013b
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->DOWNLOAD_LIST_MSG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->IDM_DELETE:I

    .line 288
    new-instance v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$2;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$2;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->comparator:Ljava/util/Comparator;

    .line 303
    new-instance v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$3;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->fileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Ljava/util/Timer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->myTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->myTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 47
    sget-object v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    return-object p0
.end method

.method private fileExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 134
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    return-object v0

    .line 140
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 141
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 144
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    const-string v1, "downloadsList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public delete(I)V
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v0

    .line 200
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id_d = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "downloadsList"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 203
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemList()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 216
    new-instance v1, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-direct {v1, v0}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v2, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 219
    const-string v4, "downloadsList"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 221
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 224
    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 225
    const-string v5, "description"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 226
    const-string v6, "id_d"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 227
    const-string v7, "link_d"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 228
    const-string v8, "file_path"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 229
    const-string v9, "date"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 232
    :cond_0
    new-instance v10, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDescription(Ljava/lang/String;)V

    .line 234
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setFile_path(Ljava/lang/String;)V

    .line 235
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setId_d(J)V

    .line 236
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setLink_d(Ljava/lang/String;)V

    .line 237
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDate(Ljava/lang/Long;)V

    .line 239
    new-instance v11, Landroid/app/DownloadManager$Query;

    invoke-direct {v11}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 240
    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getId_d()J

    move-result-wide v12

    const/4 v14, 0x1

    new-array v14, v14, [J

    const/4 v15, 0x0

    aput-wide v12, v14, v15

    invoke-virtual {v11, v14}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 241
    iget-object v12, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v12, v11}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v11

    .line 242
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 244
    const-string v12, "status"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 246
    const-string v13, "last_modified_timestamp"

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 248
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 249
    const-string v14, "total_size"

    .line 250
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 249
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x2

    if-eq v12, v15, :cond_5

    const/16 v14, 0x8

    const-wide/16 v15, 0x0

    if-eq v12, v14, :cond_3

    const/16 v14, 0x10

    if-eq v12, v14, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    sget-object v12, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setStatus(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;)V

    .line 259
    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v12, v17, v15

    if-nez v12, :cond_6

    .line 260
    :cond_2
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDate(Ljava/lang/Long;)V

    goto :goto_0

    .line 253
    :cond_3
    sget-object v12, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Ok:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setStatus(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;)V

    .line 254
    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v10}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getDate()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v12, v17, v15

    if-nez v12, :cond_6

    .line 255
    :cond_4
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setDate(Ljava/lang/Long;)V

    goto :goto_0

    .line 268
    :cond_5
    sget-object v12, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setStatus(Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;)V

    .line 269
    const-string v12, "bytes_so_far"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x64

    .line 270
    div-int/2addr v12, v14

    .line 271
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->setProgress(Ljava/lang/Integer;)V

    .line 275
    :cond_6
    :goto_0
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 277
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 280
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 281
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 283
    iget-object v2, v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 350
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    sget-object p1, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 354
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->delete(I)V

    .line 355
    monitor-exit p1

    :goto_0
    return v1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lcom/appsgeyser/multiTabApp/utils/ThemeUtils;->setCurrentThemeWithNoActionBar(Landroid/app/Activity;)V

    const p1, 0x7f0d001e

    .line 67
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const p1, 0x7f0a013a

    .line 69
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 70
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f1200c4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 78
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 79
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    :cond_0
    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    const v2, 0x7f0d0068

    invoke-direct {v0, p0, v2, v1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    .line 85
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 87
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadManager:Landroid/app/DownloadManager;

    .line 88
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getItemList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->DOWNLOAD_LIST_MSG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v1, v3, :cond_1

    .line 92
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v0, v3}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    :goto_0
    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-direct {v0, p0, v2, v1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    .line 98
    new-instance v0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;

    invoke-direct {v0, p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->myTimer:Ljava/util/Timer;

    .line 129
    new-instance v2, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity$ProgressTask;-><init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Lcom/appsgeyser/multiTabApp/DownloadsListActivity$1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 334
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 337
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 343
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->itemList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 p2, 0x1

    const p3, 0x7f1200b8

    const/4 v0, 0x0

    .line 344
    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :catch_0
    move-exception p1

    .line 339
    const-string p2, "onCreateContextMenu"

    const-string p3, "bad menuInfo"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 383
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 384
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->activityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 369
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0116

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->delete()V

    .line 372
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->downloadsItemAdapter:Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItemAdapter;->notifyDataSetChanged()V

    return v1

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->finish()V

    return v1
.end method

.method protected onStop()V
    .locals 0

    .line 389
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
