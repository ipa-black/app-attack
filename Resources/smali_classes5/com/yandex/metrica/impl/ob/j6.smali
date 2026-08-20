.class public final Lcom/yandex/metrica/impl/ob/j6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/g6;

.field private final c:Lcom/yandex/metrica/impl/ob/i6;

.field private final d:Lcom/yandex/metrica/impl/ob/R7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SessionExtrasStorage-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "session_extras"

    .line 4
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->a:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/g6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/g6;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->b:Lcom/yandex/metrica/impl/ob/g6;

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/i6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/i6;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->c:Lcom/yandex/metrica/impl/ob/i6;

    .line 10
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/ja;->a(Lcom/yandex/metrica/impl/ob/I3;)Lcom/yandex/metrica/impl/ob/R7;

    move-result-object p1

    const-string p2, "DatabaseStorageFactory.g\u2026Id\") !no-logs*/\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/j6;->d:Lcom/yandex/metrica/impl/ob/R7;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->d:Lcom/yandex/metrica/impl/ob/R7;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j6;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/R7;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j6;->b:Lcom/yandex/metrica/impl/ob/g6;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/j6;->c:Lcom/yandex/metrica/impl/ob/i6;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v2, Lcom/yandex/metrica/impl/ob/Gf;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Gf;-><init>()V

    invoke-static {v2, v0}, Lcom/google/protobuf/nano/ym/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/ym/MessageNano;[B)Lcom/google/protobuf/nano/ym/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Gf;

    const-string v2, "SessionExtrasProtobuf.Se\u2026ionExtras.parseFrom(data)"

    .line 6
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/g6;->a(Lcom/yandex/metrica/impl/ob/Gf;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 12
    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->b:Lcom/yandex/metrica/impl/ob/g6;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j6;->c:Lcom/yandex/metrica/impl/ob/i6;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v1, Lcom/yandex/metrica/impl/ob/Gf;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Gf;-><init>()V

    .line 34
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/g6;->a(Lcom/yandex/metrica/impl/ob/Gf;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j6;->d:Lcom/yandex/metrica/impl/ob/R7;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/j6;->c:Lcom/yandex/metrica/impl/ob/i6;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/j6;->b:Lcom/yandex/metrica/impl/ob/g6;

    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/g6;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/Gf;

    move-result-object p1

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p1}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object p1

    .line 57
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/R7;->a(Ljava/lang/String;[B)V

    return-void
.end method
