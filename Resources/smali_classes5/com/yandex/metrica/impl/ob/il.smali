.class Lcom/yandex/metrica/impl/ob/il;
.super Lcom/yandex/metrica/impl/ob/yk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/yk<",
        "Lcom/yandex/metrica/impl/ob/hl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/hl;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/vk;

    const v1, 0x19000

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/vk;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/il;-><init>(Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/vk;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/vk;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/yk;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/vk;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/hl;

    .line 2
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/hl;->p:Ljava/util/List;

    return-object p1
.end method

.method b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/hl;

    .line 2
    iget p1, p1, Lcom/yandex/metrica/impl/ob/hl;->k:I

    return p1
.end method
