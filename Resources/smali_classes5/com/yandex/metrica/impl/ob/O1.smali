.class Lcom/yandex/metrica/impl/ob/O1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ak;


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/qf;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/P1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/P1;Lcom/yandex/metrica/impl/ob/qf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/O1;->b:Lcom/yandex/metrica/impl/ob/P1;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/O1;->a:Lcom/yandex/metrica/impl/ob/qf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Zj;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/O1;->a:Lcom/yandex/metrica/impl/ob/qf;

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Zj;->c()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/qf$e;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/Tj;

    .line 8
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    .line 9
    sget v4, Lcom/yandex/metrica/impl/ob/J1;->e:I

    .line 383
    new-instance v4, Lcom/yandex/metrica/impl/ob/qf$e;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/qf$e;-><init>()V

    .line 384
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->b()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 385
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->b()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/yandex/metrica/impl/ob/qf$e;->a:I

    .line 387
    :cond_0
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->c()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 388
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->c()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/yandex/metrica/impl/ob/qf$e;->b:I

    .line 390
    :cond_1
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 391
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/yandex/metrica/impl/ob/qf$e;->c:Ljava/lang/String;

    .line 393
    :cond_2
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Tj;->d()Z

    move-result v2

    iput-boolean v2, v4, Lcom/yandex/metrica/impl/ob/qf$e;->d:Z

    .line 394
    aput-object v4, v3, v1

    .line 395
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/O1;->b:Lcom/yandex/metrica/impl/ob/P1;

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/qf;->d:[Lcom/yandex/metrica/impl/ob/qf$e;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/P1;->a(Lcom/yandex/metrica/impl/ob/P1;I)I

    .line 396
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/O1;->b:Lcom/yandex/metrica/impl/ob/P1;

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/P1;->a(Lcom/yandex/metrica/impl/ob/P1;I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
