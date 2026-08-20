.class public final Lcom/appodeal/ads/y2$a$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/y2$a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.ProtoRequest$Stats"
    f = "ProtoRequest.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x2d
    }
    m = "bodyBuilder"
    n = {
        "this",
        "$this$bodyBuilder_u24lambda_u2d1"
    }
    s = {
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/y2$a;

.field public b:Lcom/appodeal/ads/api/Request$Builder;

.field public c:Lcom/appodeal/ads/api/Request$Builder;

.field public d:Lcom/appodeal/ads/api/Request$Builder;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/appodeal/ads/y2$a;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/y2$a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/y2$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/y2$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/y2$a$a;->f:Lcom/appodeal/ads/y2$a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/y2$a$a;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/y2$a$a;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/y2$a$a;->g:I

    iget-object p1, p0, Lcom/appodeal/ads/y2$a$a;->f:Lcom/appodeal/ads/y2$a;

    invoke-virtual {p1, p0}, Lcom/appodeal/ads/y2$a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
