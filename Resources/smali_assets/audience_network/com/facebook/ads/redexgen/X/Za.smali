.class public abstract Lcom/facebook/ads/redexgen/X/Za;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jc;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HardcodedIPAddressUse"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Landroid/os/Handler;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/0s;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/Jd;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/0n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/8A;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/Ja;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Lcom/facebook/ads/redexgen/X/0o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/1p;

.field public final A08:Lcom/facebook/ads/redexgen/X/Ia;

.field public final A09:Lcom/facebook/ads/redexgen/X/0s;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Jd;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Xc;

.field public volatile A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 70741
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4yJhIog9RzpC9w4XHjq79o6hmz2pMXrt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bLneqHgNlbzxjE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "P7gevZ65hMGDm5VmgpkLcWEi46YxYduR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Pajg2XTKXpS0pN0AoGLcPnQoa2IWF6Z7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YyJRdl3XxpBTstTmsw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OvgbPt0JG7dlaj99kqPbJKVmb9CPKTVr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "21VbiQWRKHmC0d4xB3zoTsbqXtN2ZOxw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Q3Y9mBD7X4l0uaedlY7FP5X0xCsXbtIX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Za;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Za;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LN;->A02()V

    .line 70742
    const-class v0, Lcom/facebook/ads/redexgen/X/Za;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Za;->A0I:Ljava/lang/String;

    .line 70743
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Za;->A0F:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 2

    .line 70744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70745
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A03:J

    .line 70746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A02:Ljava/lang/String;

    .line 70747
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70748
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    .line 70749
    sget-object v0, Lcom/facebook/ads/redexgen/X/Za;->A0H:Lcom/facebook/ads/redexgen/X/Jd;

    if-eqz v0, :cond_1

    .line 70750
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0A:Lcom/facebook/ads/redexgen/X/Jd;

    .line 70751
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0A:Lcom/facebook/ads/redexgen/X/Jd;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jd;->A0P(Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 70752
    sget-object v0, Lcom/facebook/ads/redexgen/X/Za;->A0G:Lcom/facebook/ads/redexgen/X/0s;

    if-eqz v0, :cond_0

    .line 70753
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A09:Lcom/facebook/ads/redexgen/X/0s;

    .line 70754
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 70755
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7N;->A09()Lcom/facebook/ads/redexgen/X/Ia;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    .line 70756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4a()V

    .line 70757
    return-void

    .line 70758
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/0s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A09:Lcom/facebook/ads/redexgen/X/0s;

    goto :goto_1

    .line 70759
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jd;-><init>(Lcom/facebook/ads/redexgen/X/Xc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0A:Lcom/facebook/ads/redexgen/X/Jd;

    goto :goto_0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Za;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x14a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Za;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x6et
        0x6bt
        0x7at
        0x7et
        0x6ft
        0x78t
        0x2at
        0x6et
        0x65t
        0x6ft
        0x79t
        0x2at
        0x64t
        0x65t
        0x7et
        0x2at
        0x6ft
        0x72t
        0x63t
        0x79t
        0x7et
        0x4et
        0x6bt
        0x6et
        0x7ft
        0x7bt
        0x6at
        0x7dt
        0x2ft
        0x66t
        0x7ct
        0x2ft
        0x61t
        0x7at
        0x63t
        0x63t
        0x2ft
        0x27t
        0x6ct
        0x67t
        0x6et
        0x66t
        0x61t
        0x2ft
        0x61t
        0x60t
        0x7bt
        0x2ft
        0x63t
        0x60t
        0x6et
        0x6bt
        0x6at
        0x6bt
        0x26t
        0x39t
        0x1ct
        0x19t
        0x8t
        0xct
        0x1dt
        0xat
        0x58t
        0x11t
        0xbt
        0x58t
        0x16t
        0xdt
        0x14t
        0x14t
        0x58t
        0x50t
        0x1bt
        0x10t
        0x19t
        0x11t
        0x16t
        0x1dt
        0x1ct
        0x51t
        0x2dt
        0x8t
        0xdt
        0x1ct
        0x18t
        0x9t
        0x1et
        0x4ct
        0x5t
        0x1ft
        0x4ct
        0x2t
        0x19t
        0x0t
        0x0t
        0x4ct
        0x44t
        0x2t
        0x3t
        0x4ct
        0xft
        0x4t
        0xdt
        0x5t
        0x2t
        0x45t
        0x4et
        0x6bt
        0x6et
        0x7ft
        0x7bt
        0x6at
        0x7dt
        0x2ft
        0x66t
        0x7ct
        0x2ft
        0x61t
        0x7at
        0x63t
        0x63t
        0x2ft
        0x60t
        0x61t
        0x2ft
        0x7ct
        0x7bt
        0x6et
        0x7dt
        0x7bt
        0x4et
        0x6bt
        0x5t
        0x24t
        0x6bt
        0x26t
        0x24t
        0x39t
        0x2et
        0x6bt
        0x2at
        0x2ft
        0x6bt
        0x28t
        0x2at
        0x25t
        0x2ft
        0x22t
        0x2ft
        0x2at
        0x3ft
        0x2et
        0x38t
        0x65t
        0x7at
        0x5ft
        0x42t
        0x43t
        0x4at
        0xdt
        0x4ct
        0x49t
        0x4ct
        0x5dt
        0x59t
        0x48t
        0x5ft
        0xdt
        0x59t
        0x54t
        0x5dt
        0x48t
        0x3t
        0x2et
        0x2bt
        0x6ft
        0x2et
        0x23t
        0x3dt
        0x2at
        0x2et
        0x2bt
        0x36t
        0x6ft
        0x3ct
        0x3bt
        0x2et
        0x3dt
        0x3bt
        0x2at
        0x2bt
        0x5et
        0x5bt
        0x4ct
        0x34t
        0x25t
        0x3ct
        0x1at
        0x11t
        0x18t
        0x10t
        0x17t
        0x26t
        0x9t
        0x18t
        0xbt
        0x18t
        0x14t
        0xat
        0x4ct
        0x5bt
        0x4at
        0x4ft
        0x5at
        0x4ft
        0x61t
        0x4ct
        0x44t
        0x4bt
        0x4dt
        0x5at
        0xet
        0x47t
        0x5dt
        0xet
        0x40t
        0x5bt
        0x42t
        0x42t
        0x26t
        0x2dt
        0x20t
        0x31t
        0x3at
        0x33t
        0x37t
        0x26t
        0x27t
        0x1ct
        0x2at
        0x27t
        0x7at
        0x71t
        0x69t
        0x76t
        0x6dt
        0x70t
        0x71t
        0x72t
        0x7at
        0x71t
        0x6bt
        0x3ft
        0x76t
        0x6ct
        0x3ft
        0x7at
        0x72t
        0x6ft
        0x6bt
        0x66t
        0x26t
        0x32t
        0x25t
        0x31t
        0x35t
        0x25t
        0x2et
        0x23t
        0x39t
        0x1ft
        0x23t
        0x21t
        0x30t
        0x30t
        0x29t
        0x2et
        0x27t
        0x1ct
        0x1bt
        0x3t
        0x14t
        0x19t
        0x1ct
        0x11t
        0x55t
        0x5t
        0x19t
        0x14t
        0x16t
        0x10t
        0x18t
        0x10t
        0x1bt
        0x1t
        0x55t
        0x1ct
        0x1bt
        0x55t
        0x7t
        0x10t
        0x6t
        0x5t
        0x1at
        0x1bt
        0x6t
        0x10t
        0xat
        0x9t
        0x7t
        0x2t
        0x39t
        0x12t
        0xft
        0xbt
        0x3t
        0x39t
        0xbt
        0x15t
        0x2ct
        0x3bt
        0x2ft
        0x2bt
        0x3bt
        0x2dt
        0x2at
        0x1t
        0x37t
        0x3at
    .end array-data
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Tc;)V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 70760
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Tc;->A00()Lcom/facebook/ads/redexgen/X/8A;

    move-result-object v2

    .line 70761
    .local v2, "placement":Lcom/facebook/ads/redexgen/X/8A;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v1

    if-nez v1, :cond_2

    .line 70762
    .end local v3
    .end local v5
    .end local v6
    :cond_0
    const/16 v3, 0x117

    const/16 v2, 0x1d

    const/16 v1, 0x7d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v4

    .line 70763
    .local v0, "errorMessage":Ljava/lang/String;
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    new-instance v3, Lcom/facebook/ads/redexgen/X/JA;

    invoke-direct {v3, v1, v4}, Lcom/facebook/ads/redexgen/X/JA;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    .line 70764
    .local v3, "error":Lcom/facebook/ads/redexgen/X/JA;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-interface {v2, v1, v4}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 70765
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v0, :cond_1

    .line 70766
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70767
    :cond_1
    return-void

    .line 70768
    :cond_2
    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A04:Lcom/facebook/ads/redexgen/X/8A;

    .line 70769
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 70770
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A04:Lcom/facebook/ads/redexgen/X/8A;

    .line 70771
    .local v3, "currentPlacement":Lcom/facebook/ads/redexgen/X/8A;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A09()Lorg/json/JSONObject;

    move-result-object v6

    const/16 v4, 0xc3

    const/4 v3, 0x3

    const/16 v2, 0x5d

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v5

    if-nez v6, :cond_4

    .line 70772
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A04()Lcom/facebook/ads/redexgen/X/88;

    move-result-object v3

    .line 70773
    .local v0, "placementAd":Lcom/facebook/ads/redexgen/X/88;
    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Za;->A0C(Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 70774
    return-void

    .line 70775
    :cond_3
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    if-nez v2, :cond_f

    .line 70776
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70777
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v7

    sget v6, Lcom/facebook/ads/redexgen/X/7s;->A0a:I

    .line 70778
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/88;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x51

    const/16 v2, 0x1a

    const/16 v1, 0x64

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70779
    invoke-interface {v7, v5, v6, v1}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70780
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JA;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Za;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70781
    return-void

    .line 70782
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70783
    .local v5, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/dto/AdCandidate;>;"
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A04()Lcom/facebook/ads/redexgen/X/88;

    move-result-object v3

    .line 70784
    .restart local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/88;
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 70785
    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Za;->A0C(Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 70786
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70787
    :cond_6
    :goto_0
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A04()Lcom/facebook/ads/redexgen/X/88;

    move-result-object v3

    .line 70788
    .end local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/88;
    .local v6, "placementAd":Lcom/facebook/ads/redexgen/X/88;
    if-nez v3, :cond_5

    .line 70789
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    const/4 v4, 0x0

    if-nez v2, :cond_8

    .line 70790
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70791
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v7

    sget v6, Lcom/facebook/ads/redexgen/X/7s;->A0a:I

    .line 70792
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/88;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/88;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x38

    const/16 v2, 0x19

    const/16 v1, 0x70

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70793
    invoke-interface {v7, v5, v6, v1}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70794
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JA;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Za;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70795
    return-void

    .line 70796
    :cond_7
    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Za;->A0B(Lcom/facebook/ads/redexgen/X/88;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 70797
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70798
    :cond_8
    const/4 v7, 0x0

    .line 70799
    .local v8, "loaded":Z
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x1

    if-le v6, v2, :cond_a

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/0n;->AFX()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 70800
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 70801
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 70802
    .local p0, "ads":Lorg/json/JSONArray;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/88;

    .line 70803
    .local v10, "candidate":Lcom/facebook/ads/redexgen/X/88;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/88;->A04()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 70804
    :cond_9
    const/16 v7, 0xc0

    const/4 v6, 0x3

    const/16 v2, 0x37

    invoke-static {v7, v6, v2}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70805
    const/16 v7, 0xc6

    const/16 v6, 0xc

    const/16 v2, 0x71

    invoke-static {v7, v6, v2}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v6

    .line 70806
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A09()Lorg/json/JSONObject;

    move-result-object v2

    .line 70807
    invoke-virtual {v10, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70808
    new-instance v9, Lcom/facebook/ads/redexgen/X/1q;

    .line 70809
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v11

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/1p;->A09:Ljava/lang/String;

    .line 70810
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8B;->A0C()J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/1q;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8B;Ljava/lang/String;J)V

    .line 70811
    .local v9, "loadConfig":Lcom/facebook/ads/redexgen/X/1q;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    invoke-virtual {v0, v2, v1, v3, v9}, Lcom/facebook/ads/redexgen/X/Za;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;Lcom/facebook/ads/redexgen/X/1q;)V

    goto :goto_2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70812
    .local v0, "ex":Ljava/lang/Exception;
    :catch_0
    const/4 v7, 0x0

    goto :goto_3

    .line 70813
    :goto_2
    const/4 v7, 0x1

    .line 70814
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_a
    :goto_3
    if-nez v7, :cond_10

    .line 70815
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 70816
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x49

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v6

    .line 70817
    .local v0, "error":Lcom/facebook/ads/redexgen/X/JA;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70818
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v5

    .line 70819
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v4

    const/16 v3, 0x85

    const/16 v2, 0x16

    const/16 v1, 0x43

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 70820
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v0, :cond_b

    .line 70821
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70822
    :cond_b
    return-void

    .line 70823
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/JA;
    :cond_c
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    sget-object v6, Lcom/facebook/ads/redexgen/X/Za;->A0E:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v6, v2

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_e

    sget-object v6, Lcom/facebook/ads/redexgen/X/Za;->A0E:[Ljava/lang/String;

    const-string v3, "F2ixlBYVHNYJB4bAHADqJrSynawwg1yM"

    const/4 v2, 0x0

    aput-object v3, v6, v2

    const-string v3, "djkwyiiWLTaQwWMcVWQWfq0o8Ww2Jgo9"

    const/4 v2, 0x5

    aput-object v3, v6, v2

    if-nez v7, :cond_d

    .line 70824
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70825
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v7

    sget v6, Lcom/facebook/ads/redexgen/X/7s;->A0a:I

    .line 70826
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/88;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/88;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x16

    const/16 v2, 0x22

    const/4 v1, 0x7

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70827
    invoke-interface {v7, v5, v6, v1}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70828
    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JA;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Za;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70829
    return-void

    .line 70830
    :cond_d
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/88;

    .line 70831
    .end local v6    # "placementAd":Lcom/facebook/ads/redexgen/X/88;
    .local v0, "placementAd":Lcom/facebook/ads/redexgen/X/88;
    new-instance v4, Lcom/facebook/ads/redexgen/X/1q;

    .line 70832
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/88;->A04()Lorg/json/JSONObject;

    move-result-object v5

    .line 70833
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v6

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/1p;->A09:Ljava/lang/String;

    .line 70834
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8B;->A0C()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/1q;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8B;Ljava/lang/String;J)V

    .line 70835
    .restart local v4
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Za;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;Lcom/facebook/ads/redexgen/X/1q;)V

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70836
    :cond_f
    new-instance v4, Lcom/facebook/ads/redexgen/X/1q;

    .line 70837
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/88;->A04()Lorg/json/JSONObject;

    move-result-object v5

    .line 70838
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v6

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/1p;->A09:Ljava/lang/String;

    .line 70839
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8B;->A0C()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/1q;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8B;Ljava/lang/String;J)V

    .line 70840
    .local v4, "loadConfig":Lcom/facebook/ads/redexgen/X/1q;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Za;->A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;Lcom/facebook/ads/redexgen/X/1q;)V

    .line 70841
    .end local v0    # "placementAd":Lcom/facebook/ads/redexgen/X/88;
    .end local v4    # "loadConfig":Lcom/facebook/ads/redexgen/X/1q;
    .end local v0
    .end local v4
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/dto/AdCandidate;>;"
    .end local v8    # "loaded":Z
    :cond_10
    :goto_4
    return-void

    .line 70842
    :cond_11
    return-void
.end method

.method private final A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4d(Z)V

    .line 70844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A03:J

    .line 70845
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_1

    .line 70846
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->API_NOT_SUPPORTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JA;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/JA;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Za;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70847
    return-void

    .line 70848
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70849
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1p;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1p;->A08:Lcom/facebook/ads/redexgen/X/JF;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Lcom/facebook/ads/redexgen/X/7N;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JF;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/JB; {:try_start_0 .. :try_end_0} :catch_0

    .line 70850
    .local v0, "bidPayload":Lcom/facebook/ads/redexgen/X/JK;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70851
    invoke-virtual {v1, v0, v2, p2}, Lcom/facebook/ads/redexgen/X/1p;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A05:Lcom/facebook/ads/redexgen/X/Ja;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Za;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_2

    .line 70852
    sget-object v2, Lcom/facebook/ads/redexgen/X/Za;->A0E:[Ljava/lang/String;

    const-string v1, "3q2wB1pMY3UXfOrLgu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "CsXqAZILgfX2KA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Za;->A0A:Lcom/facebook/ads/redexgen/X/Jd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A05:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0O(Lcom/facebook/ads/redexgen/X/Ja;)V

    .line 70853
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70854
    .end local v0    # "bidPayload":Lcom/facebook/ads/redexgen/X/JK;
    :catch_0
    move-exception v0

    .line 70855
    .local v0, "e":Lcom/facebook/ads/redexgen/X/JB;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JA;->A02(Lcom/facebook/ads/redexgen/X/JB;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Za;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70856
    return-void
.end method

.method private A0A(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70857
    if-eqz p1, :cond_0

    .line 70858
    const/16 v2, 0xe6

    const/16 v1, 0xc

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A02:Ljava/lang/String;

    .line 70859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/0u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0u;->A0O(Lorg/json/JSONObject;)V

    .line 70860
    :cond_0
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/88;)Z
    .locals 1

    .line 70861
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/88;->A04()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;)Z
    .locals 8

    .line 70862
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    if-nez p2, :cond_1

    .line 70863
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v5

    .line 70864
    .local v0, "error":Lcom/facebook/ads/redexgen/X/JA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70865
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    .line 70866
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x85

    const/16 v1, 0x16

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 70867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v0, :cond_0

    .line 70868
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70869
    :cond_0
    return v7

    .line 70870
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/JA;
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/88;->A02()Ljava/lang/String;

    move-result-object v6

    .line 70871
    .local v2, "adapterName":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Za;->A09:Lcom/facebook/ads/redexgen/X/0s;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70872
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8B;->A0D()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0s;->A00(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;

    move-result-object v2

    .line 70873
    .local v3, "adapter":Lcom/facebook/ads/redexgen/X/0n;
    if-nez v2, :cond_2

    .line 70874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70875
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0a:I

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v0, v6}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70876
    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70877
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JA;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Za;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70878
    return v7

    .line 70879
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A07:Lcom/facebook/ads/redexgen/X/1p;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1p;->A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    .line 70880
    .local v4, "adapterType":Lcom/facebook/ads/internal/protocol/AdPlacementType;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/0n;->A7L()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    if-eq v1, v0, :cond_4

    .line 70881
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v5

    .line 70882
    .restart local v0    # "error":Lcom/facebook/ads/redexgen/X/JA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70883
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    .line 70884
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x9b

    const/16 v1, 0x13

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 70885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v0, :cond_3

    .line 70886
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70887
    :cond_3
    return v7

    .line 70888
    .end local v0    # "error":Lcom/facebook/ads/redexgen/X/JA;
    :cond_4
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Za;->A00:Lcom/facebook/ads/redexgen/X/0n;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Za;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    .line 70889
    sget-object v2, Lcom/facebook/ads/redexgen/X/Za;->A0E:[Ljava/lang/String;

    const-string v1, "MKxF4EMWgzzLH5X7HNcHVA2i4zdAiZz9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4tfdEW2uI31voJBW941pIR5b1aNGKiQe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/88;->A04()Lorg/json/JSONObject;

    move-result-object v3

    .line 70890
    .local v0, "dataObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_8

    .line 70891
    const/16 v2, 0x140

    const/16 v1, 0xa

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70892
    .local v5, "requestId":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->AF7(Ljava/lang/String;)V

    .line 70893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7N;->A0C(Ljava/lang/String;)V

    .line 70894
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7M;->A00()Lcom/facebook/ads/redexgen/X/Xb;

    move-result-object v0

    .line 70895
    .local v6, "sdkContext":Lcom/facebook/ads/redexgen/X/Xb;
    if-eqz v0, :cond_5

    .line 70896
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7N;->A0C(Ljava/lang/String;)V

    .line 70897
    :cond_5
    const/16 v2, 0x106

    const/16 v1, 0x11

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0A(Lorg/json/JSONObject;)V

    .line 70898
    .end local v5    # "requestId":Ljava/lang/String;
    .end local v6    # "sdkContext":Lcom/facebook/ads/redexgen/X/Xb;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A05:Lcom/facebook/ads/redexgen/X/Ja;

    if-nez v0, :cond_7

    .line 70899
    const/16 v2, 0xf2

    const/16 v1, 0x14

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v3

    .line 70900
    .local v5, "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v2

    .line 70901
    .local v6, "error":Lcom/facebook/ads/redexgen/X/JA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 70902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v0, :cond_6

    .line 70903
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70904
    :cond_6
    return v7

    .line 70905
    .end local v5    # "errorMessage":Ljava/lang/String;
    .end local v6    # "error":Lcom/facebook/ads/redexgen/X/JA;
    :cond_7
    const/4 v0, 0x1

    return v0

    .line 70906
    :cond_8
    const/16 v2, 0xd4

    const/16 v1, 0x12

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v3

    .line 70907
    .restart local v5    # "errorMessage":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v2

    .line 70908
    .restart local v6    # "error":Lcom/facebook/ads/redexgen/X/JA;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 70909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v0, :cond_9

    .line 70910
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70911
    :cond_9
    return v7

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0D()J
    .locals 2

    .line 70912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A04:Lcom/facebook/ads/redexgen/X/8A;

    if-eqz v0, :cond_0

    .line 70913
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8A;->A03()J

    move-result-wide v0

    return-wide v0

    .line 70914
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0E()Landroid/os/Handler;
    .locals 1

    .line 70915
    sget-object v0, Lcom/facebook/ads/redexgen/X/Za;->A0F:Landroid/os/Handler;

    return-object v0
.end method

.method public A0F()Lcom/facebook/ads/redexgen/X/1B;
    .locals 1

    .line 70916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A01:Lcom/facebook/ads/redexgen/X/0n;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zw;->A0H()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/8B;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 70917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A04:Lcom/facebook/ads/redexgen/X/8A;

    if-nez v0, :cond_0

    .line 70918
    const/4 v0, 0x0

    return-object v0

    .line 70919
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8A;->A05()Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .locals 6

    .line 70920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2f(J)V

    .line 70921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A01:Lcom/facebook/ads/redexgen/X/0n;

    if-nez v0, :cond_0

    .line 70922
    return-void

    .line 70923
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A6B()Ljava/lang/String;

    move-result-object v5

    .line 70924
    .local v0, "clientToken":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 70925
    return-void

    .line 70926
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 70927
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A04(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x134

    const/16 v1, 0xc

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 70929
    .local v2, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ii;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ih;->A08:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 70930
    return-void
.end method

.method public final A0I()V
    .locals 5

    .line 70931
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Za;->A01:Lcom/facebook/ads/redexgen/X/0n;

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1

    .line 70932
    const/16 v2, 0x6b

    const/16 v1, 0x1a

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v3

    .line 70933
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70934
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7s;->A0Q:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 70935
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70936
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70937
    .local v1, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 70938
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v1, :cond_0

    .line 70939
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70940
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4f()V

    .line 70941
    return-void

    .line 70942
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0C:Z

    if-eqz v0, :cond_3

    .line 70943
    const/16 v2, 0xae

    const/16 v1, 0x12

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v3

    .line 70944
    .restart local v0    # "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70945
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7s;->A0M:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 70946
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70947
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70948
    .restart local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    .line 70949
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    if-eqz v1, :cond_2

    .line 70950
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70951
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4e()V

    .line 70952
    return-void

    .line 70953
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A01:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A6B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 70954
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Za;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A01:Lcom/facebook/ads/redexgen/X/0n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0n;->A6B()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A9W(Ljava/lang/String;)V

    .line 70955
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4g()V

    .line 70956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0C:Z

    .line 70957
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Za;->A0L()V

    .line 70958
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 70959
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0T(Z)V

    .line 70960
    return-void
.end method

.method public final A0K()V
    .locals 2

    .line 70961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A02:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(Lcom/facebook/ads/redexgen/X/7N;)Lcom/facebook/ads/redexgen/X/0u;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A0N(Ljava/lang/String;)V

    .line 70963
    :cond_0
    return-void
.end method

.method public abstract A0L()V
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/0n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70964
    if-eqz p1, :cond_0

    .line 70965
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/0n;->onDestroy()V

    .line 70966
    :cond_0
    return-void
.end method

.method public abstract A0N(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8A;Lcom/facebook/ads/redexgen/X/88;Lcom/facebook/ads/redexgen/X/1q;)V
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/0o;)V
    .locals 0

    .line 70967
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Za;->A06:Lcom/facebook/ads/redexgen/X/0o;

    .line 70968
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/1q;)V
    .locals 4

    .line 70969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4Z()V

    .line 70970
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1q;->A03()Lorg/json/JSONObject;

    move-result-object v3

    .line 70971
    .local v0, "dataObject":Lorg/json/JSONObject;
    const/16 v2, 0xd2

    const/4 v1, 0x2

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70972
    .local v1, "clientToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A08:Lcom/facebook/ads/redexgen/X/Ia;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 70974
    .local v2, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ii;
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ih;->A04:Lcom/facebook/ads/redexgen/X/Ih;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(Lcom/facebook/ads/redexgen/X/Ih;Ljava/util/Map;)V

    .line 70975
    .end local v2    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ii;
    :cond_0
    return-void
.end method

.method public A0Q(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70976
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 70977
    return-void
.end method

.method public final A0R(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70978
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Za;->A0Q(Ljava/lang/String;)V

    .line 70979
    return-void
.end method

.method public final A0S(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/AdExperienceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70980
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Za;->A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 70981
    return-void
.end method

.method public A0T(Z)V
    .locals 1

    .line 70982
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0C:Z

    if-nez v0, :cond_0

    .line 70983
    return-void

    .line 70984
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4h()V

    .line 70985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A01:Lcom/facebook/ads/redexgen/X/0n;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Za;->A0M(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 70986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0C:Z

    .line 70987
    return-void
.end method

.method public final A0U()Z
    .locals 1

    .line 70988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A04:Lcom/facebook/ads/redexgen/X/8A;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8A;->A0C()Z

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

.method public final declared-synchronized AAv(Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 2

    monitor-enter p0

    .line 70989
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Za;->A0E()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zb;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Zb;-><init>(Lcom/facebook/ads/redexgen/X/Za;Lcom/facebook/ads/redexgen/X/JA;)V

    .line 70990
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70991
    monitor-exit p0

    return-void

    .line 70992
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Za;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/JA;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ACh(Lcom/facebook/ads/redexgen/X/Tc;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    monitor-enter p0

    .line 70993
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Za;->A08(Lcom/facebook/ads/redexgen/X/Tc;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70994
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/Tc;
    :catch_0
    move-exception v4

    .line 70995
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Za;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70996
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v3

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Za;->A06(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7s;->A0T:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/Throwable;)V

    .line 70997
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70998
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 70999
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Za;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Tc;
    :catchall_0
    move-exception v0

    .end local p1
    monitor-exit p0

    throw v0
.end method
