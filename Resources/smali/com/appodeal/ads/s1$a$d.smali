.class public final Lcom/appodeal/ads/s1$a$d;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/s1$a;->a(Lcom/appodeal/ads/s1$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.JsonRequest$AdController"
    f = "JsonRequest.kt"
    i = {
        0x0
    }
    l = {
        0x9d
    }
    m = "bodyBuilder$suspendImpl"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/s1$a;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/appodeal/ads/s1$a;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/s1$a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/s1$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/s1$a$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/s1$a$d;->c:Lcom/appodeal/ads/s1$a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/s1$a$d;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/s1$a$d;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/s1$a$d;->d:I

    iget-object p1, p0, Lcom/appodeal/ads/s1$a$d;->c:Lcom/appodeal/ads/s1$a;

    invoke-static {p1, p0}, Lcom/appodeal/ads/s1$a;->a(Lcom/appodeal/ads/s1$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
