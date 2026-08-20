.class public final Lcom/appodeal/ads/g4$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/g4;->a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.appodeal.ads.RequestDataProvider"
    f = "RequestDataProvider.kt"
    i = {
        0x0
    }
    l = {
        0x82
    }
    m = "getBase"
    n = {
        "context"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/appodeal/ads/g4;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/g4;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/g4;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/g4$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/g4$b;->c:Lcom/appodeal/ads/g4;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/appodeal/ads/g4$b;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/appodeal/ads/g4$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/appodeal/ads/g4$b;->d:I

    iget-object p1, p0, Lcom/appodeal/ads/g4$b;->c:Lcom/appodeal/ads/g4;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, p0}, Lcom/appodeal/ads/g4;->a(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
