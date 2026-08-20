.class public final Lcom/yandex/metrica/impl/ob/te;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/D9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/D9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/D9;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/te;->a:Lcom/yandex/metrica/impl/ob/D9;

    return-void
.end method


# virtual methods
.method public a([B)[Lcom/yandex/metrica/impl/ob/qf$d$a$b;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/te;->a:Lcom/yandex/metrica/impl/ob/D9;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/D9;->a([B)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v2, v1, [Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/qf$d$a$b;-><init>()V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    if-gez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v1, Ljava/util/Map$Entry;

    .line 17
    aget-object v0, v2, v0

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$b;->a:[B

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$b;->b:[B

    move v0, v3

    goto :goto_1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    new-array v2, v0, [Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    :cond_4
    return-object v2
.end method
