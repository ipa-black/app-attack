.class public final Lcom/appodeal/ads/s1$f;
.super Lcom/appodeal/ads/s1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/appodeal/ads/Appodeal;->getSegmentId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/appodeal/ads/s1$f;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/s1;-><init>(I)V

    iput-object p1, p0, Lcom/appodeal/ads/s1$f;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcom/appodeal/ads/s1$f;->d:J

    const-string p1, "install"

    iput-object p1, p0, Lcom/appodeal/ads/s1$f;->e:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/appodeal/ads/s1$f;->c:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lcom/appodeal/ads/b3;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/appodeal/ads/b3;

    move-result-object v0

    iget-wide v2, p0, Lcom/appodeal/ads/s1$f;->d:J

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "segment_id"

    invoke-virtual {v0, v3, v2}, Lcom/appodeal/ads/b3;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/appodeal/ads/b3;

    move-result-object v0

    sget-object v2, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    invoke-static {}, Lcom/appodeal/ads/networking/binders/c$a;->a()Ljava/util/Set;

    move-result-object v2

    new-array v1, v1, [Lcom/appodeal/ads/networking/binders/c;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, [Lcom/appodeal/ads/networking/binders/c;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

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

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1$f;->e:Ljava/lang/String;

    return-object v0
.end method
