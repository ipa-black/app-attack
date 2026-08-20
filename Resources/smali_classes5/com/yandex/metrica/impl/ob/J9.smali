.class public Lcom/yandex/metrica/impl/ob/J9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/Zh;",
        "Lcom/yandex/metrica/impl/ob/If$j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/If$j;)Lcom/yandex/metrica/impl/ob/Zh;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Zh;

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/If$j;->a:J

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Zh;-><init>(J)V

    return-object v0
.end method

.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Zh;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$j;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$j;-><init>()V

    .line 4
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/Zh;->a:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$j;->a:J

    return-object v0
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$j;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/J9;->a(Lcom/yandex/metrica/impl/ob/If$j;)Lcom/yandex/metrica/impl/ob/Zh;

    move-result-object p1

    return-object p1
.end method
