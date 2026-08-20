.class public Lcom/yandex/metrica/impl/ob/N6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/Converter<",
        "Lcom/yandex/metrica/impl/ob/H6;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/O6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/O6<",
            "Lcom/yandex/metrica/impl/ob/H6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/O6;

    new-instance v1, Lcom/yandex/metrica/impl/ob/X6;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/X6;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/O6;-><init>(Lcom/yandex/metrica/core/api/ProtobufConverter;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/N6;-><init>(Lcom/yandex/metrica/impl/ob/O6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/O6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/O6<",
            "Lcom/yandex/metrica/impl/ob/H6;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/N6;->a:Lcom/yandex/metrica/impl/ob/O6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/H6;)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/N6;->a:Lcom/yandex/metrica/impl/ob/O6;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/O6;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/H6;

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/N6;->a:Lcom/yandex/metrica/impl/ob/O6;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/O6;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
