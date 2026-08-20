.class Lcom/yandex/metrica/impl/ob/Dl;
.super Lcom/yandex/metrica/impl/ob/pl;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Lcom/yandex/metrica/impl/ob/nl;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/nl;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/ql;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ql;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/ml;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/ml;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/uk;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/uk;-><init>()V

    const-string v5, "v"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/pl;-><init>(Lcom/yandex/metrica/impl/ob/Kk;Lcom/yandex/metrica/impl/ob/Ik;Lcom/yandex/metrica/impl/ob/Jk;Lcom/yandex/metrica/impl/ob/Gk;Ljava/lang/String;)V

    return-void
.end method
