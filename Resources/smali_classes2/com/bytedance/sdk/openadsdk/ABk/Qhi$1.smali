.class Lcom/bytedance/sdk/openadsdk/ABk/Qhi$1;
.super Ljava/lang/Object;
.source "BusMonitorCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/ABk/fl;

.field final synthetic cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;Lcom/bytedance/sdk/openadsdk/ABk/fl;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$1;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    move-object/from16 v1, p0

    .line 74
    const-string v0, "mediation"

    const-string v2, "label"

    const-string v3, "tag"

    const-string v4, "rit"

    const-string v5, "scene"

    const-string v6, "sdk_version"

    const-string v7, "timestamp"

    const-string v8, "fail_count"

    const-string v9, "success_count"

    const-string v10, "start_count"

    const-string v11, "_id"

    const-string v12, "BusMonitorCenter"

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$1;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    move-result-object v14

    invoke-interface {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->isMonitorOpen()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 75
    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$1;->cJ:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/fl;

    invoke-interface {v13}, Lcom/bytedance/sdk/openadsdk/ABk/fl;->generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac()Ljava/lang/String;

    move-result-object v13

    const-string v14, "insertBusMonitorModel3"

    filled-new-array {v14, v13}, [Ljava/lang/Object;

    .line 82
    :try_start_0
    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$1;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/fl;

    invoke-interface {v14}, Lcom/bytedance/sdk/openadsdk/ABk/fl;->generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v14, :cond_a

    .line 84
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi/Qhi;->Qhi()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v15, :cond_9

    .line 86
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v13, 0xd

    .line 88
    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v11, v13, v16

    const/16 v17, 0x1

    aput-object v6, v13, v17

    const/16 v18, 0x2

    aput-object v5, v13, v18

    const/16 v19, 0x3

    aput-object v10, v13, v19

    const/16 v20, 0x4

    aput-object v9, v13, v20

    const/4 v1, 0x5

    aput-object v8, v13, v1

    const/16 v21, 0x6

    aput-object v4, v13, v21

    const/16 v22, 0x7

    aput-object v3, v13, v22

    const/16 v1, 0x8

    aput-object v2, v13, v1

    const/16 v23, 0x9

    aput-object v7, v13, v23

    const/16 v23, 0xa

    aput-object v0, v13, v23

    const-string v23, "is_init"

    const/16 v24, 0xb

    aput-object v23, v13, v24

    const-string v23, "extra"

    const/16 v24, 0xc

    aput-object v23, v13, v24

    .line 119
    const-string v23, "sdk_version = ? AND scene = ? AND rit = ? AND tag = ? AND label = ? AND mediation = ? AND is_init = ? AND extra = ?"

    .line 122
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v1, v16

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v17

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ROR()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v18

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Sf()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v19

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->hm()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v20

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Gm()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x5

    aput-object v16, v1, v17

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->zc()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v21

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ABk()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v22

    .line 124
    const-string v16, "monitor_table"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v24, v15

    move-object/from16 v17, v13

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    :try_start_3
    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v1, :cond_7

    .line 127
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 129
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_1

    .line 130
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v15, v12

    :try_start_5
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 131
    invoke-virtual {v14, v12, v13}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi(J)V

    goto :goto_0

    :cond_1
    move-object v15, v12

    .line 134
    :goto_0
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_2

    .line 135
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ()I

    move-result v13

    add-int/2addr v12, v13

    .line 136
    invoke-virtual {v14, v12}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi(I)V

    .line 139
    :cond_2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_3

    .line 140
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->fl()I

    move-result v13

    add-int/2addr v12, v13

    .line 141
    invoke-virtual {v14, v12}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(I)V

    .line 144
    :cond_3
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_4

    .line 145
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Tgh()I

    move-result v13

    add-int/2addr v12, v13

    .line 146
    invoke-virtual {v14, v12}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac(I)V

    .line 149
    :cond_4
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_5

    .line 150
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 151
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->WAv()J

    move-result-wide v2

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(J)V

    goto :goto_1

    :cond_5
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_1

    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v15, v12

    .line 156
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v15, v12

    :goto_2
    move-object v1, v15

    move-object/from16 v13, v24

    goto/16 :goto_b

    :cond_7
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v15, v12

    .line 159
    :goto_3
    :try_start_6
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 160
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi()J

    move-result-wide v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-lez v2, :cond_8

    .line 161
    :try_start_7
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    :cond_8
    :try_start_8
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->fl()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Tgh()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ROR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Sf()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->hm()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->WAv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Gm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "is_init"

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->zc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v0, "extra"

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ABk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "monitor_table"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v2, v24

    const/4 v3, 0x0

    const/4 v4, 0x5

    :try_start_9
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 177
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v15, v12

    :goto_4
    move-object/from16 v2, v24

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v2, v15

    move-object v15, v12

    :goto_5
    move-object v13, v2

    goto :goto_7

    :cond_9
    move-object v2, v15

    move-object v15, v12

    :goto_6
    move-object v13, v2

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object v15, v12

    const/4 v3, 0x0

    move-object v13, v3

    :goto_7
    move-object v1, v15

    goto :goto_b

    :cond_a
    move-object v15, v12

    const/4 v3, 0x0

    move-object v13, v3

    :goto_8
    if-eqz v13, :cond_b

    .line 185
    :try_start_a
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 188
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v15

    :goto_9
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_a
    return-void

    :catchall_8
    move-exception v0

    move-object v1, v12

    const/4 v3, 0x0

    move-object v13, v3

    .line 181
    :goto_b
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-eqz v13, :cond_c

    .line 185
    :try_start_c
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 188
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_c
    :goto_c
    return-void

    :catchall_a
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_d

    .line 185
    :try_start_d
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object v3, v0

    .line 188
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_d
    :goto_d
    throw v2
.end method
