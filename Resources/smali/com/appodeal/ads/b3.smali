.class public final Lcom/appodeal/ads/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/ads/g4;

.field public final b:Lkotlin/Lazy;

.field public c:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/r<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Lcom/appodeal/ads/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/s<",
            "*>;"
        }
    .end annotation
.end field

.field public e:Lcom/appodeal/ads/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/u<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/b3;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-static {}, Lcom/appodeal/ads/i4;->a()Lcom/appodeal/ads/g4;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appodeal/ads/b3;-><init>(Lcom/appodeal/ads/g4;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/g4;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/b3;->a:Lcom/appodeal/ads/g4;

    sget-object p1, Lcom/appodeal/ads/b3$b;->a:Lcom/appodeal/ads/b3$b;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/b3;->b:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/r;)Lcom/appodeal/ads/b3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/r<",
            "*>;)",
            "Lcom/appodeal/ads/b3;"
        }
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/b3;->c:Lcom/appodeal/ads/r;

    return-object p0
.end method

.method public final a(Lcom/appodeal/ads/s;)Lcom/appodeal/ads/b3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/s<",
            "*>;)",
            "Lcom/appodeal/ads/b3;"
        }
    .end annotation

    const-string v0, "adRequestParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/b3;->d:Lcom/appodeal/ads/s;

    return-object p0
.end method

.method public final a(Lcom/appodeal/ads/u;)Lcom/appodeal/ads/b3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/u<",
            "***>;)",
            "Lcom/appodeal/ads/b3;"
        }
    .end annotation

    const-string v0, "adTypeController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/appodeal/ads/b3;->e:Lcom/appodeal/ads/u;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/appodeal/ads/b3;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/appodeal/ads/b3;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public final a([Lcom/appodeal/ads/networking/binders/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/appodeal/ads/networking/binders/c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/b3;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/appodeal/ads/b3$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/appodeal/ads/b3$a;

    iget v1, v0, Lcom/appodeal/ads/b3$a;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/b3$a;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/b3$a;

    invoke-direct {v0, p0, p2}, Lcom/appodeal/ads/b3$a;-><init>(Lcom/appodeal/ads/b3;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/appodeal/ads/b3$a;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/b3$a;->h:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/appodeal/ads/b3$a;->e:I

    iget v2, v0, Lcom/appodeal/ads/b3$a;->d:I

    iget-object v4, v0, Lcom/appodeal/ads/b3$a;->c:Lcom/appodeal/ads/networking/binders/c;

    iget-object v5, v0, Lcom/appodeal/ads/b3$a;->b:[Lcom/appodeal/ads/networking/binders/c;

    iget-object v6, v0, Lcom/appodeal/ads/b3$a;->a:Lcom/appodeal/ads/b3;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    array-length p2, p1

    const/4 v2, 0x0

    move-object v10, p0

    move v12, p2

    move-object p2, p1

    move p1, v12

    :goto_1
    if-ge v2, p1, :cond_5

    aget-object v11, p2, v2

    add-int/lit8 v2, v2, 0x1

    :try_start_1
    iget-object v4, v10, Lcom/appodeal/ads/b3;->a:Lcom/appodeal/ads/g4;

    iget-object v6, v10, Lcom/appodeal/ads/b3;->c:Lcom/appodeal/ads/r;

    iget-object v7, v10, Lcom/appodeal/ads/b3;->d:Lcom/appodeal/ads/s;

    iget-object v8, v10, Lcom/appodeal/ads/b3;->e:Lcom/appodeal/ads/u;

    iput-object v10, v0, Lcom/appodeal/ads/b3$a;->a:Lcom/appodeal/ads/b3;

    iput-object p2, v0, Lcom/appodeal/ads/b3$a;->b:[Lcom/appodeal/ads/networking/binders/c;

    iput-object v11, v0, Lcom/appodeal/ads/b3$a;->c:Lcom/appodeal/ads/networking/binders/c;

    iput v2, v0, Lcom/appodeal/ads/b3$a;->d:I

    iput p1, v0, Lcom/appodeal/ads/b3$a;->e:I

    iput v3, v0, Lcom/appodeal/ads/b3$a;->h:I

    move-object v5, v11

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/appodeal/ads/g4;->a(Lcom/appodeal/ads/networking/binders/c;Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p2

    move-object p2, v4

    move-object v6, v10

    move-object v4, v11

    :goto_2
    :try_start_2
    check-cast p2, Lcom/appodeal/ads/networking/binders/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v5, p2

    move-object p2, v4

    move-object v6, v10

    move-object v4, v11

    :goto_3
    const-string v7, "Error while binding data for "

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "RequestBodyBuilder"

    invoke-static {v7, v4, p2}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_4
    move-object v10, v6

    if-nez p2, :cond_4

    goto :goto_5

    .line 5
    :cond_4
    iget-object v4, v10, Lcom/appodeal/ads/b3;->b:Lkotlin/Lazy;

    .line 6
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 7
    invoke-static {v4, p2}, Lcom/appodeal/ads/f4;->a(Lorg/json/JSONObject;Lcom/appodeal/ads/networking/binders/b;)V

    :goto_5
    move-object p2, v5

    goto :goto_1

    .line 8
    :cond_5
    iget-object p1, v10, Lcom/appodeal/ads/b3;->b:Lkotlin/Lazy;

    .line 9
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 10
    sget-object p2, Lcom/appodeal/ads/j4;->a:Lcom/appodeal/ads/j4;

    const-string v0, "instance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appodeal/ads/x2;->b(Lorg/json/JSONObject;)V

    return-object v10
.end method

.method public final a()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/b3;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/appodeal/ads/b3;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_2
    return-object v0
.end method
