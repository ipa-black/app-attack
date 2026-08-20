.class public final Lcom/facebook/ads/redexgen/X/Je;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/Je;

.field public static A01:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 40653
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Je;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Je;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Je;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/Je;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized A00()Lcom/facebook/ads/redexgen/X/Je;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/Je;

    monitor-enter v1

    .line 40655
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Je;->A00:Lcom/facebook/ads/redexgen/X/Je;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Xc;Lorg/json/JSONObject;J)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40656
    const/16 v2, 0x88

    const/16 v1, 0xa

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 40657
    .local v1, "placements":Lorg/json/JSONArray;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 40658
    .local v2, "placement":Lorg/json/JSONObject;
    const/16 v2, 0x64

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40659
    .local v3, "definition":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8B;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v5

    .line 40660
    .local v4, "placementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    const/16 v2, 0x73

    const/16 v1, 0xe

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40661
    .local v5, "featureConfig":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40662
    .local v6, "adReportingConfig":Ljava/lang/String;
    new-instance v3, Lcom/facebook/ads/redexgen/X/8A;

    invoke-direct {v3, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/8A;-><init>(Lcom/facebook/ads/redexgen/X/8B;Ljava/lang/String;Ljava/lang/String;)V

    .line 40663
    .local v7, "adPlacement":Lcom/facebook/ads/redexgen/X/8A;
    const/16 v2, 0x1a

    const/4 v1, 0x3

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40664
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 40665
    .local v8, "ads":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 40666
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 40667
    .local v10, "ad":Lorg/json/JSONObject;
    const/4 v0, 0x0

    invoke-static {p1, v10, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/Ik;->A06(Lcom/facebook/ads/redexgen/X/Xc;Lorg/json/JSONObject;JLjava/lang/String;)V

    .line 40668
    const/16 v2, 0x13

    const/4 v1, 0x7

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 40669
    .local p0, "adapter":Ljava/lang/String;
    const/16 v2, 0x55

    const/16 v1, 0xf

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40670
    .local p4, "dataModelType":Ljava/lang/String;
    .end local v1    # "placements":Lorg/json/JSONArray;
    .local p5, "placements":Lorg/json/JSONArray;
    const/16 v2, 0x3f

    const/4 v1, 0x4

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 40671
    .local v1, "data":Lorg/json/JSONObject;
    .end local v3    # "definition":Lorg/json/JSONObject;
    .local p6, "definition":Lorg/json/JSONObject;
    const/16 v2, 0x92

    const/16 v1, 0x8

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 40672
    .local v3, "trackers":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 40673
    .end local v4    # "placementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    .local p7, "placementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    new-instance v0, Lcom/facebook/ads/redexgen/X/88;

    invoke-direct {v0, v9, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/88;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    .line 40674
    .local v4, "adCandidate":Lcom/facebook/ads/redexgen/X/88;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8A;->A0A(Lcom/facebook/ads/redexgen/X/88;)V

    .line 40675
    .end local v4    # "adCandidate":Lcom/facebook/ads/redexgen/X/88;
    .end local v10    # "ad":Lorg/json/JSONObject;
    .end local p0    # "adapter":Ljava/lang/String;
    .end local p4    # "dataModelType":Ljava/lang/String;
    .end local p8
    .end local p9
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 40676
    .end local p7
    .local v4, "placementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    .end local v4    # "placementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    .restart local p7
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v5

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 40677
    .end local v1    # "data":Lorg/json/JSONObject;
    .local p9, "data":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v4

    .end local v3    # "trackers":Lorg/json/JSONArray;
    .local p8, "trackers":Lorg/json/JSONArray;
    const/16 v2, 0x43

    const/16 v1, 0x12

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4c(ILjava/lang/String;)V

    goto :goto_1

    .line 40678
    .end local v1
    .end local v3
    .end local v4
    .restart local p5
    .restart local p6
    .restart local p7
    :cond_1
    const/16 v2, 0x2f

    const/16 v1, 0xc

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40679
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40680
    .local v1, "chainedAdsParameters":Lorg/json/JSONObject;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/8A;->A0B(Lorg/json/JSONObject;)V

    .line 40681
    .end local v1    # "chainedAdsParameters":Lorg/json/JSONObject;
    :cond_2
    const/16 v2, 0x1d

    const/16 v1, 0x12

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40682
    .local v1, "anValidationUuid":Ljava/lang/String;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tc;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Tc;-><init>(Lcom/facebook/ads/redexgen/X/8A;Ljava/lang/String;)V

    return-object v0
.end method

.method private A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Tb;
    .locals 4

    .line 40683
    const/16 v2, 0x81

    const/4 v1, 0x7

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3b

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tb;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Tb;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8A;)V

    .line 40684
    return-object v0
.end method

.method private A03(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Tb;
    .locals 8

    .line 40685
    :try_start_0
    const/16 v2, 0x88

    const/16 v1, 0xa

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 40686
    .local v0, "placements":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 40687
    .local v2, "placement":Lorg/json/JSONObject;
    const/16 v2, 0x64

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40688
    .local v3, "definition":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8B;->A00(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/8B;

    move-result-object v6

    .line 40689
    .local v4, "placementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    const/16 v2, 0x73

    const/16 v1, 0xe

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40690
    .local v5, "featureConfig":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40691
    .local v6, "adReportingConfig":Ljava/lang/String;
    const/16 v2, 0x81

    const/4 v1, 0x7

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 40692
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3b

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    .line 40693
    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/8A;

    invoke-direct {v1, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/8A;-><init>(Lcom/facebook/ads/redexgen/X/8B;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tb;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Tb;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8A;)V

    .line 40694
    return-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40695
    .end local v0    # "placements":Lorg/json/JSONArray;
    .end local v2    # "placement":Lorg/json/JSONObject;
    .end local v3    # "definition":Lorg/json/JSONObject;
    .end local v4    # "placementDefinition":Lcom/facebook/ads/redexgen/X/8B;
    .end local v5    # "featureConfig":Ljava/lang/String;
    .end local v6    # "adReportingConfig":Ljava/lang/String;
    .local v0, "e":Lorg/json/JSONException;
    :catch_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Je;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Tb;

    move-result-object v0

    return-object v0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Je;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x77

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x9e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Je;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x74t
        0x71t
        0x4at
        0x67t
        0x70t
        0x65t
        0x7at
        0x67t
        0x61t
        0x7ct
        0x7bt
        0x72t
        0x4at
        0x76t
        0x7at
        0x7bt
        0x73t
        0x7ct
        0x72t
        0x31t
        0x34t
        0x31t
        0x20t
        0x24t
        0x35t
        0x22t
        0x2ft
        0x2at
        0x3dt
        0x17t
        0x18t
        0x29t
        0x0t
        0x17t
        0x1at
        0x1ft
        0x12t
        0x17t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x29t
        0x3t
        0x3t
        0x1ft
        0x12t
        0x60t
        0x6bt
        0x62t
        0x6at
        0x6dt
        0x5ct
        0x73t
        0x62t
        0x71t
        0x62t
        0x6et
        0x70t
        0x17t
        0x1bt
        0x10t
        0x11t
        0x67t
        0x62t
        0x77t
        0x62t
        0x41t
        0x44t
        0x51t
        0x44t
        0x6at
        0x47t
        0x4ft
        0x40t
        0x46t
        0x51t
        0x5t
        0x4ct
        0x56t
        0x5t
        0x4bt
        0x50t
        0x49t
        0x49t
        0x2ct
        0x29t
        0x3ct
        0x29t
        0x17t
        0x25t
        0x27t
        0x2ct
        0x2dt
        0x24t
        0x17t
        0x3ct
        0x31t
        0x38t
        0x2dt
        0x44t
        0x45t
        0x46t
        0x49t
        0x4et
        0x49t
        0x54t
        0x49t
        0x4ft
        0x4et
        0x54t
        0x43t
        0x43t
        0x5et
        0x43t
        0x49t
        0x4at
        0x4et
        0x5bt
        0x5at
        0x5dt
        0x4at
        0x70t
        0x4ct
        0x40t
        0x41t
        0x49t
        0x46t
        0x48t
        0x8t
        0x0t
        0x16t
        0x16t
        0x4t
        0x2t
        0x0t
        0x12t
        0xet
        0x3t
        0x1t
        0x7t
        0xft
        0x7t
        0xct
        0x16t
        0x11t
        0x4dt
        0x4bt
        0x58t
        0x5at
        0x52t
        0x5ct
        0x4bt
        0x4at
        0x59t
        0x54t
        0x5dt
        0x48t
    .end array-data
.end method


# virtual methods
.method public final A06(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Jg;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40696
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 40697
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40698
    .local v0, "jsonResponse":Lorg/json/JSONObject;
    const/16 v2, 0x9a

    const/4 v1, 0x4

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40699
    .local v1, "type":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v8, 0x178b0

    const/16 v2, 0x6e

    const/4 v1, 0x5

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    if-eq v9, v8, :cond_2

    const v0, 0x5c4d208

    if-eq v9, v0, :cond_1

    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    if-eq v6, v3, :cond_3

    .line 40700
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40701
    .local v2, "error":Lorg/json/JSONObject;
    if-eqz v0, :cond_5

    .line 40702
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Je;->A02(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Tb;

    move-result-object v0

    return-object v0

    .line 40703
    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x1a

    const/4 v1, 0x3

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Je;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    .line 40704
    .end local v2    # "error":Lorg/json/JSONObject;
    :cond_3
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Je;->A03(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/Tb;

    move-result-object v0

    return-object v0

    .line 40705
    :cond_4
    invoke-direct {p0, p1, v5, p3, p4}, Lcom/facebook/ads/redexgen/X/Je;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lorg/json/JSONObject;J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    return-object v0

    .line 40706
    .end local v0    # "jsonResponse":Lorg/json/JSONObject;
    .end local v1    # "type":Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jf;->A04:Lcom/facebook/ads/redexgen/X/Jf;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jg;-><init>(Lcom/facebook/ads/redexgen/X/Jf;)V

    return-object v0
.end method
