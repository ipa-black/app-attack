.class public abstract Lcom/facebook/ads/redexgen/X/1B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/datamodels/AdDataBundle$RVExperienceType;
    }
.end annotation


# static fields
.field public static A0H:[B = null

.field public static final serialVersionUID:J = -0x73ea2f89abc53653L


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/RewardData;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public final A0G:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1B;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 3636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3637
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A08:Ljava/lang/String;

    .line 3638
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:I

    return-void
.end method

.method public static A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/1B;
    .locals 5

    .line 3639
    const/16 v2, 0x8

    const/16 v1, 0xc

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    .line 3640
    .local v0, "isChainedAds":Z
    const/4 v3, 0x0

    .line 3641
    .local v1, "isCarouselAd":Z
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3642
    .local v2, "carouselData":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3643
    const/4 v3, 0x1

    .line 3644
    :cond_0
    const/4 v1, 0x0

    .line 3645
    .local v3, "adDataBundle":Lcom/facebook/ads/redexgen/X/1B;
    if-eqz v4, :cond_1

    .line 3646
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Zq;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/Zq;

    move-result-object v1

    .line 3647
    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3648
    :catch_0
    move-exception v0

    .line 3649
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3650
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 3651
    const/4 v4, 0x0

    .line 3652
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Eu;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v1

    .line 3653
    :cond_2
    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/1B;->A09(Z)V

    .line 3654
    invoke-direct {v1, v3}, Lcom/facebook/ads/redexgen/X/1B;->A08(Z)V

    .line 3655
    return-object v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1B;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x38

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

    const/16 v0, 0xfe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1B;->A0H:[B

    return-void

    :array_0
    .array-data 1
        0x6ft
        0x6dt
        0x7et
        0x63t
        0x79t
        0x7ft
        0x69t
        0x60t
        0x2at
        0x21t
        0x28t
        0x20t
        0x27t
        0x16t
        0x39t
        0x28t
        0x3bt
        0x28t
        0x24t
        0x3at
        0x2bt
        0x27t
        0x25t
        0x66t
        0x2et
        0x29t
        0x2bt
        0x2dt
        0x2at
        0x27t
        0x27t
        0x23t
        0x66t
        0x29t
        0x2ct
        0x3bt
        0x66t
        0x21t
        0x26t
        0x3ct
        0x2dt
        0x3at
        0x3bt
        0x3ct
        0x21t
        0x3ct
        0x21t
        0x29t
        0x24t
        0x66t
        0x2bt
        0x24t
        0x21t
        0x2bt
        0x23t
        0x2dt
        0x2ct
        0x62t
        0x75t
        0x6at
        0x59t
        0x6et
        0x6ft
        0x62t
        0x63t
        0x59t
        0x68t
        0x67t
        0x70t
        0x6ft
        0x61t
        0x67t
        0x72t
        0x6ft
        0x69t
        0x68t
        0x59t
        0x63t
        0x68t
        0x67t
        0x64t
        0x6at
        0x63t
        0x62t
        0x2t
        0x15t
        0xat
        0x39t
        0xet
        0x15t
        0x39t
        0x3t
        0x8t
        0x7t
        0x4t
        0xat
        0x3t
        0x2t
        0x57t
        0x40t
        0x5ft
        0x6ct
        0x5bt
        0x4at
        0x51t
        0x41t
        0x5at
        0x57t
        0x6ct
        0x56t
        0x5dt
        0x52t
        0x51t
        0x5ft
        0x56t
        0x57t
        0x71t
        0x6ct
        0x7bt
        0x74t
        0x78t
        0x7ct
        0x76t
        0x4at
        0x66t
        0x71t
        0x7et
        0x4at
        0x79t
        0x74t
        0x6ct
        0x70t
        0x67t
        0x4at
        0x7dt
        0x61t
        0x78t
        0x79t
        0x4at
        0x60t
        0x67t
        0x79t
        0x57t
        0x5ct
        0x51t
        0x40t
        0x4bt
        0x42t
        0x46t
        0x57t
        0x56t
        0x6dt
        0x51t
        0x42t
        0x5ft
        0x5et
        0x59t
        0x43t
        0x52t
        0x45t
        0x44t
        0x43t
        0x5et
        0x43t
        0x5et
        0x56t
        0x5bt
        0xft
        0x0t
        0x15t
        0x8t
        0x17t
        0x4t
        0x61t
        0x76t
        0x62t
        0x66t
        0x76t
        0x60t
        0x67t
        0x4ct
        0x7at
        0x77t
        0x30t
        0x27t
        0x35t
        0x23t
        0x30t
        0x26t
        0x27t
        0x26t
        0x1dt
        0x34t
        0x2bt
        0x26t
        0x27t
        0x2dt
        0x51t
        0x4et
        0x42t
        0x50t
        0x46t
        0x45t
        0x4et
        0x4bt
        0x4et
        0x53t
        0x5et
        0x78t
        0x44t
        0x4ft
        0x42t
        0x44t
        0x4ct
        0x78t
        0x4et
        0x49t
        0x4et
        0x53t
        0x4et
        0x46t
        0x4bt
        0x78t
        0x43t
        0x42t
        0x4bt
        0x46t
        0x5et
        0x20t
        0x3ft
        0x33t
        0x21t
        0x37t
        0x34t
        0x3ft
        0x3at
        0x3ft
        0x22t
        0x2ft
        0x9t
        0x35t
        0x3et
        0x33t
        0x35t
        0x3dt
        0x9t
        0x3ft
        0x38t
        0x22t
        0x33t
        0x24t
        0x20t
        0x37t
        0x3at
    .end array-data
.end method

.method private A03(I)V
    .locals 0

    .line 3656
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A01:I

    .line 3657
    return-void
.end method

.method private A04(Ljava/lang/String;)V
    .locals 0

    .line 3658
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A04:Ljava/lang/String;

    .line 3659
    return-void
.end method

.method private A05(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3660
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A05:Ljava/lang/String;

    .line 3661
    return-void
.end method

.method private A06(Ljava/lang/String;)V
    .locals 0

    .line 3662
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A09:Ljava/lang/String;

    .line 3663
    return-void
.end method

.method private A07(Lorg/json/JSONObject;)V
    .locals 1

    .line 3664
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A08:Ljava/lang/String;

    .line 3665
    return-void
.end method

.method private final A08(Z)V
    .locals 0

    .line 3666
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0E:Z

    .line 3667
    return-void
.end method

.method private final A09(Z)V
    .locals 0

    .line 3668
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0F:Z

    .line 3669
    return-void
.end method


# virtual methods
.method public final A0A()I
    .locals 1

    .line 3670
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A01:I

    return v0
.end method

.method public final A0B()I
    .locals 1

    .line 3671
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0G:I

    return v0
.end method

.method public abstract A0C()I
.end method

.method public abstract A0D()I
.end method

.method public final A0E()J
    .locals 2

    .line 3672
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:J

    return-wide v0
.end method

.method public final A0F()Lcom/facebook/ads/RewardData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A03:Lcom/facebook/ads/RewardData;

    return-object v0
.end method

.method public final A0G()Ljava/lang/String;
    .locals 6

    .line 3674
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/1B;->A07:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v0, -0x514cfef6

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eq v1, v0, :cond_3

    const v0, -0x3ebdafe9

    if-eq v1, v0, :cond_2

    const v0, 0x240b672c

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v4, :cond_4

    .line 3675
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3676
    :cond_1
    const/16 v2, 0x9b

    const/16 v1, 0xc

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0xa7

    const/4 v1, 0x6

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v2, 0xb7

    const/16 v1, 0xe

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3677
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A03:Lcom/facebook/ads/redexgen/X/PM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3678
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/PN;->A04:Lcom/facebook/ads/redexgen/X/PN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PN;->A02()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3679
    :cond_6
    const/16 v2, 0x14

    const/16 v1, 0x25

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()Ljava/lang/String;
    .locals 1

    .line 3680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A04:Ljava/lang/String;

    return-object v0
.end method

.method public final A0I()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A05:Ljava/lang/String;

    return-object v0
.end method

.method public final A0J()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A0K()Ljava/lang/String;
    .locals 1

    .line 3683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A07:Ljava/lang/String;

    return-object v0
.end method

.method public final A0L()Ljava/lang/String;
    .locals 1

    .line 3684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0M()Ljava/lang/String;
    .locals 1

    .line 3685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0A:Ljava/lang/String;

    return-object v0
.end method

.method public final A0N()Lorg/json/JSONObject;
    .locals 2

    .line 3686
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A08:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3687
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final A0O(I)V
    .locals 0

    .line 3688
    iput p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:I

    .line 3689
    return-void
.end method

.method public final A0P(J)V
    .locals 0

    .line 3690
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:J

    .line 3691
    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 3692
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A03:Lcom/facebook/ads/RewardData;

    .line 3693
    return-void
.end method

.method public final A0R(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3694
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A06:Ljava/lang/String;

    .line 3695
    return-void
.end method

.method public final A0S(Ljava/lang/String;)V
    .locals 0

    .line 3696
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A07:Ljava/lang/String;

    .line 3697
    return-void
.end method

.method public final A0T(Ljava/lang/String;)V
    .locals 0

    .line 3698
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0A:Ljava/lang/String;

    .line 3699
    return-void
.end method

.method public final A0U(Lorg/json/JSONObject;)V
    .locals 4

    .line 3700
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xad

    const/16 v1, 0xa

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1B;->A06(Ljava/lang/String;)V

    .line 3701
    const/16 v2, 0x8e

    const/16 v1, 0xd

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1B;->A05(Ljava/lang/String;)V

    .line 3702
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1B;->A07(Lorg/json/JSONObject;)V

    .line 3703
    const/16 v2, 0xc5

    const/16 v1, 0x1f

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3704
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1B;->A03(I)V

    .line 3705
    const/16 v2, 0xe4

    const/16 v1, 0x1a

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3706
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/1B;->A0O(I)V

    .line 3707
    const/16 v2, 0x74

    const/16 v1, 0x1a

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(Ljava/lang/String;)V

    .line 3708
    const/16 v2, 0x54

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Z

    .line 3709
    const/16 v2, 0x62

    const/16 v1, 0x12

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Z

    .line 3710
    const/16 v2, 0x39

    const/16 v1, 0x1b

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0B:Z

    .line 3711
    return-void
.end method

.method public final A0V()Z
    .locals 1

    .line 3712
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Z

    return v0
.end method

.method public final A0W()Z
    .locals 1

    .line 3713
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Z

    return v0
.end method

.method public final A0X()Z
    .locals 1

    .line 3714
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0B:Z

    return v0
.end method

.method public final A0Y()Z
    .locals 1

    .line 3715
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0E:Z

    return v0
.end method

.method public final A0Z()Z
    .locals 1

    .line 3716
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0F:Z

    return v0
.end method

.method public final A0a()Z
    .locals 2

    .line 3717
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 3718
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1B;->A0H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3719
    :goto_0
    return v0

    .line 3720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
