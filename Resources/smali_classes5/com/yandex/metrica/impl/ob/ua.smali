.class public Lcom/yandex/metrica/impl/ob/ua;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/Q0;",
            ")",
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/YandexMetricaConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xl;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Xl;-><init>()V

    .line 2
    new-instance v8, Lcom/yandex/metrica/impl/ob/ta;

    new-instance v5, Lcom/yandex/metrica/impl/ob/na;

    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/ya;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ya;-><init>()V

    invoke-direct {v5, v0, v1}, Lcom/yandex/metrica/impl/ob/na;-><init>(Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/impl/ob/ya;)V

    .line 4
    new-instance v6, Lcom/yandex/metrica/impl/ob/ua$a;

    invoke-direct {v6, p0}, Lcom/yandex/metrica/impl/ob/ua$a;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    new-instance v7, Lcom/yandex/metrica/impl/ob/oa;

    invoke-direct {v7, v0}, Lcom/yandex/metrica/impl/ob/oa;-><init>(Lcom/yandex/metrica/impl/ob/bm;)V

    const-string v4, "activation"

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/ta;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/sa;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wa;)V

    return-object v8
.end method

.method public b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/Q0;",
            ")",
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/impl/ob/v3;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/ta;

    new-instance v4, Lcom/yandex/metrica/impl/ob/pa;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/pa;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/ua$d;

    invoke-direct {v5, p0}, Lcom/yandex/metrica/impl/ob/ua$d;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/ua$e;

    invoke-direct {v6, p0}, Lcom/yandex/metrica/impl/ob/ua$e;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    const-string v3, "clids_info"

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ta;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/sa;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wa;)V

    return-object v7
.end method

.method public c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/Q0;",
            ")",
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/impl/ob/Ud;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/ta;

    new-instance v4, Lcom/yandex/metrica/impl/ob/xa;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/xa;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/ua$b;

    invoke-direct {v5, p0}, Lcom/yandex/metrica/impl/ob/ua$b;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/ua$c;

    invoke-direct {v6, p0}, Lcom/yandex/metrica/impl/ob/ua$c;-><init>(Lcom/yandex/metrica/impl/ob/ua;)V

    const-string v3, "preload_info"

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ta;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/sa;Lcom/yandex/metrica/impl/ob/nm;Lcom/yandex/metrica/impl/ob/wa;)V

    return-object v7
.end method
