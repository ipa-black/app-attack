.class public final Lcom/facebook/ads/redexgen/X/ON;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/OM;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 47243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ON;->A00:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .locals 1

    .line 47245
    sget-object v0, Lcom/facebook/ads/redexgen/X/ON;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;ILcom/facebook/ads/redexgen/X/OK;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 4

    .line 47246
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7N;->A01()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/OM;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/OM;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/Ia;I)V

    .line 47247
    .local v0, "webViewController":Lcom/facebook/ads/redexgen/X/OM;
    invoke-virtual {v3, p3}, Lcom/facebook/ads/redexgen/X/OM;->A0b(Lcom/facebook/ads/redexgen/X/OK;)V

    .line 47248
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/OM;->A0X()V

    .line 47249
    sget-object v2, Lcom/facebook/ads/redexgen/X/ON;->A00:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47250
    return-object v3
.end method

.method public static A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47251
    sget-object v0, Lcom/facebook/ads/redexgen/X/ON;->A00:Ljava/util/Map;

    .line 47252
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 47253
    .local v0, "dynamicWebViewControllerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/view/dynamiclayout/DynamicWebViewController;>;"
    if-eqz v0, :cond_0

    .line 47254
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/OM;

    return-object v0

    .line 47255
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Zs;Lcom/facebook/ads/redexgen/X/OM;)V
    .locals 3

    .line 47256
    sget-object v2, Lcom/facebook/ads/redexgen/X/ON;->A00:Ljava/util/Map;

    .line 47257
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1B;->A0L()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47258
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47259
    return-void
.end method

.method public static A04(Ljava/lang/String;)V
    .locals 1

    .line 47260
    sget-object v0, Lcom/facebook/ads/redexgen/X/ON;->A00:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47261
    return-void
.end method
