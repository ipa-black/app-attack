.class public Lcom/yandex/metrica/impl/ob/Ck;
.super Lcom/yandex/metrica/impl/ob/pl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/rl;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/yandex/metrica/impl/ob/kl;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/kl;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/ol;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/ol;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/jl;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/jl;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/fk;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/fk;-><init>()V

    const-string v5, "cxt"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/pl;-><init>(Lcom/yandex/metrica/impl/ob/Kk;Lcom/yandex/metrica/impl/ob/Ik;Lcom/yandex/metrica/impl/ob/Jk;Lcom/yandex/metrica/impl/ob/Gk;Ljava/lang/String;)V

    return-void
.end method
