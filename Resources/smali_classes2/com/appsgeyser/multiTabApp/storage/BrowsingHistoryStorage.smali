.class public Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;
.super Ljava/lang/Object;
.source "BrowsingHistoryStorage.java"


# instance fields
.field private _dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-direct {v0, p1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    return-void
.end method


# virtual methods
.method public addHistoryItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string p1, "url"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object p1, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "visitTime"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "history"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public getHistoryItemsGroupedByUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v0, 0x3

    .line 63
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "rowId _id"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "title"

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "url"

    aput-object v4, v3, v0

    .line 67
    new-instance v0, Ljava/util/Date;

    const-string v4, "2014/01/01"

    invoke-direct {v0, v4}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    const-string v5, "2016/09/09"

    invoke-direct {v4, v5}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->loadHistory(Ljava/util/Date;Ljava/util/Date;)Landroid/database/Cursor;

    if-eqz p1, :cond_0

    .line 73
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "url MATCH ?"

    move-object v4, p1

    move-object v5, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move-object v4, p1

    move-object v5, v4

    .line 76
    :goto_0
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 77
    const-string p1, "history"

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v8, 0x0

    const-string v9, "6"

    const-string v6, "url"

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public loadHistory(Ljava/util/Date;Ljava/util/Date;)Landroid/database/Cursor;
    .locals 10

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_0

    .line 31
    sget-object v1, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v1, "visitTime>= ?"

    goto :goto_0

    .line 29
    :cond_0
    const-string v1, ""

    :goto_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "visitTime<= ?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    sget-object p1, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v5, v1

    .line 41
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v6, p1, [Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 p1, 0x4

    .line 43
    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p2, "rowId _id"

    aput-object p2, v4, p1

    const/4 p1, 0x1

    const-string p2, "title"

    aput-object p2, v4, p1

    const/4 p1, 0x2

    const-string p2, "url"

    aput-object p2, v4, p1

    const/4 p1, 0x3

    const-string p2, "visitTime"

    aput-object p2, v4, p1

    .line 48
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 49
    const-string p1, "history"

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    return-object p2

    .line 54
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_4
    return-object p1
.end method

.method public loadWeeklyHistory()Landroid/database/Cursor;
    .locals 6

    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 18
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->loadHistory(Ljava/util/Date;Ljava/util/Date;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public removeHistoryAllItem()I
    .locals 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "history"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeHistoryAllItem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public removeHistoryItemById(J)I
    .locals 4

    const-string v0, "rowId="

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "history"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 95
    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "removeHistoryItemById"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method
