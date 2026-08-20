.class public Lcom/yandex/metrica/impl/ob/z9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/qa;",
        "Lcom/yandex/metrica/impl/ob/If$e;",
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
.method public a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/qa;

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/If$e;->a:J

    iget p1, p1, Lcom/yandex/metrica/impl/ob/If$e;->b:I

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/qa;-><init>(JI)V

    return-object v0
.end method

.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/qa;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$e;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$e;-><init>()V

    .line 4
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/qa;->a:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$e;->a:J

    .line 5
    iget p1, p1, Lcom/yandex/metrica/impl/ob/qa;->b:I

    iput p1, v0, Lcom/yandex/metrica/impl/ob/If$e;->b:I

    return-object v0
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$e;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/z9;->a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;

    move-result-object p1

    return-object p1
.end method
