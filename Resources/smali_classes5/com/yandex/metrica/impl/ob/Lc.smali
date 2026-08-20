.class public Lcom/yandex/metrica/impl/ob/Lc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/ob/Cc;

.field private final b:Lcom/yandex/metrica/impl/ob/G1;

.field private final c:Lcom/yandex/metrica/impl/ob/Ic;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Cc;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/G1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/G1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/Lc;-><init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/G1;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Cc;Lcom/yandex/metrica/impl/ob/G1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lc;->a:Lcom/yandex/metrica/impl/ob/Cc;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Lc;->b:Lcom/yandex/metrica/impl/ob/G1;

    .line 5
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Lc;->a()Lcom/yandex/metrica/impl/ob/Ic;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Lc;->c:Lcom/yandex/metrica/impl/ob/Ic;

    return-void
.end method

.method private a()Lcom/yandex/metrica/impl/ob/Ic;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ic;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ic;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Pc;Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/Ec;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Pc;",
            "Lcom/yandex/metrica/impl/ob/Xb;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Ec<",
            "Lcom/yandex/metrica/impl/ob/Xb;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 2
    new-instance v7, Lcom/yandex/metrica/impl/ob/Ec;

    .line 3
    new-instance v2, Lcom/yandex/metrica/impl/ob/Tc;

    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/Lc;->a:Lcom/yandex/metrica/impl/ob/Cc;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v9, v1, Lcom/yandex/metrica/impl/ob/Sb;->a:Landroid/content/Context;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->b:Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;

    .line 5
    invoke-interface {v1}, Lcom/yandex/metrica/core/api/executors/IHandlerExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v10

    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/Lc;->a:Lcom/yandex/metrica/impl/ob/Cc;

    iget-object v11, v1, Lcom/yandex/metrica/impl/ob/Cc;->b:Landroid/location/LocationManager;

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Lc;->b:Lcom/yandex/metrica/impl/ob/G1;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/Sb;->c:Lcom/yandex/metrica/impl/ob/yd;

    .line 9
    invoke-virtual {v3, v1}, Lcom/yandex/metrica/impl/ob/G1;->c(Lcom/yandex/metrica/impl/ob/yd;)Lcom/yandex/metrica/impl/ob/zd;

    move-result-object v12

    .line 10
    new-instance v14, Lcom/yandex/metrica/impl/ob/zc;

    move-object/from16 v1, p1

    invoke-direct {v14, v1}, Lcom/yandex/metrica/impl/ob/zc;-><init>(Lcom/yandex/metrica/impl/ob/Pc;)V

    const-string v13, "passive"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/yandex/metrica/impl/ob/Tc;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/zd;Ljava/lang/String;Landroid/location/LocationListener;)V

    .line 11
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Lc;->c:Lcom/yandex/metrica/impl/ob/Ic;

    .line 12
    new-instance v4, Lcom/yandex/metrica/impl/ob/Kc;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Kc;-><init>()V

    .line 13
    new-instance v5, Lcom/yandex/metrica/impl/ob/Jc;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Jc;-><init>()V

    move-object v1, v7

    move-object/from16 v6, p2

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Ec;-><init>(Lcom/yandex/metrica/impl/ob/Dc;Lcom/yandex/metrica/impl/ob/Lb;Lcom/yandex/metrica/impl/ob/Gc;Lcom/yandex/metrica/impl/ob/Qb;Ljava/lang/Object;)V

    return-object v7
.end method
