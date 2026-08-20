.class public final Lcom/facebook/ads/redexgen/X/Sq;
.super Lcom/facebook/ads/redexgen/X/N0;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Mw;,
        Lcom/facebook/ads/redexgen/X/Mx;,
        Lcom/facebook/ads/redexgen/X/Mv;,
        Lcom/facebook/ads/redexgen/X/Mu;
    }
.end annotation


# static fields
.field public static A08:Landroid/webkit/ValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A09:Z

.field public static A0A:Z

.field public static A0B:[B

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/Xc;

.field public A05:Lcom/facebook/ads/redexgen/X/Mr;

.field public A06:Lcom/facebook/ads/redexgen/X/Mu;

.field public A07:Lcom/facebook/ads/redexgen/X/Mx;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 53118
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sq;->A08()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sq;->A0C:Ljava/lang/String;

    .line 53119
    const/4 v1, 0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sq;->A0D:Ljava/util/Set;

    .line 53120
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Sq;->A09:Z

    .line 53121
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Sq;->A0A:Z

    .line 53122
    sget-object v3, Lcom/facebook/ads/redexgen/X/Sq;->A0D:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sq;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53123
    sget-object v3, Lcom/facebook/ads/redexgen/X/Sq;->A0D:Ljava/util/Set;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sq;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53124
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/Mu;)V
    .locals 2

    .line 53125
    invoke-direct {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/N0;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A02:J

    .line 53127
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:J

    .line 53128
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A03:J

    .line 53129
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:J

    .line 53130
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Sq;->A0A(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Mu;)V

    .line 53131
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Mu;)V
    .locals 2

    .line 53132
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/N0;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 53133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A02:J

    .line 53134
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:J

    .line 53135
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A03:J

    .line 53136
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:J

    .line 53137
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Sq;->A0A(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Mu;)V

    .line 53138
    return-void
.end method

.method public static synthetic A01()Landroid/webkit/ValueCallback;
    .locals 1

    .line 53139
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sq;->A08:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static synthetic A03(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 53140
    sput-object p0, Lcom/facebook/ads/redexgen/X/Sq;->A08:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private final A04()Lcom/facebook/ads/redexgen/X/Mx;
    .locals 4

    .line 53141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A06:Lcom/facebook/ads/redexgen/X/Mu;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A05:Lcom/facebook/ads/redexgen/X/Mr;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mx;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Mx;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sq;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06()Ljava/util/Set;
    .locals 1

    .line 53142
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sq;->A0D:Ljava/util/Set;

    return-object v0
.end method

.method private A07()V
    .locals 5

    .line 53143
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A02:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 53144
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A05:Lcom/facebook/ads/redexgen/X/Mr;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mr;->A05(Z)V

    .line 53145
    :cond_0
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sq;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x53t
        0x4ft
        0x4ft
        0x4bt
        0x31t
        0x2dt
        0x2dt
        0x29t
        0x2at
    .end array-data
.end method

.method public static A09(IILandroid/content/Intent;)V
    .locals 1

    .line 53146
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sq;->A08:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    .line 53147
    return-void

    .line 53148
    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    .line 53149
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_2

    .line 53150
    sget-object p0, Lcom/facebook/ads/redexgen/X/Sq;->A08:Landroid/webkit/ValueCallback;

    .line 53151
    invoke-static {p1, p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 53152
    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 53153
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sq;->A08:Landroid/webkit/ValueCallback;

    .line 53154
    :cond_1
    return-void

    .line 53155
    :cond_2
    sget-object p0, Lcom/facebook/ads/redexgen/X/Sq;->A08:Landroid/webkit/ValueCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Mu;)V
    .locals 3

    .line 53156
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    .line 53157
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sq;->A06:Lcom/facebook/ads/redexgen/X/Mu;

    .line 53158
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mr;-><init>(Lcom/facebook/ads/redexgen/X/Sq;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A05:Lcom/facebook/ads/redexgen/X/Mr;

    .line 53159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IL;->A03(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Sq;->A09:Z

    .line 53160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IL;->A04(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Sq;->A0A:Z

    .line 53161
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sq;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 53162
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 53163
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53164
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 53165
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 53166
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 53167
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 53168
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 53169
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 53170
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 53171
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sq;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sq;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 53172
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sq;->A04()Lcom/facebook/ads/redexgen/X/Mx;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A07:Lcom/facebook/ads/redexgen/X/Mx;

    .line 53173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A07:Lcom/facebook/ads/redexgen/X/Mx;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sq;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53174
    return-void
.end method

.method public static synthetic A0B()Z
    .locals 1

    .line 53175
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Sq;->A0A:Z

    return v0
.end method

.method public static synthetic A0C()Z
    .locals 1

    .line 53176
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Sq;->A09:Z

    return v0
.end method


# virtual methods
.method public final A0D()Landroid/webkit/WebChromeClient;
    .locals 4

    .line 53177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A04:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A06:Lcom/facebook/ads/redexgen/X/Mu;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A05:Lcom/facebook/ads/redexgen/X/Mr;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mw;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Mw;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public final bridge synthetic A0E()Landroid/webkit/WebViewClient;
    .locals 1

    .line 53178
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sq;->A04()Lcom/facebook/ads/redexgen/X/Mx;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(J)V
    .locals 5

    .line 53179
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 53180
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:J

    .line 53181
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sq;->A07()V

    .line 53182
    return-void
.end method

.method public final A0G(J)V
    .locals 5

    .line 53183
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 53184
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:J

    .line 53185
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sq;->A07()V

    .line 53186
    return-void
.end method

.method public final A0H(J)V
    .locals 5

    .line 53187
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Sq;->A02:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 53188
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A02:J

    .line 53189
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sq;->A07()V

    .line 53190
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 53191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A06:Lcom/facebook/ads/redexgen/X/Mu;

    .line 53192
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/N6;->A03(Landroid/webkit/WebView;)V

    .line 53193
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/N0;->destroy()V

    .line 53194
    return-void
.end method

.method public getDomContentLoadedMs()J
    .locals 2

    .line 53195
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .locals 2

    .line 53196
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sq;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 53197
    .local v0, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 53198
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53199
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sq;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadFinishMs()J
    .locals 2

    .line 53200
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:J

    return-wide v0
.end method

.method public getResponseEndMs()J
    .locals 2

    .line 53201
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A02:J

    return-wide v0
.end method

.method public getScrollReadyMs()J
    .locals 2

    .line 53202
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A03:J

    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 53203
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/N0;->onDraw(Landroid/graphics/Canvas;)V

    .line 53204
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Sq;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sq;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sq;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 53205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A03:J

    .line 53206
    :cond_0
    return-void
.end method

.method public setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/Mv;)V
    .locals 2

    .line 53207
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A07:Lcom/facebook/ads/redexgen/X/Mx;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mx;->A04(Ljava/lang/ref/WeakReference;)V

    .line 53208
    return-void
.end method
