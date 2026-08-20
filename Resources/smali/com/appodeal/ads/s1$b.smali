.class public final Lcom/appodeal/ads/s1$b;
.super Lcom/appodeal/ads/s1;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/i5;
.implements Lcom/appodeal/ads/k4;
.implements Lcom/appodeal/ads/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Lcom/appodeal/ads/b3;

.field public final synthetic d:Lcom/appodeal/ads/l4;

.field public final synthetic e:Lcom/appodeal/ads/networking/cache/a;

.field public final f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 4

    new-instance v0, Lcom/appodeal/ads/b3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/b3;-><init>(I)V

    new-instance v1, Lcom/appodeal/ads/l4;

    invoke-direct {v1}, Lcom/appodeal/ads/l4;-><init>()V

    new-instance v2, Lcom/appodeal/ads/networking/cache/a;

    sget-object v3, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    invoke-direct {v2, v3}, Lcom/appodeal/ads/networking/cache/a;-><init>(Lcom/appodeal/ads/storage/o;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/appodeal/ads/s1$b;-><init>(Lcom/appodeal/ads/b3;Lcom/appodeal/ads/l4;Lcom/appodeal/ads/networking/cache/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/appodeal/ads/b3;Lcom/appodeal/ads/l4;Lcom/appodeal/ads/networking/cache/a;)V
    .locals 1

    const-string v0, "requestBodyBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/s1;-><init>(I)V

    iput-object p1, p0, Lcom/appodeal/ads/s1$b;->c:Lcom/appodeal/ads/b3;

    iput-object p2, p0, Lcom/appodeal/ads/s1$b;->d:Lcom/appodeal/ads/l4;

    iput-object p3, p0, Lcom/appodeal/ads/s1$b;->e:Lcom/appodeal/ads/networking/cache/a;

    const-string p1, "config"

    iput-object p1, p0, Lcom/appodeal/ads/s1$b;->f:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/appodeal/ads/s1$b;->c:Lcom/appodeal/ads/b3;

    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    sget-object v2, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    invoke-static {}, Lcom/appodeal/ads/networking/binders/c$a;->a()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/appodeal/ads/networking/binders/c;->e:Lcom/appodeal/ads/networking/binders/c;

    invoke-static {v2, v3}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/appodeal/ads/networking/binders/c;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    sget-object v2, Lcom/appodeal/ads/networking/binders/c;->c:Lcom/appodeal/ads/networking/binders/c;

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

    iget-object v0, p0, Lcom/appodeal/ads/s1$b;->e:Lcom/appodeal/ads/networking/cache/a;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/cache/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$b;->e:Lcom/appodeal/ads/networking/cache/a;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/networking/cache/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$b;->d:Lcom/appodeal/ads/l4;

    invoke-virtual {v0}, Lcom/appodeal/ads/l4;->b()Z

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$b;->f:Ljava/lang/String;

    return-object v0
.end method
