.class Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;
.super Ljava/lang/Object;
.source "BusMonitorCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ABk/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    move-object/from16 v1, p0

    .line 253
    const-string v0, "extra"

    const-string v2, "is_init"

    const-string v3, "mediation"

    const-string v4, "label"

    const-string v5, "tag"

    const-string v6, "rit"

    const-string v7, "fail_count"

    const-string v8, "success_count"

    const-string v9, "start_count"

    const-string v10, "scene"

    const-string v11, "sdk_version"

    const-string v12, "_id"

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi/Qhi;->cJ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    if-eqz v13, :cond_12

    const/16 v14, 0xd

    .line 255
    new-array v15, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v15, v14

    const/4 v14, 0x1

    aput-object v11, v15, v14

    const/16 v17, 0x2

    aput-object v10, v15, v17

    const/16 v17, 0x3

    aput-object v9, v15, v17

    const/16 v17, 0x4

    aput-object v8, v15, v17

    const/16 v17, 0x5

    aput-object v7, v15, v17

    const/16 v17, 0x6

    aput-object v6, v15, v17

    const/16 v17, 0x7

    aput-object v5, v15, v17

    const/16 v17, 0x8

    aput-object v4, v15, v17

    const-string v17, "timestamp"

    const/16 v18, 0x9

    aput-object v17, v15, v18

    const/16 v14, 0xa

    aput-object v3, v15, v14

    const/16 v18, 0xb

    aput-object v2, v15, v18

    const/16 v18, 0xc

    aput-object v0, v15, v18

    .line 271
    const-string v18, "timestamp <= ?"

    move-object/from16 v22, v0

    const/4 v14, 0x1

    .line 272
    new-array v0, v14, [Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->cJ()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v0, v16

    .line 274
    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    move-result-object v14

    invoke-interface {v14}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->getOnceLogCount()I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0xa

    :try_start_1
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v1, 0x64

    if-le v14, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    move v1, v14

    .line 278
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 280
    const-string v14, "monitor_table"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move/from16 v24, v1

    move/from16 v1, v16

    const/16 v25, 0x1

    move-object/from16 v16, v18

    move-object/from16 v17, v0

    move-object/from16 v18, v23

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 283
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 284
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 285
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 286
    new-instance v15, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-direct {v15}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;-><init>()V

    .line 288
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    if-ltz v16, :cond_1

    .line 289
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 290
    invoke-virtual {v15, v12, v13}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi(J)V

    .line 291
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .line 294
    :goto_2
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 295
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi(Ljava/lang/String;)V

    .line 298
    :cond_2
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 299
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(Ljava/lang/String;)V

    .line 302
    :cond_3
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 303
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Qhi(I)V

    .line 306
    :cond_4
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 307
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(I)V

    .line 310
    :cond_5
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 311
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac(I)V

    .line 314
    :cond_6
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 315
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ac(Ljava/lang/String;)V

    .line 318
    :cond_7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_8

    .line 319
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ(Ljava/lang/String;)V

    .line 322
    :cond_8
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    .line 323
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->fl(Ljava/lang/String;)V

    .line 326
    :cond_9
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    .line 327
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->Tgh(Ljava/lang/String;)V

    .line 330
    :cond_a
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_b

    .line 331
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->CJ(I)V

    :cond_b
    move-object/from16 v1, v22

    .line 334
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_c

    .line 335
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->ROR(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v12, v18

    .line 337
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v1

    move-object v13, v12

    move-object/from16 v12, v17

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_d
    move-object v12, v13

    .line 340
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 343
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_11

    move-object/from16 v1, p0

    .line 344
    :try_start_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/cJ;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/bytedance/sdk/openadsdk/ABk/cJ;->onMonitorUpload(Ljava/util/List;)V

    .line 345
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi/Qhi;->Qhi()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 346
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 349
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 350
    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_e

    .line 352
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 355
    :cond_f
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 356
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 357
    const-string v4, "monitor_table"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 358
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 359
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->CJ(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->cJ()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/ABk/ac/Qhi;->Qhi(J)V

    .line 363
    :cond_10
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v14, v24

    if-lt v0, v14, :cond_12

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Tgh(Lcom/bytedance/sdk/openadsdk/ABk/Qhi;)I

    move-result v0

    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_12

    .line 364
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/ABk/Qhi$3;->Qhi:Lcom/bytedance/sdk/openadsdk/ABk/Qhi;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/ABk/Qhi;->Qhi(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :cond_11
    move-object/from16 v1, p0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :cond_12
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    .line 372
    :goto_5
    const-string v2, "BusMonitorCenter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
