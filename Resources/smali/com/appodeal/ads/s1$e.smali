.class public final Lcom/appodeal/ads/s1$e;
.super Lcom/appodeal/ads/s1;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final c:Lcom/appodeal/ads/b3;

.field public final synthetic d:Lcom/appodeal/ads/networking/cache/c;

.field public final e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    new-instance v0, Lcom/appodeal/ads/b3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/b3;-><init>(I)V

    new-instance v1, Lcom/appodeal/ads/networking/cache/c;

    sget-object v2, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    invoke-direct {v1, v2}, Lcom/appodeal/ads/networking/cache/c;-><init>(Lcom/appodeal/ads/storage/a;)V

    invoke-direct {p0, v0, v1}, Lcom/appodeal/ads/s1$e;-><init>(Lcom/appodeal/ads/b3;Lcom/appodeal/ads/networking/cache/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/b3;Lcom/appodeal/ads/networking/cache/c;)V
    .locals 1

    const-string v0, "requestBodyBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/s1;-><init>(I)V

    iput-object p1, p0, Lcom/appodeal/ads/s1$e;->c:Lcom/appodeal/ads/b3;

    iput-object p2, p0, Lcom/appodeal/ads/s1$e;->d:Lcom/appodeal/ads/networking/cache/c;

    const-string p1, "init"

    iput-object p1, p0, Lcom/appodeal/ads/s1$e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/b3;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/s1$e;->c:Lcom/appodeal/ads/b3;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    sget-object v2, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    invoke-static {}, Lcom/appodeal/ads/networking/binders/c$a;->a()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/appodeal/ads/networking/binders/c;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    sget-object v2, Lcom/appodeal/ads/networking/binders/c;->f:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v2, Lcom/appodeal/ads/networking/binders/c;->d:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v2

    new-array v2, v2, [Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v0, v1, p1}, Lcom/appodeal/ads/b3;->a([Lcom/appodeal/ads/networking/binders/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$e;->d:Lcom/appodeal/ads/networking/cache/c;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/cache/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$e;->d:Lcom/appodeal/ads/networking/cache/c;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/networking/cache/c;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$e;->e:Ljava/lang/String;

    return-object v0
.end method
