.class public Lcom/yandex/metrica/impl/ob/wi;
.super Lcom/yandex/metrica/impl/ob/vi;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/vi;-><init>(Lcom/yandex/metrica/impl/ob/ri;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/yi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/yandex/metrica/impl/ob/P3;",
            ">()",
            "Lcom/yandex/metrica/impl/ob/yi;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/xi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/vi;->a:Lcom/yandex/metrica/impl/ob/ri;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/xi;-><init>(Lcom/yandex/metrica/impl/ob/ri;)V

    return-object v0
.end method
