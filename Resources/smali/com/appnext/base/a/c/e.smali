.class public abstract Lcom/appnext/base/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/a/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MODE",
        "L:Lcom/appnext/base/a/b/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final eh:I = -0x1

.field private static final ei:Ljava/lang/String; = " DESC"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-wide/16 v2, -0x1

    .line 78
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 84
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v2

    :catch_0
    move-exception p0

    .line 81
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance p2, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v2
.end method

.method protected static a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    const-wide/16 v0, -0x1

    .line 45
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v2, p0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 47
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 53
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0

    :catch_0
    move-exception p0

    .line 50
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0
.end method

.method private static a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/c/e$a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 283
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_1

    .line 292
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appnext/base/a/c/e$a;

    invoke-virtual {v3}, Lcom/appnext/base/a/c/e$a;->au()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :catchall_0
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 92
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 98
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v1

    :catch_0
    move-exception p0

    .line 95
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance p2, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v1
.end method

.method protected static b(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5

    const-wide/16 v0, -0x1

    .line 61
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 62
    invoke-virtual {v2, p0, v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    .line 63
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 69
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p1, p0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0

    :catch_0
    move-exception p0

    .line 66
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0
.end method

.method private static b(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 4

    .line 106
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 109
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private e(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TMODE",
            "L;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 268
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/appnext/base/a/c/e;->b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/d;

    move-result-object v1

    .line 270
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 273
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method protected static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 220
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 226
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p0

    .line 224
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p1, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method protected static z(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " DESC"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/c/e$a;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 205
    invoke-static {p2, p4}, Lcom/appnext/base/a/c/e;->a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 207
    :goto_0
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 208
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 212
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p2, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    new-instance p3, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 210
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p2, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance p3, Ljava/lang/Exception;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method protected final a(Ljava/lang/String;Lorg/json/JSONArray;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_1

    .line 146
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 147
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 150
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 151
    invoke-static {v5}, Lcom/appnext/base/a/c/e;->b(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v3, p1, v5}, Lcom/appnext/base/a/c/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 158
    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 159
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/base/a/a/a;->ae()V

    goto :goto_2

    :catchall_0
    const/4 v3, 0x0

    :catchall_1
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-wide v0
.end method

.method protected final a(Ljava/lang/String;Lorg/json/JSONObject;)J
    .locals 5

    const-wide/16 v0, -0x1

    .line 127
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 129
    invoke-static {p2}, Lcom/appnext/base/a/c/e;->b(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object p2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    .line 130
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 136
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p2, Lcom/appnext/base/a/a/a$a;->Global$53629b42:I

    invoke-static {p2, p1}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0

    :catch_0
    move-exception p1

    .line 133
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    sget p2, Lcom/appnext/base/a/a/a$a;->DatabaseOrDiskFull$53629b42:I

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/appnext/base/a/a/a;->a(ILjava/lang/Throwable;)V

    return-wide v0
.end method

.method protected final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/c/e$a;",
            ">;)",
            "Ljava/util/List<",
            "TMODE",
            "L;",
            ">;"
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 249
    invoke-virtual {p0}, Lcom/appnext/base/a/c/e;->at()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p5}, Lcom/appnext/base/a/c/e;->a([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p3

    move-object v8, p4

    .line 248
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 250
    invoke-direct {p0, p1}, Lcom/appnext/base/a/c/e;->e(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 251
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract at()[Ljava/lang/String;
.end method

.method protected final b(Ljava/lang/String;Lorg/json/JSONArray;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_1

    .line 172
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 173
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 176
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 177
    invoke-static {v5}, Lcom/appnext/base/a/c/e;->b(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v3, p1, v5}, Lcom/appnext/base/a/c/e;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 184
    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 185
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/base/a/a/a;->ae()V

    goto :goto_2

    :catchall_0
    const/4 v3, 0x0

    :catchall_1
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-wide v0
.end method

.method protected abstract b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TMODE",
            "L;"
        }
    .end annotation
.end method

.method protected final delete(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/appnext/base/a/c/e;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    return-void
.end method

.method protected final y(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TMODE",
            "L;",
            ">;"
        }
    .end annotation

    .line 232
    :try_start_0
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->ad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/appnext/base/a/c/e;->at()[Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 233
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 235
    invoke-direct {p0, p1}, Lcom/appnext/base/a/c/e;->e(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 236
    invoke-static {}, Lcom/appnext/base/a/a/a;->ac()Lcom/appnext/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/base/a/a/a;->ae()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method
