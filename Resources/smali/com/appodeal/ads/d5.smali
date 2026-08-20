.class public final Lcom/appodeal/ads/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/c5;


# static fields
.field public static final b:Lcom/appodeal/ads/d5;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/e5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/d5;

    invoke-direct {v0}, Lcom/appodeal/ads/d5;-><init>()V

    sput-object v0, Lcom/appodeal/ads/d5;->b:Lcom/appodeal/ads/d5;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/e5;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/e5;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/appodeal/ads/context/b;)V

    iput-object v0, p0, Lcom/appodeal/ads/d5;->a:Lcom/appodeal/ads/e5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/d5;->a:Lcom/appodeal/ads/e5;

    invoke-virtual {v0}, Lcom/appodeal/ads/e5;->a()V

    return-void
.end method
