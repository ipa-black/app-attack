.class public Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;
.super Ljava/lang/Object;
.source "UGenTmplDbHelper.java"


# static fields
.field public static Qhi:I = 0x14

.field private static volatile cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;


# instance fields
.field private final CJ:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private final ac:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->ac:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac$1;

    sget v1, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->CJ:Landroid/util/LruCache;

    return-void
.end method

.method public static CJ()Ljava/lang/String;
    .locals 1

    .line 330
    const-string v0, "ALTER TABLE ugen_template ADD COLUMN rit TEXT "

    return-object v0
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;
    .locals 2

    .line 57
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    if-nez v0, :cond_1

    .line 58
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    .line 62
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 64
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->cJ:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    return-object v0
.end method

.method public static ac()Ljava/lang/String;
    .locals 1

    .line 327
    const-string v0, "CREATE TABLE IF NOT EXISTS ugen_template (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , rit TEXT , update_time TEXT)"

    return-object v0
.end method

.method private cJ(Ljava/lang/String;)V
    .locals 2

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->CJ:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->ac:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->CJ:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;
    .locals 10

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->ac:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->CJ:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->cJ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 80
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->cJ(Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v2

    .line 85
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ac;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ugen_template"

    const-string v5, "id=? AND md5=?"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v6, v4

    const/4 p1, 0x1

    aput-object p2, v6, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ac;-><init>(Ljava/util/Map;)V

    .line 88
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 90
    :cond_3
    const-string p1, "id"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 91
    const-string p2, "md5"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 92
    const-string v2, "url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 93
    const-string v3, "data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 94
    const-string v4, "update_time"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq p1, v5, :cond_7

    if-eq p2, v5, :cond_7

    if-eq v2, v5, :cond_7

    if-eq v4, v5, :cond_7

    if-ne v3, v5, :cond_4

    goto :goto_1

    .line 98
    :cond_4
    const-string v6, "rit"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 99
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_5

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_5
    if-eq v6, v5, :cond_6

    .line 108
    :try_start_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_6
    move-object v5, v1

    .line 110
    :goto_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 111
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;-><init>()V

    .line 112
    invoke-virtual {v6, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object v6

    .line 113
    invoke-virtual {v6, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    .line 114
    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    .line 115
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    .line 116
    invoke-virtual {p2, v5}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    .line 117
    invoke-virtual {p2, v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p2

    .line 118
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->ac:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :try_start_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->CJ:Landroid/util/LruCache;

    invoke-virtual {v3, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p1, :cond_3

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    .line 120
    :try_start_5
    monitor-exit v2

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    :cond_7
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_8
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 125
    :try_start_6
    const-string p2, "UGTmplDbHelper"

    const-string v2, "getGgenTemplate error"

    invoke-static {p2, v2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :goto_3
    return-object v1

    :catchall_2
    move-exception p1

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    :catchall_3
    move-exception p1

    .line 77
    monitor-exit v0

    throw p1
.end method

.method Qhi(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 226
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 227
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ac;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ugen_template"

    const-string v5, "rit=?"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ac;-><init>(Ljava/util/Map;)V

    .line 229
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 231
    :cond_1
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 233
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 236
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->ac:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 237
    :try_start_1
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->CJ:Landroid/util/LruCache;

    invoke-virtual {v5, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    .line 238
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_2

    .line 240
    :try_start_2
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_2
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;-><init>()V

    .line 243
    const-string v5, "data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_6

    .line 247
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 251
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    .line 252
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    .line 253
    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    .line 254
    const-string v5, "md5"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 255
    const-string v6, "url"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 256
    const-string v7, "update_time"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v5, v3, :cond_3

    .line 258
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    :cond_3
    if-eq v6, v3, :cond_4

    .line 261
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    :cond_4
    if-eq v7, v3, :cond_5

    .line 264
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    .line 266
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->ac:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 268
    :try_start_3
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->CJ:Landroid/util/LruCache;

    invoke-virtual {v5, v2, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v3

    throw p1

    :catchall_1
    move-exception p1

    .line 238
    monitor-exit v4

    throw p1

    .line 273
    :cond_6
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v2, :cond_1

    .line 279
    :cond_7
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 276
    :try_start_5
    const-string v2, "UGTmplDbHelper"

    const-string v3, "getUgenTemplateFormRit error"

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :goto_2
    return-object v0

    :catchall_3
    move-exception p1

    .line 279
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 148
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ac;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ugen_template"

    const-string v4, "id=?"

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v5, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ac;-><init>(Ljava/util/Map;)V

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v9

    goto :goto_0

    :cond_2
    move v1, v10

    .line 151
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :catchall_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "md5"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->cJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "url"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "data"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "rit"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Tgh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "update_time"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->CJ()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v1, :cond_3

    .line 164
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ugen_template"

    const-string v3, "id=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1, v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ugen_template"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 168
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->ac:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->CJ:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method Qhi(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 289
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 294
    array-length v0, p1

    if-lez v0, :cond_1

    .line 295
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 296
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->cJ(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v1

    const-string v3, "ugen_template"

    const-string v6, "id=?"

    invoke-static {v4, v3, v6, v5}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method cJ()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ac;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ugen_template"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/multipro/Qhi/Qhi;->Qhi(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/ac;-><init>(Ljava/util/Map;)V

    .line 180
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    :cond_0
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 183
    const-string v3, "md5"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 184
    const-string v4, "url"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 185
    const-string v5, "data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 186
    const-string v6, "update_time"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    if-eq v3, v7, :cond_2

    if-eq v4, v7, :cond_2

    if-eq v6, v7, :cond_2

    if-eq v5, v7, :cond_2

    .line 190
    const-string v8, "rit"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v7, :cond_1

    .line 193
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 195
    :goto_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 200
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;-><init>()V

    .line 201
    invoke-virtual {v8, v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object v8

    .line 202
    invoke-virtual {v8, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object v3

    .line 203
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object v3

    .line 204
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object v3

    .line 205
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object v3

    .line 206
    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object v3

    .line 207
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->ac:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->CJ:Landroid/util/LruCache;

    invoke-virtual {v5, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4

    throw v2

    .line 211
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_0

    .line 216
    :cond_3
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    .line 214
    :try_start_3
    const-string v3, "UGTmplDbHelper"

    const-string v4, "getUgenTemplate error"

    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :goto_3
    return-object v0

    :catchall_2
    move-exception v0

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
