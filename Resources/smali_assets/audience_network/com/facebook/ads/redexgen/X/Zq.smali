.class public final Lcom/facebook/ads/redexgen/X/Zq;
.super Lcom/facebook/ads/redexgen/X/1B;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A06:[B = null

.field public static A07:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = 0x340f3fb54e093febL


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Eu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 71136
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Y1a5U13ty71QFnyeZB3YxisAAvg7l3fM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "roZ2Db2w31DgWTY1oGehTdyGNewX8eXS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "I2NTYMYLYsNyCs0logd6ULXXnbjyHCad"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3brQnbpmNBxYuH5lF741sBi9dGi0pOZr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3fAMLw4w5Yud0wL2utfDbR4mKZlWQuB2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wSrWvvXZ9ekOd4qM7VWdouqMZx6NVgDc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "r9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zq;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zq;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Eu;",
            ">;)V"
        }
    .end annotation

    .line 71137
    .local p1, "rewardedVideoAdDataBundleList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/RewardedVideoAdDataBundle;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1B;-><init>()V

    .line 71138
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A05:Ljava/util/List;

    .line 71139
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A04:Ljava/lang/String;

    .line 71140
    return-void
.end method

.method public static A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/Zq;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71141
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 71142
    .local v0, "ads":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 71143
    .local v1, "rewardedVideoAdDataBundleList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/RewardedVideoAdDataBundle;>;"
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 71144
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Eu;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;)Lcom/facebook/ads/redexgen/X/Eu;

    move-result-object v0

    .line 71145
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71147
    .end local v2    # "i":I
    :cond_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/Zq;

    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/Zq;-><init>(Ljava/util/List;)V

    .line 71148
    .local v2, "chainedAdDataBundle":Lcom/facebook/ads/redexgen/X/Zq;
    const/4 v2, 0x3

    const/16 v1, 0xc

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 71149
    .local v3, "chainingParams":Lorg/json/JSONObject;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v2, 0xf

    const/16 v1, 0x11

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Zq;->A01:I

    .line 71150
    const/4 v3, 0x0

    const/16 v2, 0x20

    const/16 v1, 0x18

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Zq;->A03:I

    .line 71151
    const/16 v2, 0x4b

    const/16 v1, 0x18

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Zq;->A02:I

    .line 71152
    const/4 v3, 0x2

    .line 71153
    const/16 v2, 0x38

    const/16 v1, 0x13

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Zq;->A00:I

    .line 71154
    invoke-virtual {v4, p0}, Lcom/facebook/ads/redexgen/X/1B;->A0U(Lorg/json/JSONObject;)V

    .line 71155
    return-object v4
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zq;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zq;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zq;->A07:[Ljava/lang/String;

    const-string v1, "ksKrUe0otL7CQDvNz8iG7T5OcxZuVq1Y"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "xaZ8PqWmutKQFInRkVw3BesrM2XhV7TN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6b

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x63

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zq;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x11t
        -0xet
        0x1t
        -0x7t
        -0x2t
        -0x9t
        -0x1t
        0x4t
        -0xbt
        0x6t
        -0x9t
        0x8t
        -0x9t
        0x3t
        0x9t
        0x46t
        0x4bt
        0x44t
        0x4ct
        0x51t
        0x48t
        0x47t
        0x42t
        0x44t
        0x47t
        0x56t
        0x42t
        0x46t
        0x52t
        0x58t
        0x51t
        0x57t
        0x4ct
        0x51t
        0x4at
        0x52t
        0x57t
        0x4et
        0x4dt
        0x48t
        0x4at
        0x4dt
        0x5ct
        0x48t
        0x56t
        0x4at
        0x61t
        0x48t
        0x4dt
        0x5et
        0x5bt
        0x4at
        0x5dt
        0x52t
        0x58t
        0x57t
        0x4at
        0x4ft
        0x48t
        0x50t
        0x55t
        0x4ct
        0x4bt
        0x46t
        0x48t
        0x4bt
        0x5at
        0x46t
        0x5dt
        0x48t
        0x59t
        0x50t
        0x4ct
        0x55t
        0x5bt
        -0x26t
        -0x1dt
        -0x27t
        -0x2ct
        -0x28t
        -0x2at
        -0x19t
        -0x27t
        -0x2ct
        -0x2at
        -0x16t
        -0x17t
        -0x1ct
        -0x2ct
        -0x28t
        -0x1ft
        -0x1ct
        -0x18t
        -0x26t
        -0x2ct
        -0x17t
        -0x22t
        -0x1et
        -0x26t
    .end array-data
.end method


# virtual methods
.method public final A0C()I
    .locals 1

    .line 71156
    const/4 v0, 0x2

    return v0
.end method

.method public final A0D()I
    .locals 2

    .line 71157
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A02:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0b()I
    .locals 1

    .line 71158
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:I

    return v0
.end method

.method public final A0c()I
    .locals 1

    .line 71159
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A01:I

    return v0
.end method

.method public final A0d()I
    .locals 1

    .line 71160
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A02:I

    return v0
.end method

.method public final A0e(I)Lcom/facebook/ads/redexgen/X/Eu;
    .locals 1

    .line 71161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A05:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Eu;

    return-object v0
.end method

.method public final A0f()Ljava/lang/String;
    .locals 1

    .line 71162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A04:Ljava/lang/String;

    return-object v0
.end method

.method public final A0g(I)V
    .locals 1

    .line 71163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A05:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 71164
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A01:I

    .line 71165
    return-void
.end method

.method public final A0h()Z
    .locals 1

    .line 71166
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
