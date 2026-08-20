.class public final Lcom/appodeal/ads/r0$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/r0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.AppodealSettings"
    f = "AppodealSettings.kt"
    i = {}
    l = {
        0x92
    }
    m = "getUrlList"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/appodeal/ads/r0;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/r0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/r0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/r0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/r0$a;->b:Lcom/appodeal/ads/r0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/r0$a;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/r0$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/r0$a;->c:I

    iget-object p1, p0, Lcom/appodeal/ads/r0$a;->b:Lcom/appodeal/ads/r0;

    invoke-virtual {p1, p0}, Lcom/appodeal/ads/r0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
