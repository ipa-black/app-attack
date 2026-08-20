.class public final Lcom/appodeal/ads/v4;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.SdkCoreInitializerImpl"
    f = "SdkCoreInitializer.kt"
    i = {
        0x0
    }
    l = {
        0x81
    }
    m = "initializeServices"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/x4;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/appodeal/ads/x4;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x4;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/x4;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/v4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/v4;->c:Lcom/appodeal/ads/x4;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/v4;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/v4;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/v4;->d:I

    iget-object p1, p0, Lcom/appodeal/ads/v4;->c:Lcom/appodeal/ads/x4;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lcom/appodeal/ads/x4;->a(Lcom/appodeal/ads/x4;Landroid/content/Context;Lcom/appodeal/ads/networking/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
