.class public final Lcom/appodeal/ads/context/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;


# static fields
.field public static final b:Lcom/appodeal/ads/context/b;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/context/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/context/b;

    invoke-direct {v0}, Lcom/appodeal/ads/context/b;-><init>()V

    sput-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/appodeal/ads/context/c;->a()Lcom/appodeal/ads/context/f;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final getActivityFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/f;->e:Lcom/appodeal/ads/context/f$b;

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationContextOrNull()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final getTopActivityFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/f;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method
