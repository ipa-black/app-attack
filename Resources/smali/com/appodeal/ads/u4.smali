.class public final Lcom/appodeal/ads/u4;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.SdkCoreInitializerImpl"
    f = "SdkCoreInitializer.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x9f,
        0xa3
    }
    m = "initializeSdkRegulator"
    n = {
        "context",
        "consent",
        "hasConsent",
        "appKey"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/appodeal/consent/Consent;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/String;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/appodeal/ads/x4;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x4;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/x4;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/u4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/u4;->f:Lcom/appodeal/ads/x4;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/appodeal/ads/u4;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/u4;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/u4;->g:I

    iget-object v0, p0, Lcom/appodeal/ads/u4;->f:Lcom/appodeal/ads/x4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/appodeal/ads/x4;->a(Lcom/appodeal/ads/x4;Landroid/content/Context;Lcom/appodeal/consent/Consent;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
