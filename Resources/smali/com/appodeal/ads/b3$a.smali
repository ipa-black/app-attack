.class public final Lcom/appodeal/ads/b3$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/b3;->a([Lcom/appodeal/ads/networking/binders/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.RequestBodyBuilder"
    f = "RequestBodyBuilder.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x24
    }
    m = "bind"
    n = {
        "this",
        "binder"
    }
    s = {
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/b3;

.field public b:[Lcom/appodeal/ads/networking/binders/c;

.field public c:Lcom/appodeal/ads/networking/binders/c;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/appodeal/ads/b3;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/b3;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/b3;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/b3$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/b3$a;->g:Lcom/appodeal/ads/b3;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/b3$a;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/b3$a;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/b3$a;->h:I

    iget-object p1, p0, Lcom/appodeal/ads/b3$a;->g:Lcom/appodeal/ads/b3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/appodeal/ads/b3;->a([Lcom/appodeal/ads/networking/binders/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
