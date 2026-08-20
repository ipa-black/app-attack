.class public final Lcom/appodeal/ads/modules/libs/network/httpclients/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/libs/network/Networking;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appodeal/ads/modules/libs/network/encoders/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appodeal/ads/modules/libs/network/encoders/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/appodeal/ads/modules/libs/network/httpclients/d;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/appodeal/ads/modules/libs/network/encoders/d;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/appodeal/ads/modules/libs/network/encoders/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->c:Ljava/util/List;

    new-instance p1, Lcom/appodeal/ads/modules/libs/network/httpclients/d;

    invoke-direct {p1}, Lcom/appodeal/ads/modules/libs/network/httpclients/d;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->d:Lcom/appodeal/ads/modules/libs/network/httpclients/d;

    return-void
.end method


# virtual methods
.method public final enqueue-yxL6bBk(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Z)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B+TResponse;>;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p3, :cond_0

    new-array v3, v2, [B

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpClientImpl"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v1, v0, v3, v4, v3}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->b:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appodeal/ads/modules/libs/network/encoders/d;

    invoke-interface {v6}, Lcom/appodeal/ads/modules/libs/network/encoders/d;->a()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->a:Ljava/util/Map;

    .line 1
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    :cond_2
    invoke-static {v8, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    :cond_3
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2
    :cond_4
    invoke-static {v6}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/appodeal/ads/modules/libs/network/httpclients/verification/a;->a()Lcom/appodeal/ads/modules/libs/network/httpclients/verification/b;

    move-result-object v5

    const/4 v6, 0x2

    const-string v7, "https://a.appbaqend.com"

    if-eqz p5, :cond_5

    invoke-static {p2, v7, v2, v6, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Lcom/appodeal/ads/modules/libs/network/httpclients/verification/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "X-Request-ID"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-nez p3, :cond_6

    move-object p3, v3

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->b:Ljava/util/List;

    invoke-static {p3, v8}, Lcom/appodeal/ads/modules/libs/network/encoders/ext/a;->a([BLjava/util/List;)[B

    move-result-object p3

    :goto_3
    if-nez p3, :cond_7

    new-array p3, v2, [B

    :cond_7
    new-instance v8, Lcom/appodeal/ads/modules/libs/network/httpclients/c;

    invoke-direct {v8, p1, p2, p3, v0}, Lcom/appodeal/ads/modules/libs/network/httpclients/c;-><init>(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLjava/util/Map;)V

    iget-object p1, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->d:Lcom/appodeal/ads/modules/libs/network/httpclients/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/appodeal/ads/modules/libs/network/httpclients/d;->a(Lcom/appodeal/ads/modules/libs/network/httpclients/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/appodeal/ads/modules/libs/network/httpclients/e;

    instance-of p3, p1, Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;

    if-nez p3, :cond_e

    instance-of p3, p1, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;

    if-eqz p3, :cond_d

    if-eqz p5, :cond_a

    invoke-static {p2, v7, v2, v6, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    move-object p2, p1

    check-cast p2, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;

    invoke-virtual {p2}, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;->c()Ljava/util/Map;

    move-result-object p2

    const-string p3, "X-Signature"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_8

    move-object p2, v3

    goto :goto_4

    :cond_8
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_4
    invoke-virtual {v5, p2}, Lcom/appodeal/ads/modules/libs/network/httpclients/verification/b;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_5

    :cond_9
    new-instance p2, Lcom/appodeal/ads/modules/libs/network/HttpError$RequestVerificationFailed;

    check-cast p1, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;->b()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/appodeal/ads/modules/libs/network/HttpError$RequestVerificationFailed;-><init>([B)V

    throw p2

    :cond_a
    :goto_5
    move-object p2, p1

    check-cast p2, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;

    invoke-virtual {p2}, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;->b()[B

    move-result-object p2

    if-nez p2, :cond_b

    move-object p1, v3

    goto :goto_6

    :cond_b
    check-cast p1, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/a;->c:Ljava/util/List;

    invoke-static {p2, p1, p3}, Lcom/appodeal/ads/modules/libs/network/encoders/ext/a;->a([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    :try_start_1
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_7

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<-- "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v8}, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->c()Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "     "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v8}, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", parsed model: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v3, v4, v3}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p1

    :catch_0
    :goto_7
    :try_start_2
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_e
    check-cast p1, Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;->a()Lcom/appodeal/ads/modules/libs/network/HttpError;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :cond_f
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_8
    return-object p1
.end method
