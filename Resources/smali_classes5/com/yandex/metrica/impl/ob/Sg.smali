.class public final Lcom/yandex/metrica/impl/ob/Sg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/AdRevenue;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/AdRevenue;Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    .line 3
    new-instance p1, Lcom/yandex/metrica/impl/ob/dn;

    const/16 v0, 0x64

    const-string v1, "ad revenue strings"

    invoke-direct {p1, v0, v1, p2}, Lcom/yandex/metrica/impl/ob/dn;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sg;->a:Lcom/yandex/metrica/impl/ob/fn;

    .line 6
    new-instance p1, Lcom/yandex/metrica/impl/ob/cn;

    const/16 v0, 0x7800

    const-string v1, "ad revenue payload"

    invoke-direct {p1, v0, v1, p2}, Lcom/yandex/metrica/impl/ob/cn;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Sg;->b:Lcom/yandex/metrica/impl/ob/fn;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/cf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cf;-><init>()V

    const/4 v1, 0x7

    .line 3
    new-array v1, v1, [Lkotlin/Pair;

    .line 4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v2, v2, Lcom/yandex/metrica/AdRevenue;->adNetwork:Ljava/lang/String;

    new-instance v3, Lcom/yandex/metrica/impl/ob/Sg$a;

    invoke-direct {v3, v0}, Lcom/yandex/metrica/impl/ob/Sg$a;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v2, v2, Lcom/yandex/metrica/AdRevenue;->adPlacementId:Ljava/lang/String;

    new-instance v4, Lcom/yandex/metrica/impl/ob/Sg$b;

    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/Sg$b;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 6
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v2, v2, Lcom/yandex/metrica/AdRevenue;->adPlacementName:Ljava/lang/String;

    new-instance v4, Lcom/yandex/metrica/impl/ob/Sg$c;

    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/Sg$c;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 7
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v2, v2, Lcom/yandex/metrica/AdRevenue;->adUnitId:Ljava/lang/String;

    new-instance v4, Lcom/yandex/metrica/impl/ob/Sg$d;

    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/Sg$d;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 8
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v2, v2, Lcom/yandex/metrica/AdRevenue;->adUnitName:Ljava/lang/String;

    new-instance v4, Lcom/yandex/metrica/impl/ob/Sg$e;

    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/Sg$e;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v2, v2, Lcom/yandex/metrica/AdRevenue;->precision:Ljava/lang/String;

    new-instance v4, Lcom/yandex/metrica/impl/ob/Sg$f;

    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/Sg$f;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 10
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v2, v2, Lcom/yandex/metrica/AdRevenue;->currency:Ljava/util/Currency;

    const-string v4, "revenue.currency"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/yandex/metrica/impl/ob/Sg$g;

    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/Sg$g;-><init>(Lcom/yandex/metrica/impl/ob/cf;)V

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    .line 11
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    .line 51
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 52
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/Sg;->a:Lcom/yandex/metrica/impl/ob/fn;

    invoke-interface {v6, v5}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 53
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->e(Ljava/lang/String;)[B

    move-result-object v5

    const-string v7, "StringUtils.stringToBytesForProtobuf(value)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/b;->e(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "StringUtils.stringToBytesForProtobuf(result)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    array-length v4, v5

    array-length v5, v6

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Tg;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v4, v4, Lcom/yandex/metrica/AdRevenue;->adType:Lcom/yandex/metrica/AdType;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    iput v3, v0, Lcom/yandex/metrica/impl/ob/cf;->d:I

    .line 59
    new-instance v1, Lcom/yandex/metrica/impl/ob/cf$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/cf$a;-><init>()V

    .line 60
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v3, v3, Lcom/yandex/metrica/AdRevenue;->adRevenue:Ljava/math/BigDecimal;

    const-string v4, "revenue.adRevenue"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Ol;->a(Ljava/math/BigDecimal;)Lkotlin/Pair;

    move-result-object v3

    .line 62
    new-instance v4, Lcom/yandex/metrica/impl/ob/Nl;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v4, v5, v6, v3}, Lcom/yandex/metrica/impl/ob/Nl;-><init>(JI)V

    .line 63
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Nl;->b()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/yandex/metrica/impl/ob/cf$a;->a:J

    .line 64
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Nl;->a()I

    move-result v3

    iput v3, v1, Lcom/yandex/metrica/impl/ob/cf$a;->b:I

    .line 65
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/cf;->b:Lcom/yandex/metrica/impl/ob/cf$a;

    .line 71
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Sg;->c:Lcom/yandex/metrica/AdRevenue;

    iget-object v1, v1, Lcom/yandex/metrica/AdRevenue;->payload:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 72
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Sg;->b:Lcom/yandex/metrica/impl/ob/fn;

    invoke-interface {v3, v1}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/b;->e(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "StringUtils.stringToByte\u2026oadTrimmer.trim(payload))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/cf;->k:[B

    .line 75
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->e(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    array-length v3, v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 78
    :cond_2
    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method
