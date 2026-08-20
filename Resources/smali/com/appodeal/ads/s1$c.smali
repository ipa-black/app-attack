.class public final Lcom/appodeal/ads/s1$c;
.super Lcom/appodeal/ads/s1;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/x0;
.implements Lcom/appodeal/ads/j5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/appodeal/ads/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/r<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lcom/appodeal/ads/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/s<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Lcom/appodeal/ads/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/u<",
            "***>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/appodeal/ads/networking/cache/b;

.field public final synthetic g:Lcom/appodeal/ads/k5;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/r;Lcom/appodeal/ads/s;Lcom/appodeal/ads/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/r<",
            "*>;",
            "Lcom/appodeal/ads/s<",
            "*>;",
            "Lcom/appodeal/ads/u<",
            "***>;)V"
        }
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTypeController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/s1;-><init>(I)V

    iput-object p1, p0, Lcom/appodeal/ads/s1$c;->c:Lcom/appodeal/ads/r;

    iput-object p2, p0, Lcom/appodeal/ads/s1$c;->d:Lcom/appodeal/ads/s;

    iput-object p3, p0, Lcom/appodeal/ads/s1$c;->e:Lcom/appodeal/ads/u;

    new-instance p1, Lcom/appodeal/ads/networking/cache/b;

    invoke-virtual {p2}, Lcom/appodeal/ads/s;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "adRequestParams.requestPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/storage/o;->b:Lcom/appodeal/ads/storage/o;

    invoke-direct {p1, p3, v0}, Lcom/appodeal/ads/networking/cache/b;-><init>(Ljava/lang/String;Lcom/appodeal/ads/storage/o;)V

    iput-object p1, p0, Lcom/appodeal/ads/s1$c;->f:Lcom/appodeal/ads/networking/cache/b;

    new-instance p1, Lcom/appodeal/ads/k5;

    invoke-direct {p1, p2}, Lcom/appodeal/ads/k5;-><init>(Lcom/appodeal/ads/s;)V

    iput-object p1, p0, Lcom/appodeal/ads/s1$c;->g:Lcom/appodeal/ads/k5;

    const-string p1, "get"

    iput-object p1, p0, Lcom/appodeal/ads/s1$c;->h:Ljava/lang/String;

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

    new-instance v0, Lcom/appodeal/ads/b3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/b3;-><init>(I)V

    iget-object v2, p0, Lcom/appodeal/ads/s1$c;->c:Lcom/appodeal/ads/r;

    invoke-virtual {v0, v2}, Lcom/appodeal/ads/b3;->a(Lcom/appodeal/ads/r;)Lcom/appodeal/ads/b3;

    move-result-object v0

    iget-object v2, p0, Lcom/appodeal/ads/s1$c;->d:Lcom/appodeal/ads/s;

    invoke-virtual {v0, v2}, Lcom/appodeal/ads/b3;->a(Lcom/appodeal/ads/s;)Lcom/appodeal/ads/b3;

    move-result-object v0

    iget-object v2, p0, Lcom/appodeal/ads/s1$c;->e:Lcom/appodeal/ads/u;

    invoke-virtual {v0, v2}, Lcom/appodeal/ads/b3;->a(Lcom/appodeal/ads/u;)Lcom/appodeal/ads/b3;

    move-result-object v0

    new-instance v2, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    sget-object v3, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    invoke-static {}, Lcom/appodeal/ads/networking/binders/c$a;->a()Ljava/util/Set;

    move-result-object v3

    new-array v1, v1, [Lcom/appodeal/ads/networking/binders/c;

    invoke-interface {v3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    sget-object v1, Lcom/appodeal/ads/networking/binders/c;->b:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/appodeal/ads/networking/binders/c;->f:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/appodeal/ads/networking/binders/c;->d:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/appodeal/ads/networking/binders/c;->g:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v1, Lcom/appodeal/ads/networking/binders/c;->h:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v1

    new-array v1, v1, [Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/appodeal/ads/s1$c;->f:Lcom/appodeal/ads/networking/cache/b;

    invoke-virtual {v0}, Lcom/appodeal/ads/networking/cache/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$c;->f:Lcom/appodeal/ads/networking/cache/b;

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/networking/cache/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$c;->g:Lcom/appodeal/ads/k5;

    invoke-virtual {v0}, Lcom/appodeal/ads/k5;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$c;->h:Ljava/lang/String;

    return-object v0
.end method
