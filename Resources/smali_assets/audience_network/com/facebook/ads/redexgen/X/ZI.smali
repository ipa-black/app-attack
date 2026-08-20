.class public final Lcom/facebook/ads/redexgen/X/ZI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1x;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/InterstitialAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Zs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Es;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/YN;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/LD;

.field public A06:Z

.field public A07:Z

.field public final A08:Lcom/facebook/ads/redexgen/X/Xc;

.field public final A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

.field public final A0A:Lcom/facebook/ads/redexgen/X/20;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 70213
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Q9RghtL5kPMxXUG2hlpmHrVaJwYYGwGq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TIO3FaU0Mikock0w3rckrPhiuYRMfGhJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "k6SAISDvmHdOF1rkjeEeymm6HvDlJVR0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eDRhFd25R2oFsFg27vb0d5UADzs1KoZv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MaVPWgska1IH7XOKtPwNB8GdxIWUIxDt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dS1g8OO0fBonmOwqVSSlXi39LbvMIXQb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JdFW5Fpsu4G"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QGzwgj8zvaLwI8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZI;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZI;->A0B()V

    const-class v0, Lcom/facebook/ads/redexgen/X/ZI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZI;->A0D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/20;Lcom/facebook/ads/redexgen/X/27;Ljava/lang/String;)V
    .locals 2

    .line 70214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70215
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:J

    .line 70216
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    .line 70217
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/20;->A05()Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70218
    new-instance v0, Lcom/facebook/ads/redexgen/X/Z9;

    invoke-direct {v0, p3, p2, p0}, Lcom/facebook/ads/redexgen/X/Z9;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/27;Lcom/facebook/ads/redexgen/X/ZI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    .line 70219
    new-instance v0, Lcom/facebook/ads/redexgen/X/LD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LD;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A05:Lcom/facebook/ads/redexgen/X/LD;

    .line 70220
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ZI;)J
    .locals 1

    .line 70221
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/InterstitialAd;
    .locals 0

    .line 70222
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A01:Lcom/facebook/ads/InterstitialAd;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ZI;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;
    .locals 0

    .line 70223
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A01:Lcom/facebook/ads/InterstitialAd;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/InterstitialAdExtendedListener;
    .locals 0

    .line 70224
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/Zs;
    .locals 0

    .line 70225
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/ZI;Lcom/facebook/ads/redexgen/X/Zs;)Lcom/facebook/ads/redexgen/X/Zs;
    .locals 0

    .line 70226
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    return-object p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/Es;
    .locals 0

    .line 70227
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/ZI;Lcom/facebook/ads/redexgen/X/Es;)Lcom/facebook/ads/redexgen/X/Es;
    .locals 0

    .line 70228
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    return-object p1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/20;
    .locals 0

    .line 70229
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/ZI;)Lcom/facebook/ads/redexgen/X/LD;
    .locals 0

    .line 70230
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A05:Lcom/facebook/ads/redexgen/X/LD;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZI;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZI;->A0B:[B

    return-void

    :array_0
    .array-data 1
        -0x3bt
        -0xet
        -0x5ct
        -0x1bt
        -0x18t
        -0x5ct
        -0x10t
        -0xdt
        -0x1bt
        -0x18t
        -0x5ct
        -0x13t
        -0x9t
        -0x5ct
        -0x1bt
        -0x10t
        -0xat
        -0x17t
        -0x1bt
        -0x18t
        -0x3t
        -0x5ct
        -0x13t
        -0xet
        -0x5ct
        -0xct
        -0xat
        -0xdt
        -0x15t
        -0xat
        -0x17t
        -0x9t
        -0x9t
        -0x4et
        -0x5ct
        -0x23t
        -0xdt
        -0x7t
        -0x5ct
        -0x9t
        -0x14t
        -0xdt
        -0x7t
        -0x10t
        -0x18t
        -0x5ct
        -0x5t
        -0x1bt
        -0x13t
        -0x8t
        -0x5ct
        -0x16t
        -0xdt
        -0xat
        -0x5ct
        -0x1bt
        -0x18t
        -0x30t
        -0xdt
        -0x1bt
        -0x18t
        -0x17t
        -0x18t
        -0x54t
        -0x53t
        -0x5ct
        -0x8t
        -0xdt
        -0x5ct
        -0x1at
        -0x17t
        -0x5ct
        -0x19t
        -0x1bt
        -0x10t
        -0x10t
        -0x17t
        -0x18t
        -0x4t
        0x21t
        0x27t
        0x18t
        0x25t
        0x26t
        0x27t
        0x1ct
        0x27t
        0x1ct
        0x14t
        0x1ft
        -0x2dt
        0x1ft
        0x22t
        0x14t
        0x17t
        -0x2dt
        0x16t
        0x14t
        0x1ft
        0x1ft
        0x18t
        0x17t
        -0x2dt
        0x2at
        0x1bt
        0x1ct
        0x1ft
        0x18t
        -0x2dt
        0x26t
        0x1bt
        0x22t
        0x2at
        0x1ct
        0x21t
        0x1at
        -0x2dt
        0x1ct
        0x21t
        0x27t
        0x18t
        0x25t
        0x26t
        0x27t
        0x1ct
        0x27t
        0x1ct
        0x14t
        0x1ft
        -0x1ft
        0xdt
        0x1ct
        0x15t
    .end array-data
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/ZI;Z)Z
    .locals 0

    .line 70231
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A07:Z

    return p1
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/ZI;Z)Z
    .locals 0

    .line 70232
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A06:Z

    return p1
.end method


# virtual methods
.method public final A0E()J
    .locals 2

    .line 70233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    if-eqz v0, :cond_0

    .line 70234
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0D()J

    move-result-wide v0

    return-wide v0

    .line 70235
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0F()V
    .locals 2

    .line 70236
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    if-eqz v1, :cond_0

    .line 70237
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZJ;-><init>(Lcom/facebook/ads/redexgen/X/ZI;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 70238
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0T(Z)V

    .line 70239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    .line 70240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A07:Z

    .line 70241
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A06:Z

    .line 70242
    :cond_0
    return-void
.end method

.method public final A0G()V
    .locals 1

    .line 70243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A04:Lcom/facebook/ads/redexgen/X/YN;

    if-eqz v0, :cond_0

    .line 70244
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YN;->A02()V

    .line 70245
    :cond_0
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/internal/api/AdCompanionView;)V
    .locals 3

    .line 70246
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdCompanionView;->getAdCompanionViewApi()Lcom/facebook/ads/internal/api/AdCompanionViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/YN;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A04:Lcom/facebook/ads/redexgen/X/YN;

    .line 70247
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A02:Lcom/facebook/ads/redexgen/X/Zs;

    if-eqz v1, :cond_0

    .line 70248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A04:Lcom/facebook/ads/redexgen/X/YN;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/YN;->A03(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;)V

    .line 70249
    :cond_0
    return-void
.end method

.method public final A0I(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70250
    .local v10, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:J

    .line 70251
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A07:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    if-eqz v0, :cond_0

    .line 70252
    sget-object v3, Lcom/facebook/ads/redexgen/X/ZI;->A0D:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70253
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A07:Z

    .line 70254
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A06:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A0g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70256
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0L:I

    const/16 v2, 0x4e

    const/16 v1, 0x34

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0A(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 70257
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70258
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70259
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70260
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:J

    .line 70261
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v2

    .line 70262
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 70263
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 70264
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 70265
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZI;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    .line 70266
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v3

    .line 70267
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 70268
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 70269
    return-void

    .line 70270
    .end local v0    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    if-eqz v1, :cond_2

    .line 70271
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZN;-><init>(Lcom/facebook/ads/redexgen/X/ZI;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 70272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0J()V

    .line 70273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    .line 70274
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 70275
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v5, Lcom/facebook/ads/redexgen/X/1p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    .line 70276
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A09()Ljava/lang/String;

    move-result-object v6

    .line 70277
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JH;->A00(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v7

    sget-object v8, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v9, Lcom/facebook/ads/redexgen/X/JD;->A07:Lcom/facebook/ads/redexgen/X/JD;

    const/4 v10, 0x1

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/1p;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JD;ILjava/util/EnumSet;)V

    .line 70278
    .local v1, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1p;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70279
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    .line 70280
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A07()Ljava/lang/String;

    move-result-object v0

    .line 70281
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KU;->A02(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70282
    .local v2, "extraHints":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 70283
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZI;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZI;->A0C:[Ljava/lang/String;

    const-string v1, "6YCA3PHZSlLj0jmN2b2hvaW99ZyRMwjh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "7PoIPIeUN8KAt8vfreK3c69iBAU82q7R"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/20;->A0H(Ljava/lang/String;)V

    .line 70284
    .end local v2    # "extraHints":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1p;->A06(Ljava/lang/String;)V

    .line 70285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1p;->A07(Ljava/lang/String;)V

    .line 70286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A03()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1p;->A04(Lcom/facebook/ads/RewardData;)V

    .line 70287
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Es;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/Es;-><init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1p;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    .line 70288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ZK;-><init>(Lcom/facebook/ads/redexgen/X/ZI;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 70289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Za;->A0R(Ljava/lang/String;)V

    .line 70290
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 70291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0U()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0K()Z
    .locals 1

    .line 70292
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A07:Z

    return v0
.end method

.method public final A0L()Z
    .locals 8

    .line 70293
    sget-object v6, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    .line 70294
    .local v0, "showError":Lcom/facebook/ads/AdError;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A07:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 70295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70296
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:J

    .line 70297
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v1

    .line 70298
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    .line 70299
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 70300
    invoke-interface {v4, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 70301
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 70302
    return v5

    .line 70303
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A03:Lcom/facebook/ads/redexgen/X/Es;

    if-nez v0, :cond_1

    .line 70304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70305
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v7

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0S:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70306
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 70307
    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZI;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A08:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70309
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A00:J

    .line 70310
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v2

    .line 70311
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    .line 70312
    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 70313
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 70314
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZI;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A0A:Lcom/facebook/ads/redexgen/X/20;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/20;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 70315
    return v5

    .line 70316
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0I()V

    .line 70317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZI;->A06:Z

    .line 70318
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/ZI;->A07:Z

    .line 70319
    return v0
.end method
