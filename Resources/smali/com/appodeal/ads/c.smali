.class public final Lcom/appodeal/ads/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/b;


# static fields
.field public static final b:Lcom/appodeal/ads/c;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/c;

    invoke-direct {v0}, Lcom/appodeal/ads/c;-><init>()V

    sput-object v0, Lcom/appodeal/ads/c;->b:Lcom/appodeal/ads/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/d;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v2, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/d;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/appodeal/ads/context/b;)V

    iput-object v0, p0, Lcom/appodeal/ads/c;->a:Lcom/appodeal/ads/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/c;->a:Lcom/appodeal/ads/d;

    invoke-virtual {v0}, Lcom/appodeal/ads/d;->a()V

    return-void
.end method
