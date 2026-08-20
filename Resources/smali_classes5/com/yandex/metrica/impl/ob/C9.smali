.class public final Lcom/yandex/metrica/impl/ob/C9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/Uh;",
        "Lcom/yandex/metrica/impl/ob/If$h;",
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
.method public a(Lcom/yandex/metrica/impl/ob/Uh;)Lcom/yandex/metrica/impl/ob/If$h;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$h;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$h;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->b()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->b:I

    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->a()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->c:I

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->e()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->e:Z

    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Uh;->d()Z

    move-result p1

    iput-boolean p1, v0, Lcom/yandex/metrica/impl/ob/If$h;->d:Z

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$h;)Lcom/yandex/metrica/impl/ob/Uh;
    .locals 7

    .line 7
    new-instance v6, Lcom/yandex/metrica/impl/ob/Uh;

    .line 8
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/If$h;->a:Ljava/lang/String;

    const-string v0, "nano.url"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget v2, p1, Lcom/yandex/metrica/impl/ob/If$h;->b:I

    .line 10
    iget v3, p1, Lcom/yandex/metrica/impl/ob/If$h;->c:I

    .line 11
    iget-boolean v4, p1, Lcom/yandex/metrica/impl/ob/If$h;->d:Z

    .line 12
    iget-boolean v5, p1, Lcom/yandex/metrica/impl/ob/If$h;->e:Z

    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Uh;-><init>(Ljava/lang/String;IIZZ)V

    return-object v6
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Uh;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/C9;->a(Lcom/yandex/metrica/impl/ob/Uh;)Lcom/yandex/metrica/impl/ob/If$h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$h;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/C9;->a(Lcom/yandex/metrica/impl/ob/If$h;)Lcom/yandex/metrica/impl/ob/Uh;

    move-result-object p1

    return-object p1
.end method
