.class public abstract Lcom/facebook/ads/redexgen/X/Zs;
.super Lcom/facebook/ads/redexgen/X/1B;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A0D:Lorg/json/JSONObject; = null

.field public static A0E:[B = null

.field public static A0F:[Ljava/lang/String; = null

.field public static final serialVersionUID:J = -0x4a480b6eb5993653L


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:Lcom/facebook/ads/redexgen/X/18;

.field public A06:Lcom/facebook/ads/redexgen/X/1S;

.field public A07:Lcom/facebook/ads/redexgen/X/1V;

.field public A08:Lcom/facebook/ads/redexgen/X/1b;

.field public A09:Ljava/lang/String;

.field public A0A:Z

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1C;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 71170
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1gqRR9im7tmNjhPy8NnQpjCX4rd8Ielc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZkOx7RNEMabKvQ7fgN15WIbWDw11JZFu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ifeh8sROmLFDdOYqa0sy0eFfj5RHH1gU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "fnDzwAhU6GMUs0cCq2fTQuWEzv5lBJki"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OVtNfYqIZ80xqW4zrHdkYxbTKYgYXHc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "chIpxbYwiAOd1RIHlv8aEwW7ihQHRwI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GnSiEcQE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uApEYGhuY9oy1RN675k2bDQ9FUD4oA7y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zs;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zs;->A08()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1C;",
            ">;)V"
        }
    .end annotation

    .line 71171
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1B;-><init>()V

    .line 71172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0A:Z

    .line 71173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0C:Ljava/util/Map;

    .line 71174
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0B:Ljava/util/List;

    .line 71175
    return-void
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zs;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71176
    const/16 v2, 0xaf

    const/16 v1, 0x12

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 71177
    .local v0, "dsl_app_urls":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71178
    .local v1, "urlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_0

    .line 71179
    return-object v3

    .line 71180
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 71181
    .local v2, "nameItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71182
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71183
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71184
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public static A07(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1O;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/facebook/ads/redexgen/X/Xc;",
            "Lcom/facebook/ads/redexgen/X/1O;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1C;",
            ">;"
        }
    .end annotation

    .line 71185
    const/16 v2, 0x65

    const/16 v1, 0x8

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 71186
    .local v0, "carouselData":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 71187
    invoke-static {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1K;->A01(Lorg/json/JSONArray;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/1O;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 71188
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71189
    .local v1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/1C;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    .line 71190
    .local v2, "adInfo":Lcom/facebook/ads/redexgen/X/1C;
    invoke-interface {p2, v0, p0}, Lcom/facebook/ads/redexgen/X/1O;->A3C(Lcom/facebook/ads/redexgen/X/1C;Lorg/json/JSONObject;)V

    .line 71191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71192
    return-object v1
.end method

.method public static A08()V
    .locals 4

    const/16 v3, 0xfe

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zs;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zs;->A0F:[Ljava/lang/String;

    const-string v1, "bfB1pGz3pHLReaUGKuLSmGsyYLYBAtW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zs;->A0E:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x28t
        0x2dt
        0x16t
        0x2at
        0x21t
        0x26t
        0x20t
        0x2at
        0x2ct
        0x3at
        0x16t
        0x25t
        0x20t
        0x27t
        0x22t
        0x16t
        0x3ct
        0x3bt
        0x25t
        0x76t
        0x79t
        0x48t
        0x7bt
        0x78t
        0x70t
        0x78t
        0x48t
        0x63t
        0x6et
        0x67t
        0x72t
        0x51t
        0x45t
        0x44t
        0x5ft
        0x53t
        0x5ct
        0x59t
        0x53t
        0x5bt
        0x6ft
        0x53t
        0x5ft
        0x45t
        0x5et
        0x44t
        0x54t
        0x5ft
        0x47t
        0x5et
        0x6ft
        0x44t
        0x59t
        0x5dt
        0x55t
        0x59t
        0x4dt
        0x4ct
        0x57t
        0x5bt
        0x54t
        0x51t
        0x5bt
        0x53t
        0x67t
        0x5bt
        0x4ct
        0x59t
        0x67t
        0x4ct
        0x51t
        0x55t
        0x5dt
        0x25t
        0x31t
        0x30t
        0x2bt
        0x27t
        0x28t
        0x2dt
        0x27t
        0x2ft
        0x1bt
        0x22t
        0x28t
        0x25t
        0x32t
        0x2bt
        0x36t
        0x0t
        0x2t
        0x0t
        0xbt
        0x6t
        0x3ct
        0x2t
        0x10t
        0x10t
        0x6t
        0x17t
        0x10t
        0x22t
        0x20t
        0x33t
        0x2et
        0x34t
        0x32t
        0x24t
        0x2dt
        0x9t
        0x2t
        0xbt
        0x3t
        0x4t
        0x35t
        0xbt
        0xet
        0x19t
        0x35t
        0xct
        0x18t
        0xft
        0x1bt
        0x1ft
        0xft
        0x4t
        0x9t
        0x13t
        0x66t
        0x6at
        0x68t
        0x2bt
        0x63t
        0x64t
        0x66t
        0x60t
        0x67t
        0x6at
        0x6at
        0x6et
        0x2bt
        0x64t
        0x61t
        0x76t
        0x2bt
        0x6ct
        0x6bt
        0x71t
        0x60t
        0x77t
        0x76t
        0x71t
        0x6ct
        0x71t
        0x6ct
        0x64t
        0x69t
        0x2bt
        0x63t
        0x6ct
        0x6bt
        0x6ct
        0x76t
        0x6dt
        0x5at
        0x64t
        0x66t
        0x71t
        0x6ct
        0x73t
        0x6ct
        0x71t
        0x7ct
        0x51t
        0x46t
        0x23t
        0x34t
        0x2bt
        0x18t
        0x26t
        0x37t
        0x37t
        0x18t
        0x25t
        0x28t
        0x32t
        0x29t
        0x23t
        0x18t
        0x32t
        0x35t
        0x2bt
        0x34t
        0x5dt
        0x57t
        0x5bt
        0x5at
        0xat
        0xdt
        0x17t
        0x6t
        0x11t
        0x10t
        0x17t
        0xat
        0x17t
        0xat
        0x2t
        0xft
        0x28t
        0x25t
        0x2at
        0x20t
        0x37t
        0x27t
        0x25t
        0x34t
        0x21t
        0x5et
        0x53t
        0x4bt
        0x5dt
        0x47t
        0x46t
        0x52t
        0x4dt
        0x50t
        0x56t
        0x50t
        0x43t
        0x4bt
        0x56t
        0x57t
        0x40t
        0x52t
        0x44t
        0x57t
        0x41t
        0x40t
        0x41t
        0x7at
        0x53t
        0x4ct
        0x41t
        0x40t
        0x4at
        0x68t
        0x75t
        0x68t
        0x70t
        0x79t
        0x35t
        0x32t
        0x2ct
    .end array-data
.end method

.method private A09(I)V
    .locals 0

    .line 71193
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:I

    .line 71194
    return-void
.end method

.method private final A0A(I)V
    .locals 0

    .line 71195
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A04:I

    .line 71196
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/18;)V
    .locals 0

    .line 71197
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A05:Lcom/facebook/ads/redexgen/X/18;

    .line 71198
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/1S;)V
    .locals 0

    .line 71199
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A06:Lcom/facebook/ads/redexgen/X/1S;

    .line 71200
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/1V;)V
    .locals 0

    .line 71201
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A07:Lcom/facebook/ads/redexgen/X/1V;

    .line 71202
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/1b;)V
    .locals 0

    .line 71203
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A08:Lcom/facebook/ads/redexgen/X/1b;

    .line 71204
    return-void
.end method

.method private A0F(Ljava/lang/String;)V
    .locals 0

    .line 71205
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A09:Ljava/lang/String;

    .line 71206
    return-void
.end method


# virtual methods
.method public final A0b()I
    .locals 1

    .line 71207
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A00:I

    return v0
.end method

.method public final A0c()I
    .locals 1

    .line 71208
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A01:I

    return v0
.end method

.method public final A0d()I
    .locals 1

    .line 71209
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A02:I

    return v0
.end method

.method public final A0e()I
    .locals 1

    .line 71210
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A03:I

    return v0
.end method

.method public final A0f()I
    .locals 1

    .line 71211
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A04:I

    return v0
.end method

.method public final A0g()Lcom/facebook/ads/redexgen/X/18;
    .locals 1

    .line 71212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A05:Lcom/facebook/ads/redexgen/X/18;

    return-object v0
.end method

.method public final A0h()Lcom/facebook/ads/redexgen/X/1C;
    .locals 2

    .line 71213
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0B:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1C;

    return-object v0
.end method

.method public final A0i(I)Lcom/facebook/ads/redexgen/X/1C;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71214
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 71215
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 71216
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1C;

    return-object v0
.end method

.method public final A0j()Lcom/facebook/ads/redexgen/X/1S;
    .locals 1

    .line 71217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A06:Lcom/facebook/ads/redexgen/X/1S;

    return-object v0
.end method

.method public final A0k()Lcom/facebook/ads/redexgen/X/1V;
    .locals 1

    .line 71218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A07:Lcom/facebook/ads/redexgen/X/1V;

    return-object v0
.end method

.method public final A0l()Lcom/facebook/ads/redexgen/X/1b;
    .locals 1

    .line 71219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A08:Lcom/facebook/ads/redexgen/X/1b;

    return-object v0
.end method

.method public final A0m()Ljava/lang/String;
    .locals 1

    .line 71220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1C;",
            ">;"
        }
    .end annotation

    .line 71222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0B:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A0p(Lcom/facebook/ads/redexgen/X/Lj;)V
    .locals 8

    .line 71223
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1B;->A0K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v0, -0x514cfef6

    const/4 v3, 0x1

    if-eq v1, v0, :cond_4

    const v0, 0x240b672c

    if-eq v1, v0, :cond_3

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_2

    .line 71224
    :goto_1
    return-void

    .line 71225
    :cond_1
    const/16 v2, 0x80

    const/16 v1, 0x2d

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    .line 71226
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/PN;->A08:Lcom/facebook/ads/redexgen/X/PN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PN;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A3t(Ljava/lang/String;)V

    goto :goto_1

    .line 71227
    :cond_3
    const/16 v7, 0xc5

    const/16 v6, 0xc

    const/16 v5, 0x5f

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zs;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zs;->A0F:[Ljava/lang/String;

    const-string v1, "ynfghRupyY8lJ5WDqUPqAC0JO3E4ojqs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "OEwRxUcpVPGJQFz3LRrAkRkf0LWdVsmf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/16 v2, 0xe8

    const/16 v1, 0xe

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0q(Lorg/json/JSONObject;)V
    .locals 6

    .line 71228
    const/16 v2, 0x59

    const/16 v1, 0xc

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zs;->A0D:Lorg/json/JSONObject;

    .line 71229
    new-instance v3, Lcom/facebook/ads/redexgen/X/1U;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/1U;-><init>()V

    .line 71230
    const/16 v2, 0xf6

    const/4 v1, 0x5

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1U;->A06(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v4

    .line 71231
    const/16 v2, 0xc1

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71232
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v2, 0xfb

    const/4 v1, 0x3

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71233
    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1U;->A05(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v3

    .line 71234
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/1U;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v1

    .line 71235
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1W;->A03(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1U;->A07(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    .line 71236
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A08()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v0

    .line 71237
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0D(Lcom/facebook/ads/redexgen/X/1V;)V

    .line 71238
    const/16 v2, 0xda

    const/4 v1, 0x6

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 71239
    .local v0, "layoutObject":Lorg/json/JSONObject;
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/16 v2, 0xe0

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zs;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71240
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zs;->A0F:[Ljava/lang/String;

    const-string v1, "L9OC0yGJthGch16tOTqUcqcE9MnsMaz6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "n6CgIEssquLp46jPM2UWfBhL1rINMjIc"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    .line 71241
    :cond_2
    move-object v0, v5

    .line 71242
    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1L;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v3

    .line 71243
    if-eqz v4, :cond_3

    const/16 v2, 0xd1

    const/16 v1, 0x9

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 71244
    :cond_3
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/1L;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/18;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/18;-><init>(Lcom/facebook/ads/redexgen/X/1L;Lcom/facebook/ads/redexgen/X/1L;)V

    .line 71245
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0B(Lcom/facebook/ads/redexgen/X/18;)V

    .line 71246
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1W;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0E(Lcom/facebook/ads/redexgen/X/1b;)V

    .line 71247
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1W;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0C(Lcom/facebook/ads/redexgen/X/1S;)V

    .line 71248
    const/4 v4, 0x0

    const/16 v2, 0x13

    const/16 v1, 0xc

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A09(I)V

    .line 71249
    const/4 v3, -0x1

    const/16 v2, 0x6d

    const/16 v1, 0x13

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0A(I)V

    .line 71250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0C:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Zs;->A06(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71251
    const/16 v2, 0x37

    const/16 v1, 0x12

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A03:I

    .line 71252
    const/4 v3, 0x1

    const/16 v2, 0x49

    const/16 v1, 0x10

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A01:I

    .line 71253
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Zs;->A03:I

    .line 71254
    const/16 v2, 0x1f

    const/16 v1, 0x18

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A02:I

    .line 71255
    const/16 v2, 0xad

    const/4 v1, 0x2

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0F(Ljava/lang/String;)V

    .line 71256
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/1B;->A0U(Lorg/json/JSONObject;)V

    .line 71257
    return-void
.end method

.method public final A0r(Z)V
    .locals 0

    .line 71258
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0A:Z

    .line 71259
    return-void
.end method

.method public final A0s()Z
    .locals 1

    .line 71260
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zs;->A0A:Z

    return v0
.end method
