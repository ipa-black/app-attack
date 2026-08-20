.class public final Lcom/appodeal/ads/k0$h;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/k0;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.AppodealNetworkRequestApi"
    f = "AppodealNetworkRequestApi.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x3f
    }
    m = "installRequest"
    n = {
        "baseCallback",
        "userTokenCallback"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public a:Lcom/appodeal/ads/t1;

.field public b:Lcom/appodeal/ads/x1;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/appodeal/ads/k0;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/k0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/k0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/k0$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/k0$h;->d:Lcom/appodeal/ads/k0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/k0$h;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/k0$h;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/k0$h;->e:I

    iget-object p1, p0, Lcom/appodeal/ads/k0$h;->d:Lcom/appodeal/ads/k0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/appodeal/ads/k0;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
