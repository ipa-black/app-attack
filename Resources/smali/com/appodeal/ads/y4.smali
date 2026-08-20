.class public final Lcom/appodeal/ads/y4;
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
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xaf,
        0xb3,
        0xbc
    }
    m = "prepareSdkCore"
    n = {
        "this",
        "application",
        "appKey",
        "context",
        "this",
        "application",
        "appKey",
        "context",
        "application",
        "appKey",
        "context"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Landroid/content/Context;

.field public e:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;

.field public f:Ljava/lang/String;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/appodeal/ads/x4;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/x4;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/x4;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/y4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/y4;->h:Lcom/appodeal/ads/x4;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/y4;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/y4;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/y4;->i:I

    iget-object p1, p0, Lcom/appodeal/ads/y4;->h:Lcom/appodeal/ads/x4;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lcom/appodeal/ads/x4;->a(Lcom/appodeal/ads/x4;Landroid/app/Application;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
