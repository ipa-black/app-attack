.class public final Lcom/facebook/ads/redexgen/X/ZH;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZF;->A0D(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 70137
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7kSkrPID5YMo1WnvaMIgpKB6WIhQPZTc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kYnVnFR0h3Yv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4OZGrpocgzJPR2XOpe36kiptmUtlR1IY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AELVZqmE3v"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ezzX0t3o6v3ClFiCUOYeN27kq8G"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mBbxV2ZqaJcWXY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eL94qTtIFL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZH;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZF;)V
    .locals 0

    .line 70138
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZH;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZH;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1ct
        -0xdt
        -0x14t
        -0x35t
        -0x29t
        -0x2at
        -0x24t
        -0x26t
        -0x29t
        -0x2ct
        -0x2ct
        -0x33t
        -0x26t
        -0x78t
        -0x2ft
        -0x25t
        -0x78t
        -0x2at
        -0x23t
        -0x2ct
        -0x2ct
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 70139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerFailed()V

    .line 70140
    return-void
.end method

.method public final A07()V
    .locals 1

    .line 70141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerSuccess()V

    .line 70142
    return-void
.end method

.method public final A08()V
    .locals 1

    .line 70143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A02(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    .line 70145
    :cond_0
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 70146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A02(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    .line 70148
    :cond_0
    return-void
.end method

.method public final A0A()V
    .locals 5

    .line 70149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A02(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    .line 70151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A09(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LD;->A05()V

    .line 70152
    .end local v0
    :goto_0
    return-void

    .line 70153
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70154
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A02(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/5j;

    .line 70155
    .local v0, "configBuilder":Lcom/facebook/ads/redexgen/X/5j;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A01(Lcom/facebook/ads/redexgen/X/ZF;)J

    move-result-wide v0

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/5j;->A02(J)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    .line 70156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A02(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/5j;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/RewardedVideoAd;->show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    goto :goto_0
.end method

.method public final A0C()V
    .locals 2

    .line 70157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/24;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    .line 70158
    return-void
.end method

.method public final A0D()V
    .locals 2

    .line 70159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/24;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 70160
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 6

    .line 70161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A07(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/Eb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70163
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7N;->A07()Lcom/facebook/ads/redexgen/X/7r;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7s;->A0N:I

    const/4 v2, 0x3

    const/16 v1, 0x12

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7t;-><init>(Ljava/lang/String;)V

    .line 70164
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZH;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7r;->A9C(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7t;)V

    .line 70165
    return-void

    .line 70166
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/Zw;

    .line 70167
    .local v0, "rvAdapter":Lcom/facebook/ads/redexgen/X/Zw;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A03:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_1

    .line 70168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A03:Lcom/facebook/ads/RewardData;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Zw;->A02(Lcom/facebook/ads/RewardData;)V

    .line 70169
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Zw;->A0G()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A02:[Ljava/lang/String;

    const-string v1, "61YjDYRNNN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "vT3ubuaNP5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/24;->A00:I

    .line 70170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/ZF;->A0F(Lcom/facebook/ads/redexgen/X/ZF;Z)Z

    .line 70171
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ZF;->A07(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Za;->A0F()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A06(Lcom/facebook/ads/redexgen/X/ZF;Lcom/facebook/ads/redexgen/X/1B;)Lcom/facebook/ads/redexgen/X/1B;

    .line 70172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A05(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 70173
    const/4 v2, 0x0

    .line 70174
    .local v1, "iGsChainAdsFrequency":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A05(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0Z()Z

    move-result v0

    if-nez v0, :cond_3

    .line 70175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70176
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A05(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zs;->A0f()I

    move-result v2

    .line 70177
    :cond_3
    if-lez v2, :cond_4

    .line 70178
    new-instance v3, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/KU;-><init>()V

    .line 70179
    .local v3, "chainer":Lcom/facebook/ads/redexgen/X/KU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70180
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A06:Ljava/lang/String;

    .line 70181
    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/KU;->A09(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/KU;->A08(Lcom/facebook/ads/redexgen/X/Xc;Z)V

    .line 70183
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70184
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/24;->A0C:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70185
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A06:Ljava/lang/String;

    .line 70186
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KU;->A07(Lcom/facebook/ads/redexgen/X/Xc;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    .line 70187
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A03(Lcom/facebook/ads/redexgen/X/ZF;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    .line 70188
    .end local v1    # "iGsChainAdsFrequency":I
    .end local v3    # "chainer":Lcom/facebook/ads/redexgen/X/KU;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A02(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 70189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A05(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Zs;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Zs;->A0r(Z)V

    .line 70190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70191
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A02(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    .line 70192
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    .line 70193
    invoke-interface {v0, v4}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70194
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A05(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0F()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70195
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A02:Lcom/facebook/ads/AdExperienceType;

    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/1z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/1z;-><init>(Lcom/facebook/ads/redexgen/X/ZH;)V

    .line 70196
    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    .line 70197
    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v1

    .line 70198
    .local v1, "loadAdConfig":Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A02(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    .line 70199
    .end local v1    # "loadAdConfig":Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    :goto_1
    return-void

    .line 70200
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/24;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_1

    .line 70201
    :cond_6
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A02:[Ljava/lang/String;

    const-string v1, "df15N9yr5s"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rrfEFjVt4q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/KU;->A08(Lcom/facebook/ads/redexgen/X/Xc;Z)V

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZH;->A02:[Ljava/lang/String;

    const-string v1, "7AaEv1vCH3bw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Y1uo0lYkjhkOAjcvNvodbhiOq3C"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/ZF;->A09:Lcom/facebook/ads/redexgen/X/Xc;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/KU;->A08(Lcom/facebook/ads/redexgen/X/Xc;Z)V

    goto/16 :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/JA;)V
    .locals 5

    .line 70202
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/ZF;->A0C(Lcom/facebook/ads/redexgen/X/ZF;Z)V

    .line 70203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/24;->A0B:Lcom/facebook/ads/redexgen/X/Xc;

    .line 70204
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70205
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A00(Lcom/facebook/ads/redexgen/X/ZF;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v2

    .line 70206
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JA;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 70207
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JA;->A04()Ljava/lang/String;

    move-result-object v0

    .line 70208
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 70209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A04(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    .line 70210
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZF;->A08(Lcom/facebook/ads/redexgen/X/ZF;)Lcom/facebook/ads/redexgen/X/24;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/24;->A00()Lcom/facebook/ads/Ad;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KW;->A00(Lcom/facebook/ads/redexgen/X/JA;)Lcom/facebook/ads/AdError;

    move-result-object v0

    .line 70211
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 70212
    return-void
.end method
