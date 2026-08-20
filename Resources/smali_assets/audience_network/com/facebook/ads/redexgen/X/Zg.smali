.class public final Lcom/facebook/ads/redexgen/X/Zg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6E;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableAdCacheListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/1X;

.field public final A01:Lcom/facebook/ads/redexgen/X/1l;

.field public final A02:Lcom/facebook/ads/redexgen/X/6M;

.field public final A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1l;Lcom/facebook/ads/redexgen/X/6M;Lcom/facebook/ads/redexgen/X/1X;Z)V
    .locals 0

    .line 71058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zg;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 71060
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zg;->A01:Lcom/facebook/ads/redexgen/X/1l;

    .line 71061
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Zg;->A02:Lcom/facebook/ads/redexgen/X/6M;

    .line 71062
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/1X;

    .line 71063
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/Zg;->A04:Z

    .line 71064
    return-void
.end method

.method private final A00()V
    .locals 5

    .line 71065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 71066
    .local v0, "precacheWebView":Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 71067
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/1X;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zg;->A01:Lcom/facebook/ads/redexgen/X/1l;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Zg;->A04:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/1m;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/1m;-><init>(Lcom/facebook/ads/redexgen/X/1X;Lcom/facebook/ads/redexgen/X/1l;Z)V

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71069
    return-void
.end method

.method private A01(Z)V
    .locals 2

    .line 71070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A09()Lcom/facebook/ads/redexgen/X/1Y;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1Y;->A05:Lcom/facebook/ads/redexgen/X/1Y;

    if-ne v1, v0, :cond_0

    .line 71071
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Zg;->A00()V

    .line 71072
    return-void

    .line 71073
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0E()Ljava/lang/String;

    move-result-object v1

    .line 71074
    .local v0, "markupUrlResult":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 71075
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zg;->A02:Lcom/facebook/ads/redexgen/X/6M;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6M;->A0R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71076
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A00:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1X;->A0H(Ljava/lang/String;)V

    .line 71077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A01:Lcom/facebook/ads/redexgen/X/1l;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1l;->AC0()V

    .line 71078
    return-void
.end method


# virtual methods
.method public final AAT()V
    .locals 2

    .line 71079
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zg;->A04:Z

    if-eqz v0, :cond_0

    .line 71080
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zg;->A01:Lcom/facebook/ads/redexgen/X/1l;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->ABz(Lcom/facebook/ads/AdError;)V

    .line 71081
    :goto_0
    return-void

    .line 71082
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zg;->A01(Z)V

    goto :goto_0
.end method

.method public final AAb()V
    .locals 1

    .line 71083
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zg;->A01(Z)V

    .line 71084
    return-void
.end method
