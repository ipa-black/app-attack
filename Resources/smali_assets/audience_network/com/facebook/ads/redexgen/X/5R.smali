.class public final Lcom/facebook/ads/redexgen/X/5R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/VideoAutoplayBehavior;

.field public A02:Lcom/facebook/ads/redexgen/X/5K;

.field public A03:Lcom/facebook/ads/redexgen/X/Xc;

.field public A04:Lcom/facebook/ads/redexgen/X/It;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/AB;

.field public A06:Z

.field public A07:Z

.field public A08:Lcom/facebook/ads/NativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/PO;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Oj;

.field public final A0B:Lcom/facebook/ads/redexgen/X/NY;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A0D:Lcom/facebook/ads/redexgen/X/M9;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Kr;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 14248
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ds1OlE9QLNwB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aoTFD1mdY9qS2iG1b6xBMIzf9BXXSrYm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "osndMvDCAJCV1YpU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nBivoQhUG9UhcV9idWewaYAmGQw5UcJS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JB025Vwse6xgHKaH4PdlPsgjNbTaZijW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Rr8Hg5ZtJOltbAd8rryGswWrdJNm13cq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EfdUYpEvlCzoAxPYZB8PQhxNy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DXUiKhR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5R;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5R;->A02()V

    const-class v0, Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5R;->A0I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14250
    new-instance v0, Lcom/facebook/ads/redexgen/X/E5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/E5;-><init>(Lcom/facebook/ads/redexgen/X/5R;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0D:Lcom/facebook/ads/redexgen/X/M9;

    .line 14251
    new-instance v0, Lcom/facebook/ads/redexgen/X/E4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/E4;-><init>(Lcom/facebook/ads/redexgen/X/5R;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0C:Lcom/facebook/ads/redexgen/X/Mt;

    .line 14252
    new-instance v0, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/E3;-><init>(Lcom/facebook/ads/redexgen/X/5R;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0B:Lcom/facebook/ads/redexgen/X/NY;

    .line 14253
    new-instance v0, Lcom/facebook/ads/redexgen/X/E2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/E2;-><init>(Lcom/facebook/ads/redexgen/X/5R;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0E:Lcom/facebook/ads/redexgen/X/Lz;

    .line 14254
    new-instance v0, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/E1;-><init>(Lcom/facebook/ads/redexgen/X/5R;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A09:Lcom/facebook/ads/redexgen/X/PO;

    .line 14255
    new-instance v0, Lcom/facebook/ads/redexgen/X/E0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/E0;-><init>(Lcom/facebook/ads/redexgen/X/5R;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0F:Lcom/facebook/ads/redexgen/X/Kr;

    .line 14256
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Dz;-><init>(Lcom/facebook/ads/redexgen/X/5R;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0A:Lcom/facebook/ads/redexgen/X/Oj;

    .line 14257
    new-instance v0, Lcom/facebook/ads/redexgen/X/5K;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5K;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A02:Lcom/facebook/ads/redexgen/X/5K;

    .line 14258
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5R;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 14259
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5R;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xcf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5R;->A0G:[B

    return-void

    :array_0
    .array-data 1
        -0x1et
        0x7t
        0xft
        -0x6t
        0x5t
        0x2t
        -0x3t
        -0x47t
        -0x11t
        0x2t
        -0x2t
        0x10t
        -0x47t
        -0x4t
        0x8t
        0x7t
        0xct
        0xdt
        0xbt
        0xet
        -0x4t
        0xdt
        0x8t
        0xbt
        -0x47t
        0x9t
        -0x6t
        0xbt
        -0x6t
        0x6t
        0xct
        -0x47t
        0xdt
        0x12t
        0x9t
        -0x2t
        -0x39t
        -0x22t
        -0x10t
        -0x10t
        -0xat
        -0xct
        -0x7t
        -0xet
        -0x55t
        -0x8t
        0x0t
        -0x2t
        -0x1t
        -0x55t
        -0x13t
        -0x10t
        -0x55t
        -0x5t
        -0x3t
        -0x10t
        -0x12t
        -0x10t
        -0x11t
        -0x10t
        -0x11t
        -0x55t
        -0x13t
        0x4t
        -0x55t
        -0x14t
        -0x55t
        -0x12t
        -0x14t
        -0x9t
        -0x9t
        -0x55t
        -0x1t
        -0x6t
        -0x55t
        -0x10t
        -0x7t
        -0xet
        -0x14t
        -0xet
        -0x10t
        -0x22t
        -0x10t
        -0x10t
        -0xat
        -0x49t
        -0x55t
        -0x14t
        -0x7t
        -0x11t
        -0x55t
        -0xft
        -0x6t
        -0x9t
        -0x9t
        -0x6t
        0x2t
        -0x10t
        -0x11t
        -0x55t
        -0x13t
        0x4t
        -0x55t
        -0x14t
        -0x55t
        -0x12t
        -0x14t
        -0x9t
        -0x9t
        -0x55t
        -0x1t
        -0x6t
        -0x55t
        -0x11t
        -0xct
        -0x2t
        -0x10t
        -0x7t
        -0xet
        -0x14t
        -0xet
        -0x10t
        -0x22t
        -0x10t
        -0x10t
        -0xat
        -0x47t
        -0x1bt
        -0x16t
        -0xct
        -0x1at
        -0x11t
        -0x18t
        -0x1et
        -0x18t
        -0x1at
        -0x2ct
        -0x1at
        -0x1at
        -0x14t
        -0x5ft
        -0x1ct
        -0x1et
        -0x13t
        -0x13t
        -0x1at
        -0x1bt
        -0x5ft
        -0x8t
        -0x16t
        -0xbt
        -0x17t
        -0x10t
        -0xat
        -0xbt
        -0x5ft
        -0x1at
        -0x11t
        -0x18t
        -0x1et
        -0x18t
        -0x1at
        -0x2ct
        -0x1at
        -0x1at
        -0x14t
        -0x51t
        0x4at
        0x53t
        0x4ct
        0x46t
        0x4ct
        0x4at
        0x38t
        0x4at
        0x4at
        0x50t
        0x5t
        0x48t
        0x46t
        0x51t
        0x51t
        0x4at
        0x49t
        0x5t
        0x5ct
        0x4et
        0x59t
        0x4dt
        0x54t
        0x5at
        0x59t
        0x5t
        0x49t
        0x4et
        0x58t
        0x4at
        0x53t
        0x4ct
        0x46t
        0x4ct
        0x4at
        0x38t
        0x4at
        0x4at
        0x50t
        0x13t
    .end array-data
.end method


# virtual methods
.method public final A03()V
    .locals 4

    .line 14260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 14261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AB;->setClientToken(Ljava/lang/String;)V

    .line 14262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AB;->setVideoMPD(Ljava/lang/String;)V

    .line 14263
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    move-object v0, v2

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->setVideoURI(Landroid/net/Uri;)V

    .line 14264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AB;->setVideoCTA(Ljava/lang/String;)V

    .line 14265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/AB;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 14266
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 14267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 14268
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v0

    .line 14269
    invoke-virtual {v0, v3, v3}, Lcom/facebook/ads/redexgen/X/Tp;->A1c(ZZ)V

    .line 14270
    :cond_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/5R;->A08:Lcom/facebook/ads/NativeAd;

    .line 14271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A04:Lcom/facebook/ads/redexgen/X/It;

    if-eqz v0, :cond_1

    .line 14272
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/It;->AFh()V

    .line 14273
    :cond_1
    return-void
.end method

.method public final A04(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 14274
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5R;->A08:Lcom/facebook/ads/NativeAd;

    .line 14275
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A11()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v1

    .line 14276
    .local v0, "adObjectContext":Lcom/facebook/ads/redexgen/X/Xc;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xc;->A0G(Lcom/facebook/ads/redexgen/X/Xc;)V

    .line 14277
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/5S;

    .line 14278
    .local v1, "nativeAdApi":Lcom/facebook/ads/redexgen/X/5S;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    .line 14279
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A1B()Ljava/lang/String;

    move-result-object v0

    .line 14280
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->setClientToken(Ljava/lang/String;)V

    .line 14281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5S;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->setVideoMPD(Ljava/lang/String;)V

    .line 14282
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5S;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->setVideoURI(Ljava/lang/String;)V

    .line 14283
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0y()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v0

    .line 14284
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/a7;
    if-eqz v0, :cond_0

    .line 14285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a7;->A0B()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->setVideoProgressReportIntervalMs(I)V

    .line 14286
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->setVideoCTA(Ljava/lang/String;)V

    .line 14287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AB;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 14288
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/5S;->getVideoAutoplayBehavior()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    .line 14289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A04:Lcom/facebook/ads/redexgen/X/It;

    if-eqz v0, :cond_1

    .line 14290
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/It;->AF2(Lcom/facebook/ads/NativeAd;)V

    .line 14291
    :cond_1
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Ia;)V
    .locals 1

    .line 14292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AB;->setAdEventManager(Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 14293
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/It;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/It;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14294
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5R;->A04:Lcom/facebook/ads/redexgen/X/It;

    .line 14295
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Ls;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/Ls;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AB;->setListener(Lcom/facebook/ads/redexgen/X/Ls;)V

    .line 14297
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 14298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->A0V()V

    .line 14299
    return-void
.end method

.method public final disengageSeek(Lcom/facebook/ads/VideoStartReason;)V
    .locals 4

    .line 14300
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A06:Z

    if-nez v0, :cond_2

    .line 14301
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5R;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5R;->A0H:[Ljava/lang/String;

    const-string v1, "WtsbSHtQErqq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "XLMSbaKAMNULMDv3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 14302
    sget-object v3, Lcom/facebook/ads/redexgen/X/5R;->A0I:Ljava/lang/String;

    const/16 v2, 0x7f

    const/16 v1, 0x28

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5R;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14303
    :cond_1
    return-void

    .line 14304
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A06:Z

    .line 14305
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A07:Z

    if-eqz v0, :cond_3

    .line 14306
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    .line 14307
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LH;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/PK;

    move-result-object v1

    const/4 v0, 0x3

    .line 14308
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0b(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 14309
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekDisengaged()V

    .line 14310
    return-void
.end method

.method public final engageSeek()V
    .locals 4

    .line 14311
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A06:Z

    if-eqz v0, :cond_1

    .line 14312
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14313
    sget-object v3, Lcom/facebook/ads/redexgen/X/5R;->A0I:Ljava/lang/String;

    const/16 v2, 0xa7

    const/16 v1, 0x28

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5R;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14314
    :cond_0
    return-void

    .line 14315
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/5R;->A06:Z

    .line 14316
    sget-object v1, Lcom/facebook/ads/redexgen/X/Q7;->A0A:Lcom/facebook/ads/redexgen/X/Q7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q7;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A07:Z

    .line 14317
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/RA;->A0e(ZI)V

    .line 14318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onSeekEngaged()V

    .line 14319
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 1

    .line 14320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A02:Lcom/facebook/ads/redexgen/X/5K;

    return-object v0
.end method

.method public final getCurrentTimeMs()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 14321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getCurrentPositionInMillis()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 14322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getDuration()I

    move-result v0

    return v0
.end method

.method public final getVideoView()Landroid/view/View;
    .locals 1

    .line 14323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getVideoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getVolume()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 14324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getVolume()F

    move-result v0

    return v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 7

    .line 14325
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 14326
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 14327
    .local v0, "context":Landroid/content/Context;
    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/Xc;

    if-eqz v0, :cond_3

    .line 14328
    check-cast v3, Lcom/facebook/ads/redexgen/X/Xc;

    .line 14329
    .local v1, "adContextWrapper":Lcom/facebook/ads/redexgen/X/Xc;
    .restart local v1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/Xc;
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/5R;->A03:Lcom/facebook/ads/redexgen/X/Xc;

    .line 14330
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_4

    .line 14331
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 14332
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AB;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AB;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    .line 14333
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {p2}, Lcom/facebook/ads/MediaViewVideoRenderer;->shouldAllowBackgroundPlayback()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AB;->setEnableBackgroundVideo(Z)V

    .line 14334
    const/4 v3, -0x1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 14335
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/RA;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14336
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A02:Lcom/facebook/ads/redexgen/X/5K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/5K;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 14337
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kp;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kp;)V

    .line 14338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    .line 14339
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x7

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0D:Lcom/facebook/ads/redexgen/X/M9;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0C:Lcom/facebook/ads/redexgen/X/Mt;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0B:Lcom/facebook/ads/redexgen/X/NY;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0E:Lcom/facebook/ads/redexgen/X/Lz;

    aput-object v0, v2, v4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A09:Lcom/facebook/ads/redexgen/X/PO;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0F:Lcom/facebook/ads/redexgen/X/Kr;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A0A:Lcom/facebook/ads/redexgen/X/Oj;

    aput-object v0, v2, v1

    .line 14340
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 14341
    return-void

    .line 14342
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v2

    .line 14343
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AB;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AB;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    .line 14344
    goto :goto_1

    .line 14345
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AB;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/AB;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    .line 14346
    goto :goto_1

    .line 14347
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/AB;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/AB;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    .line 14348
    goto :goto_1

    .line 14349
    .end local v1    # "adContextWrapper":Lcom/facebook/ads/redexgen/X/Xc;
    :cond_3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5M;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v3

    goto/16 :goto_0

    .line 14350
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5R;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pause(Z)V
    .locals 2

    .line 14351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    const/4 v0, 0x2

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0e(ZI)V

    .line 14352
    return-void
.end method

.method public final play(Lcom/facebook/ads/VideoStartReason;)V
    .locals 3

    .line 14353
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    .line 14354
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LH;->A00(Lcom/facebook/ads/VideoStartReason;)Lcom/facebook/ads/redexgen/X/PK;

    move-result-object v1

    .line 14355
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RA;->A0b(Lcom/facebook/ads/redexgen/X/PK;I)V

    .line 14356
    return-void
.end method

.method public final seekTo(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 14357
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A06:Z

    if-nez v0, :cond_1

    .line 14358
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14359
    sget-object v3, Lcom/facebook/ads/redexgen/X/5R;->A0I:Ljava/lang/String;

    const/16 v2, 0x25

    const/16 v1, 0x5a

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5R;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14360
    :cond_0
    return-void

    .line 14361
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RA;->A0Y(I)V

    .line 14362
    return-void
.end method

.method public final setVolume(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 14363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RA;->setVolume(F)V

    .line 14364
    return-void
.end method

.method public final shouldAutoplay()Z
    .locals 3

    .line 14365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A05:Lcom/facebook/ads/redexgen/X/AB;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RA;->getState()Lcom/facebook/ads/redexgen/X/Q7;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q7;->A06:Lcom/facebook/ads/redexgen/X/Q7;

    if-ne v1, v0, :cond_1

    .line 14366
    :cond_0
    return v2

    .line 14367
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A01:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method
