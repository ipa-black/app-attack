.class public final Lcom/appodeal/consent/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/appodeal/consent/internal/c;

.field public static final b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public static final c:Lcom/appodeal/ads/modules/libs/network/HttpClient$Zip;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/consent/internal/c;

    invoke-direct {v0}, Lcom/appodeal/consent/internal/c;-><init>()V

    sput-object v0, Lcom/appodeal/consent/internal/c;->a:Lcom/appodeal/consent/internal/c;

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->POST:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    sput-object v0, Lcom/appodeal/consent/internal/c;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Zip;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpClient$Zip;

    sput-object v0, Lcom/appodeal/consent/internal/c;->c:Lcom/appodeal/ads/modules/libs/network/HttpClient$Zip;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/appodeal/ads/modules/libs/network/HttpClient$Zip;
    .locals 1

    sget-object v0, Lcom/appodeal/consent/internal/c;->c:Lcom/appodeal/ads/modules/libs/network/HttpClient$Zip;

    return-object v0
.end method

.method public static synthetic a(Lcom/appodeal/consent/internal/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/appodeal/consent/internal/c;->a:Lcom/appodeal/consent/internal/c;

    .line 2
    const-string v1, "https://a.appbaqend.com/consent/check"

    invoke-virtual {v0, p0, v1, p1}, Lcom/appodeal/consent/internal/c;->a(Lcom/appodeal/consent/internal/a;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;
    .locals 1

    sget-object v0, Lcom/appodeal/consent/internal/c;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/appodeal/consent/internal/a;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/consent/internal/a;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/appodeal/consent/internal/c$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/appodeal/consent/internal/c$a;

    iget v1, v0, Lcom/appodeal/consent/internal/c$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/consent/internal/c$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/consent/internal/c$a;

    invoke-direct {v0, p0, p3}, Lcom/appodeal/consent/internal/c$a;-><init>(Lcom/appodeal/consent/internal/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/appodeal/consent/internal/c$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/consent/internal/c$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p3, Lcom/appodeal/consent/internal/c$b;

    const/4 v2, 0x0

    invoke-direct {p3, p1, p2, v2}, Lcom/appodeal/consent/internal/c$b;-><init>(Lcom/appodeal/consent/internal/a;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/appodeal/consent/internal/c$a;->c:I

    const-wide/16 p1, 0x4e20

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lkotlin/Result;

    if-nez p3, :cond_4

    sget-object p1, Lcom/appodeal/ads/modules/libs/network/HttpError$TimeoutError;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpError$TimeoutError;

    invoke-static {p1}, Lcom/appodeal/ads/modules/common/internal/ext/ResultExtKt;->asFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method
