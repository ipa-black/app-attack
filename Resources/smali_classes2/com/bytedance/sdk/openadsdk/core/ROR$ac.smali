.class public Lcom/bytedance/sdk/openadsdk/core/ROR$ac;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ac"
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR;

.field private cJ:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ROR;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private declared-synchronized Tgh()Z
    .locals 1

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized fl()V
    .locals 4

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ROR;->cJ()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ROR$Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR;Landroid/content/Context;)V

    .line 60
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR$Qhi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 63
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 65
    :try_start_3
    const-string v1, "DBHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->Tgh()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v1, :cond_2

    .line 70
    monitor-exit p0

    return-void

    .line 67
    :cond_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized CJ()V
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->fl()V

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 195
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Qhi(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->fl()V

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 122
    :try_start_1
    const-string p2, "DBHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->Tgh()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 128
    :goto_0
    monitor-exit p0

    return p1

    .line 125
    :cond_0
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized Qhi(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->fl()V

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 154
    :try_start_1
    const-string p2, "DBHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->Tgh()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 160
    :goto_0
    monitor-exit p0

    return p1

    .line 157
    :cond_0
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized Qhi(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->fl()V

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 138
    :try_start_1
    const-string p2, "DBHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->Tgh()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    const-wide/16 p1, -0x1

    .line 144
    :goto_0
    monitor-exit p0

    return-wide p1

    .line 141
    :cond_0
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized Qhi(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->fl()V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    const-string p2, "DBHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ROR$cJ;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ROR$cJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/ROR;Lcom/bytedance/sdk/openadsdk/core/ROR$1;)V

    .line 107
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->Tgh()Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_0

    move-object p1, p2

    .line 111
    :goto_0
    monitor-exit p0

    return-object p1

    .line 108
    :cond_0
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public Qhi()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->fl()V

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public declared-synchronized Qhi(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->fl()V

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->Tgh()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_0

    .line 87
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ac()V
    .locals 1

    monitor-enter p0

    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->fl()V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 187
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cJ()V
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->fl()V

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR$ac;->cJ:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 179
    monitor-exit p0

    return-void

    .line 181
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
