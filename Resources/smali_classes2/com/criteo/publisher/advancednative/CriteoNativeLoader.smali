.class public Lcom/criteo/publisher/advancednative/CriteoNativeLoader;
.super Ljava/lang/Object;
.source "CriteoNativeLoader.java"


# instance fields
.field final adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

.field private final listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

.field private final logger:Lcom/criteo/publisher/logging/g;

.field private final publisherRenderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

.field private renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# direct methods
.method public static synthetic $r8$lambda$vc-2Kb3UiCGKkDqxyl_nNYbAwSY(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$xWZ87zxzjBeUnhmFXjHVv7ajgdQ(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->a(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;-><init>(Lcom/criteo/publisher/model/NativeAdUnit;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/model/NativeAdUnit;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->logger:Lcom/criteo/publisher/logging/g;

    .line 78
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    .line 79
    new-instance v1, Lcom/criteo/publisher/advancednative/k;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, p2, v2}, Lcom/criteo/publisher/advancednative/k;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Ljava/lang/ref/Reference;)V

    iput-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    .line 80
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->publisherRenderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 81
    invoke-static {p1}, Lcom/criteo/publisher/advancednative/m;->c(Lcom/criteo/publisher/model/NativeAdUnit;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    return-void
.end method

.method private synthetic a(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdReceived(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method

.method static synthetic access$000(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/model/b0/n;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->handleNativeAssets(Lcom/criteo/publisher/model/b0/n;)V

    return-void
.end method

.method private doLoad(Lcom/criteo/publisher/Bid;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0, p1}, Lcom/criteo/publisher/advancednative/m;->a(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/Bid;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 180
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getIntegrationRegistry()Lcom/criteo/publisher/i0/c;

    move-result-object v0

    sget-object v1, Lcom/criteo/publisher/i0/a;->d:Lcom/criteo/publisher/i0/a;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/i0/c;->a(Lcom/criteo/publisher/i0/a;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/criteo/publisher/Bid;->a()Lcom/criteo/publisher/model/b0/n;

    move-result-object p1

    .line 183
    :goto_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->handleNativeAssets(Lcom/criteo/publisher/model/b0/n;)V

    return-void
.end method

.method private doLoad(Lcom/criteo/publisher/context/ContextData;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->logger:Lcom/criteo/publisher/logging/g;

    invoke-static {p0}, Lcom/criteo/publisher/advancednative/m;->e(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 155
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getIntegrationRegistry()Lcom/criteo/publisher/i0/c;

    move-result-object v0

    sget-object v1, Lcom/criteo/publisher/i0/a;->c:Lcom/criteo/publisher/i0/a;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/i0/c;->a(Lcom/criteo/publisher/i0/a;)V

    .line 157
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getBidManager()Lcom/criteo/publisher/e;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    new-instance v2, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;

    invoke-direct {v2, p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    return-void
.end method

.method private getAdChoiceOverlay()Lcom/criteo/publisher/advancednative/b;
    .locals 1

    .line 233
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->b0()Lcom/criteo/publisher/advancednative/b;

    move-result-object v0

    return-object v0
.end method

.method private getBidManager()Lcom/criteo/publisher/e;
    .locals 1

    .line 228
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->k0()Lcom/criteo/publisher/e;

    move-result-object v0

    return-object v0
.end method

.method private static getImageLoaderHolder()Lcom/criteo/publisher/advancednative/h;
    .locals 1

    .line 238
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->D0()Lcom/criteo/publisher/advancednative/h;

    move-result-object v0

    return-object v0
.end method

.method private getIntegrationRegistry()Lcom/criteo/publisher/i0/c;
    .locals 1

    .line 243
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->F0()Lcom/criteo/publisher/i0/c;

    move-result-object v0

    return-object v0
.end method

.method private getNativeAdMapper()Lcom/criteo/publisher/advancednative/l;
    .locals 1

    .line 218
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->Q0()Lcom/criteo/publisher/advancednative/l;

    move-result-object v0

    return-object v0
.end method

.method private getRenderer()Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->publisherRenderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getAdChoiceOverlay()Lcom/criteo/publisher/advancednative/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Lcom/criteo/publisher/advancednative/b;)V

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->renderer:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    return-object v0
.end method

.method private getUiThreadExecutor()Lcom/criteo/publisher/e0/c;
    .locals 1

    .line 223
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->c1()Lcom/criteo/publisher/e0/c;

    move-result-object v0

    return-object v0
.end method

.method private handleNativeAssets(Lcom/criteo/publisher/model/b0/n;)V
    .locals 3

    if-nez p1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->notifyForFailureAsync()V

    goto :goto_0

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getNativeAdMapper()Lcom/criteo/publisher/advancednative/l;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->listener:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 194
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getRenderer()Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    move-result-object v2

    .line 191
    invoke-virtual {v0, p1, v1, v2}, Lcom/criteo/publisher/advancednative/l;->a(Lcom/criteo/publisher/model/b0/n;Ljava/lang/ref/WeakReference;Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    move-result-object p1

    .line 196
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->notifyForAdAsync(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    :goto_0
    return-void
.end method

.method private notifyForAdAsync(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 2

    .line 201
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getUiThreadExecutor()Lcom/criteo/publisher/e0/c;

    move-result-object v0

    new-instance v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$$ExternalSyntheticLambda0;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e0/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyForFailureAsync()V
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getUiThreadExecutor()Lcom/criteo/publisher/e0/c;

    move-result-object v0

    new-instance v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$$ExternalSyntheticLambda1;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e0/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setImageLoader(Lcom/criteo/publisher/advancednative/ImageLoader;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getImageLoaderHolder()Lcom/criteo/publisher/advancednative/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/criteo/publisher/advancednative/h;->a(Lcom/criteo/publisher/advancednative/ImageLoader;)V

    return-void
.end method


# virtual methods
.method public createEmptyNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->getRenderer()Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public loadAd()V
    .locals 1

    .line 135
    new-instance v0, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v0}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->loadAd(Lcom/criteo/publisher/context/ContextData;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/Bid;)V
    .locals 0

    .line 172
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->doLoad(Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 174
    invoke-static {p1}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 0

    .line 147
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->doLoad(Lcom/criteo/publisher/context/ContextData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 149
    invoke-static {p1}, Lcom/criteo/publisher/n0/o;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
