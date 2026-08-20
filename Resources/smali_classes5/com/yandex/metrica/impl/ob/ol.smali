.class public Lcom/yandex/metrica/impl/ob/ol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Ik;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/rl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/rl;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ol;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dl;Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/Ak;I)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ol;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ol;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/rl;

    .line 6
    invoke-virtual {v1, p3}, Lcom/yandex/metrica/impl/ob/rl;->a(Lcom/yandex/metrica/impl/ob/Ak;)Lcom/yandex/metrica/impl/ob/rl$b;

    move-result-object v2

    .line 7
    iget-boolean v3, p2, Lcom/yandex/metrica/impl/ob/hl;->f:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/rl;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v3, p2, Lcom/yandex/metrica/impl/ob/hl;->i:Z

    if-eqz v3, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1, p2, v2}, Lcom/yandex/metrica/impl/ob/rl;->a(Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/rl$b;)Lorg/json/JSONObject;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int v5, p4, v2

    .line 16
    iget v6, p2, Lcom/yandex/metrica/impl/ob/hl;->n:I

    if-gt v5, v6, :cond_3

    iget v5, p2, Lcom/yandex/metrica/impl/ob/hl;->m:I

    if-ge v3, v5, :cond_3

    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v4, v2

    :cond_3
    :goto_1
    add-int/2addr p4, v4

    goto :goto_0

    :cond_4
    return-object p1
.end method
