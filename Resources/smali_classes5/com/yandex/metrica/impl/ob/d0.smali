.class public Lcom/yandex/metrica/impl/ob/d0;
.super Lcom/yandex/metrica/impl/ob/B;
.source "SourceFile"


# instance fields
.field private final p:Lcom/yandex/metrica/impl/ob/n6;

.field private final q:Lcom/yandex/metrica/impl/ob/v6;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/i;Lcom/yandex/metrica/impl/ob/T1;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/yandex/metrica/impl/ob/A0;

    invoke-direct {v5, p1}, Lcom/yandex/metrica/impl/ob/A0;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/d0;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/i;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/A0;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/i;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/A0;)V
    .locals 15

    move-object/from16 v0, p3

    .line 2
    new-instance v3, Lcom/yandex/metrica/impl/ob/Q1;

    new-instance v1, Lcom/yandex/metrica/CounterConfiguration;

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$b;->h:Lcom/yandex/metrica/CounterConfiguration$b;

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Lcom/yandex/metrica/i;Lcom/yandex/metrica/CounterConfiguration$b;)V

    iget-object v0, v0, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-direct {v3, v2, v1, v0}, Lcom/yandex/metrica/impl/ob/Q1;-><init>(Lcom/yandex/metrica/impl/ob/A3;Lcom/yandex/metrica/CounterConfiguration;Ljava/lang/String;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/n6;

    move-object/from16 v1, p1

    invoke-direct {v5, v1}, Lcom/yandex/metrica/impl/ob/n6;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/v6;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/v6;-><init>()V

    .line 13
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->j()Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v7

    new-instance v8, Lcom/yandex/metrica/impl/ob/Ug;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/Ug;-><init>()V

    new-instance v9, Lcom/yandex/metrica/impl/ob/Yg;

    const/4 v0, 0x0

    invoke-direct {v9, v0, v0}, Lcom/yandex/metrica/impl/ob/Yg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/yandex/metrica/impl/ob/X6;

    invoke-direct {v10}, Lcom/yandex/metrica/impl/ob/X6;-><init>()V

    new-instance v11, Lcom/yandex/metrica/impl/ob/S6;

    invoke-direct {v11}, Lcom/yandex/metrica/impl/ob/S6;-><init>()V

    new-instance v12, Lcom/yandex/metrica/impl/ob/M6;

    invoke-direct {v12}, Lcom/yandex/metrica/impl/ob/M6;-><init>()V

    new-instance v13, Lcom/yandex/metrica/impl/ob/K6;

    invoke-direct {v13}, Lcom/yandex/metrica/impl/ob/K6;-><init>()V

    new-instance v14, Lcom/yandex/metrica/impl/ob/s6;

    move-object/from16 v4, p5

    invoke-direct {v14, v4}, Lcom/yandex/metrica/impl/ob/s6;-><init>(Lcom/yandex/metrica/impl/ob/A0;)V

    move-object v0, p0

    move-object/from16 v2, p4

    .line 14
    invoke-direct/range {v0 .. v14}, Lcom/yandex/metrica/impl/ob/d0;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/Q1;Lcom/yandex/metrica/impl/ob/A0;Lcom/yandex/metrica/impl/ob/n6;Lcom/yandex/metrica/impl/ob/v6;Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/rtm/wrapper/d;Lcom/yandex/metrica/impl/ob/Yg;Lcom/yandex/metrica/impl/ob/X6;Lcom/yandex/metrica/impl/ob/S6;Lcom/yandex/metrica/impl/ob/M6;Lcom/yandex/metrica/impl/ob/K6;Lcom/yandex/metrica/impl/ob/s6;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/Q1;Lcom/yandex/metrica/impl/ob/A0;Lcom/yandex/metrica/impl/ob/n6;Lcom/yandex/metrica/impl/ob/v6;Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/rtm/wrapper/d;Lcom/yandex/metrica/impl/ob/Yg;Lcom/yandex/metrica/impl/ob/X6;Lcom/yandex/metrica/impl/ob/S6;Lcom/yandex/metrica/impl/ob/M6;Lcom/yandex/metrica/impl/ob/K6;Lcom/yandex/metrica/impl/ob/s6;)V
    .locals 14

    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    .line 15
    invoke-direct/range {v0 .. v12}, Lcom/yandex/metrica/impl/ob/B;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/Q1;Lcom/yandex/metrica/impl/ob/A0;Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/rtm/wrapper/d;Lcom/yandex/metrica/impl/ob/Yg;Lcom/yandex/metrica/impl/ob/X6;Lcom/yandex/metrica/impl/ob/S6;Lcom/yandex/metrica/impl/ob/M6;Lcom/yandex/metrica/impl/ob/K6;Lcom/yandex/metrica/impl/ob/s6;)V

    move-object/from16 v0, p5

    .line 30
    iput-object v0, v13, Lcom/yandex/metrica/impl/ob/d0;->p:Lcom/yandex/metrica/impl/ob/n6;

    move-object/from16 v0, p6

    .line 31
    iput-object v0, v13, Lcom/yandex/metrica/impl/ob/d0;->q:Lcom/yandex/metrica/impl/ob/v6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/H6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/d0;->p:Lcom/yandex/metrica/impl/ob/n6;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/d0;->q:Lcom/yandex/metrica/impl/ob/v6;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/v6;->a(Lcom/yandex/metrica/impl/ob/H6;Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/n6;->a(Lcom/yandex/metrica/impl/ob/U1$f;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->b(Lcom/yandex/metrica/impl/ob/H6;)V

    return-void
.end method
