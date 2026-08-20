.class Lcom/yandex/metrica/impl/ob/l1;
.super Lcom/yandex/metrica/impl/ob/B;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ob/T1;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/yandex/metrica/impl/ob/A0;

    invoke-direct {v5, p1}, Lcom/yandex/metrica/impl/ob/A0;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/l1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/A0;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/A0;)V
    .locals 15

    move-object/from16 v3, p3

    .line 2
    new-instance v4, Lcom/yandex/metrica/impl/ob/Q1;

    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v0, v3}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/e;)V

    iget-object v1, v3, Lcom/yandex/metrica/ReporterConfig;->userProfileID:Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-direct {v4, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/Q1;-><init>(Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->j()Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v6

    new-instance v7, Lcom/yandex/metrica/impl/ob/Zg;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/Zg;-><init>()V

    new-instance v8, Lcom/yandex/metrica/impl/ob/Yg;

    const/4 v0, 0x0

    invoke-direct {v8, v0, v0}, Lcom/yandex/metrica/impl/ob/Yg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/yandex/metrica/impl/ob/X6;

    invoke-direct {v9}, Lcom/yandex/metrica/impl/ob/X6;-><init>()V

    new-instance v10, Lcom/yandex/metrica/impl/ob/S6;

    invoke-direct {v10}, Lcom/yandex/metrica/impl/ob/S6;-><init>()V

    new-instance v11, Lcom/yandex/metrica/impl/ob/M6;

    invoke-direct {v11}, Lcom/yandex/metrica/impl/ob/M6;-><init>()V

    new-instance v12, Lcom/yandex/metrica/impl/ob/K6;

    invoke-direct {v12}, Lcom/yandex/metrica/impl/ob/K6;-><init>()V

    new-instance v13, Lcom/yandex/metrica/impl/ob/s6;

    move-object/from16 v5, p5

    invoke-direct {v13, v5}, Lcom/yandex/metrica/impl/ob/s6;-><init>(Lcom/yandex/metrica/impl/ob/A0;)V

    .line 16
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->k()Lcom/yandex/metrica/impl/ob/zg;

    move-result-object v14

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 17
    invoke-direct/range {v0 .. v14}, Lcom/yandex/metrica/impl/ob/l1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ob/Q1;Lcom/yandex/metrica/impl/ob/A0;Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/impl/ob/Zg;Lcom/yandex/metrica/impl/ob/Yg;Lcom/yandex/metrica/impl/ob/X6;Lcom/yandex/metrica/impl/ob/S6;Lcom/yandex/metrica/impl/ob/M6;Lcom/yandex/metrica/impl/ob/K6;Lcom/yandex/metrica/impl/ob/s6;Lcom/yandex/metrica/impl/ob/zg;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ob/Q1;Lcom/yandex/metrica/impl/ob/A0;Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/impl/ob/Zg;Lcom/yandex/metrica/impl/ob/Yg;Lcom/yandex/metrica/impl/ob/X6;Lcom/yandex/metrica/impl/ob/S6;Lcom/yandex/metrica/impl/ob/M6;Lcom/yandex/metrica/impl/ob/K6;Lcom/yandex/metrica/impl/ob/s6;Lcom/yandex/metrica/impl/ob/zg;)V
    .locals 17

    move-object/from16 v0, p3

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/metrica/impl/ob/T1;->b()Lcom/yandex/metrica/rtm/wrapper/k;

    move-result-object v1

    iget-object v2, v0, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v4, p7

    invoke-virtual {v4, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Zg;->a(Lcom/yandex/metrica/rtm/wrapper/k;Ljava/lang/String;Z)Lcom/yandex/metrica/rtm/wrapper/d;

    move-result-object v10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    .line 19
    invoke-direct/range {v4 .. v16}, Lcom/yandex/metrica/impl/ob/B;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/Q1;Lcom/yandex/metrica/impl/ob/A0;Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/rtm/wrapper/d;Lcom/yandex/metrica/impl/ob/Yg;Lcom/yandex/metrica/impl/ob/X6;Lcom/yandex/metrica/impl/ob/S6;Lcom/yandex/metrica/impl/ob/M6;Lcom/yandex/metrica/impl/ob/K6;Lcom/yandex/metrica/impl/ob/s6;)V

    .line 35
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ag;

    move-object/from16 v2, p2

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/Ag;-><init>(Lcom/yandex/metrica/ReporterConfig;Lcom/yandex/metrica/impl/ob/T1;)V

    .line 39
    iget-object v0, v0, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    move-object/from16 v2, p14

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/zg;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ag;)V

    return-void
.end method
