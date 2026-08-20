.class public final Lcom/yandex/metrica/impl/ob/Y9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/si;",
        "Lcom/yandex/metrica/impl/ob/If$r;",
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
.method public a(Lcom/yandex/metrica/impl/ob/If$r;)Lcom/yandex/metrica/impl/ob/si;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/si;

    iget p1, p1, Lcom/yandex/metrica/impl/ob/If$r;->a:I

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/si;-><init>(I)V

    return-object v0
.end method

.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/si;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$r;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$r;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/si;->a()I

    move-result p1

    iput p1, v0, Lcom/yandex/metrica/impl/ob/If$r;->a:I

    return-object v0
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$r;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Y9;->a(Lcom/yandex/metrica/impl/ob/If$r;)Lcom/yandex/metrica/impl/ob/si;

    move-result-object p1

    return-object p1
.end method
