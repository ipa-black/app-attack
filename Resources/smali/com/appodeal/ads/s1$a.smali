.class public abstract Lcom/appodeal/ads/s1$a;
.super Lcom/appodeal/ads/s1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/s1$a$a;,
        Lcom/appodeal/ads/s1$a$c;,
        Lcom/appodeal/ads/s1$a$b;
    }
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

.field public final d:Ljava/lang/String;

.field public final e:D

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/r;Ljava/lang/String;DLjava/lang/Integer;Ljava/lang/Double;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/r<",
            "*>;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appodeal/ads/s1;-><init>(I)V

    iput-object p1, p0, Lcom/appodeal/ads/s1$a;->c:Lcom/appodeal/ads/r;

    iput-object p2, p0, Lcom/appodeal/ads/s1$a;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/appodeal/ads/s1$a;->e:D

    iput-object p5, p0, Lcom/appodeal/ads/s1$a;->f:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/appodeal/ads/s1$a;->g:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appodeal/ads/r;Ljava/lang/String;DLjava/lang/Integer;Ljava/lang/Double;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/appodeal/ads/s1$a;-><init>(Lcom/appodeal/ads/r;Ljava/lang/String;DLjava/lang/Integer;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic a(Lcom/appodeal/ads/s1$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/appodeal/ads/s1$a$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/appodeal/ads/s1$a$d;

    iget v1, v0, Lcom/appodeal/ads/s1$a$d;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/appodeal/ads/s1$a$d;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appodeal/ads/s1$a$d;

    invoke-direct {v0, p0, p1}, Lcom/appodeal/ads/s1$a$d;-><init>(Lcom/appodeal/ads/s1$a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/appodeal/ads/s1$a$d;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/appodeal/ads/s1$a$d;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/appodeal/ads/s1$a$d;->a:Lcom/appodeal/ads/s1$a;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/appodeal/ads/b3;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/appodeal/ads/b3;-><init>(I)V

    iget-object v4, p0, Lcom/appodeal/ads/s1$a;->c:Lcom/appodeal/ads/r;

    invoke-virtual {p1, v4}, Lcom/appodeal/ads/b3;->a(Lcom/appodeal/ads/r;)Lcom/appodeal/ads/b3;

    move-result-object p1

    iget-object v4, p0, Lcom/appodeal/ads/s1$a;->d:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {p1, v5, v4}, Lcom/appodeal/ads/b3;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/appodeal/ads/b3;

    move-result-object p1

    new-instance v4, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    sget-object v5, Lcom/appodeal/ads/networking/binders/c;->a:Ljava/util/Set;

    invoke-static {}, Lcom/appodeal/ads/networking/binders/c$a;->a()Ljava/util/Set;

    move-result-object v5

    new-array v2, v2, [Lcom/appodeal/ads/networking/binders/c;

    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v4, v2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    sget-object v2, Lcom/appodeal/ads/networking/binders/c;->b:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v4, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v2, Lcom/appodeal/ads/networking/binders/c;->f:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v4, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    sget-object v2, Lcom/appodeal/ads/networking/binders/c;->g:Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v4, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v2

    new-array v2, v2, [Lcom/appodeal/ads/networking/binders/c;

    invoke-virtual {v4, v2}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/appodeal/ads/networking/binders/c;

    iput-object p0, v0, Lcom/appodeal/ads/s1$a$d;->a:Lcom/appodeal/ads/s1$a;

    iput v3, v0, Lcom/appodeal/ads/s1$a$d;->d:I

    invoke-virtual {p1, v2, v0}, Lcom/appodeal/ads/b3;->a([Lcom/appodeal/ads/networking/binders/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v0, p1

    check-cast v0, Lcom/appodeal/ads/b3;

    iget-wide v1, p0, Lcom/appodeal/ads/s1$a;->e:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_4

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "ecpm"

    invoke-virtual {v0, v2, v1}, Lcom/appodeal/ads/b3;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/appodeal/ads/b3;

    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/s1$a;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const-string v2, "placement_id"

    invoke-virtual {v0, v2, v1}, Lcom/appodeal/ads/b3;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/appodeal/ads/b3;

    :cond_5
    iget-object p0, p0, Lcom/appodeal/ads/s1$a;->g:Ljava/lang/Double;

    if-eqz p0, :cond_6

    const-string v1, "price_floor"

    invoke-virtual {v0, v1, p0}, Lcom/appodeal/ads/b3;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/appodeal/ads/b3;

    :cond_6
    return-object p1

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1}, Lcom/appodeal/ads/s1$a;->a(Lcom/appodeal/ads/s1$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
