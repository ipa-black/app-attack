.class public final Lcom/facebook/ads/redexgen/X/Vl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cg;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Bh;

.field public A03:Lcom/facebook/ads/redexgen/X/Cg;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Ch;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ch;

.field public final A08:Lcom/facebook/ads/redexgen/X/Ch;

.field public final A09:Lcom/facebook/ads/redexgen/X/Ch;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Ch;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ck;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60074
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NvpEV7R7ZS5uNQ5TFb57EvhjwIZCTQku"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DdUDSiCrGQUoEviiVingxcQFfwNbDa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hetlnsRY2wqGSQpiRITV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "h6jp2Z"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "H3YUjFwBN5I"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HDGGogJPAHFPfOUxVzLcmHcfpTDLo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fvYnB4Gz7ZvwaQ8Y4EtF6ZMgsdzNJKEV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DcduA0DmY9P8nwkm6XpLf73k0ckt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vl;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ck;)V
    .locals 3

    .line 60075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60076
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0B:Lcom/facebook/ads/redexgen/X/Ck;

    .line 60077
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0D:[Z

    .line 60078
    const/16 v2, 0x80

    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ch;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ch;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0A:Lcom/facebook/ads/redexgen/X/Ch;

    .line 60079
    const/16 v1, 0x21

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ch;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ch;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    .line 60080
    const/16 v1, 0x22

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ch;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ch;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    .line 60081
    const/16 v1, 0x27

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ch;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ch;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    .line 60082
    const/16 v1, 0x28

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ch;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ch;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A09:Lcom/facebook/ads/redexgen/X/Ch;

    .line 60083
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    .line 60084
    return-void
.end method

.method public static A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ch;Lcom/facebook/ads/redexgen/X/Ch;Lcom/facebook/ads/redexgen/X/Ch;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 17

    .line 60085
    move-object/from16 v7, p1

    iget v1, v7, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    move-object/from16 v4, p2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    add-int/2addr v1, v0

    move-object/from16 v6, p3

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    add-int/2addr v1, v0

    new-array v5, v1, [B

    .line 60086
    .local v3, "csd":[B
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget v0, v7, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60087
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget v1, v7, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v2, v3, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60088
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget v1, v7, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    add-int/2addr v1, v0

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v2, v3, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60089
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/Hd;

    invoke-direct {v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Hd;-><init>([BII)V

    .line 60090
    .local v4, "bitArray":Lcom/facebook/ads/redexgen/X/Hd;
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 60091
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v10

    .line 60092
    .local v7, "maxSubLayersMinus1":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 60093
    const/16 v0, 0x58

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 60094
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 60095
    const/4 v3, 0x0

    .line 60096
    .local v9, "toSkip":I
    const/4 v1, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v1, v10, :cond_2

    .line 60097
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60098
    add-int/lit8 v3, v3, 0x59

    .line 60099
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60100
    add-int/lit8 v3, v3, 0x8

    .line 60101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60102
    .end local v10    # "i":I
    :cond_2
    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 60103
    const/4 v4, 0x2

    if-lez v10, :cond_3

    .line 60104
    rsub-int/lit8 v0, v10, 0x8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 60105
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60106
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v11

    .line 60107
    .local v11, "chromaFormatIdc":I
    if-ne v11, v6, :cond_4

    .line 60108
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 60109
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v12

    .line 60110
    .local v5, "picWidthInLumaSamples":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v13

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_13

    .line 60111
    .local v12, "picHeightInLumaSamples":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const-string v1, "a8PzOvYW3xW"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const-string v1, "i4yWj6LgSPQERWLdQfta"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60112
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v9

    .line 60113
    .local v13, "confWinLeftOffset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v8

    .line 60114
    .local v14, "confWinRightOffset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v6

    .line 60115
    .local v15, "confWinTopOffset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v3

    .line 60116
    .local v16, "confWinBottomOffset":I
    const/4 v1, 0x1

    if-eq v11, v1, :cond_5

    if-ne v11, v4, :cond_9

    :cond_5
    const/4 v0, 0x2

    .line 60117
    .local p1, "subWidthC":I
    :goto_1
    if-ne v11, v1, :cond_6

    const/4 v1, 0x2

    .line 60118
    .local v6, "subHeightC":I
    :cond_6
    add-int/2addr v9, v8

    mul-int/2addr v9, v0

    sub-int/2addr v12, v9

    .line 60119
    add-int/2addr v6, v3

    mul-int/2addr v6, v1

    sub-int/2addr v13, v6

    .line 60120
    .end local v6    # "subHeightC":I
    .end local v13    # "confWinLeftOffset":I
    .end local v14    # "confWinRightOffset":I
    .end local v15    # "confWinTopOffset":I
    .end local v16    # "confWinBottomOffset":I
    .end local p1    # "subWidthC":I
    :cond_7
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60121
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60122
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v3

    .line 60123
    .local v6, "log2MaxPicOrderCntLsbMinus4":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .local v13, "i":I
    :goto_2
    if-gt v0, v10, :cond_a

    .line 60124
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60125
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60126
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60127
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v10

    goto :goto_2

    .line 60128
    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    .line 60129
    .end local v13    # "i":I
    :cond_a
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60130
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60131
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60132
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60133
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60134
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60135
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    .line 60136
    .local v13, "scalingListEnabled":Z
    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60137
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Vl;->A05(Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 60138
    :cond_b
    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 60139
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 60140
    invoke-virtual {v2, v7}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 60141
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60142
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60143
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 60144
    :cond_c
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Vl;->A06(Lcom/facebook/ads/redexgen/X/Hd;)V

    .line 60145
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 60146
    const/4 v1, 0x0

    .local v14, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 60147
    add-int/lit8 v0, v3, 0x4

    .line 60148
    .local v15, "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 60149
    .end local v15    # "ltRefPicPocLsbSpsLength":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 60150
    .end local v14    # "i":I
    :cond_d
    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 60151
    const/high16 v3, 0x3f800000    # 1.0f

    .line 60152
    .local v8, "pixelWidthHeightRatio":F
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 60153
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 60154
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v6

    .line 60155
    .local v10, "aspectRatioIdc":I
    const/16 v0, 0xff

    if-ne v6, v0, :cond_f

    .line 60156
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v1

    .line 60157
    .local v15, "sarWidth":I
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v0

    .line 60158
    .local v14, "sarHeight":I
    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    .line 60159
    int-to-float v3, v1

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 60160
    .end local v10    # "aspectRatioIdc":I
    :cond_e
    :goto_4
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    .line 60161
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, -0x1

    const/16 p1, 0x0

    .line 60162
    const/16 v5, 0x2d

    const/16 v4, 0xa

    const/16 v2, 0x11

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    move-object/from16 v7, p0

    if-eq v1, v0, :cond_11

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const-string v1, "REKIidOCsv4ptzsgivtfnGOww6JG"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "T94vPaWVm7jdMSWQElc8luWGTOlSo"

    const/4 v0, 0x5

    aput-object v1, v6, v0

    invoke-static {v5, v4, v2}, Lcom/facebook/ads/redexgen/X/Vl;->A01(III)Ljava/lang/String;

    move-result-object v8

    move/from16 p0, v3

    invoke-static/range {v7 .. v18}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    return-object v0

    .line 60163
    :cond_f
    sget-object v4, Lcom/facebook/ads/redexgen/X/HY;->A04:[F

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const-string v1, "Mq8kmMTSiz0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "TBAE07oWZ5Khy7farxDr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    array-length v0, v4

    if-ge v6, v0, :cond_10

    .line 60164
    sget-object v0, Lcom/facebook/ads/redexgen/X/HY;->A04:[F

    aget v3, v0, v6

    .end local v8    # "pixelWidthHeightRatio":F
    .local v0, "pixelWidthHeightRatio":F
    goto :goto_4

    .line 60165
    .end local v0    # "pixelWidthHeightRatio":F
    .restart local v8    # "pixelWidthHeightRatio":F
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    const/16 v1, 0x23

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vl;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_11
    sget-object v6, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const-string v1, "W2GdBlThEFkhmpYhDIzNH9YY1BaI"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "0yDCfDeoWht2juYgXJKTHBbNY9ana"

    const/4 v0, 0x5

    aput-object v1, v6, v0

    invoke-static {v5, v4, v2}, Lcom/facebook/ads/redexgen/X/Vl;->A01(III)Ljava/lang/String;

    move-result-object v8

    move/from16 p0, v3

    invoke-static/range {v7 .. v18}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x29

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
    .locals 4

    const/16 v3, 0x37

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const-string v1, "YNSDJ1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vl;->A0E:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x79t
        0x3t
        0x7t
        0x4t
        0x63t
        0x54t
        0x50t
        0x55t
        0x54t
        0x43t
        0x7et
        0x45t
        0x4et
        0x53t
        0x5bt
        0x4et
        0x48t
        0x5ft
        0x4et
        0x4ft
        0xbt
        0x4at
        0x58t
        0x5bt
        0x4et
        0x48t
        0x5ft
        0x74t
        0x59t
        0x4at
        0x5ft
        0x42t
        0x44t
        0x74t
        0x42t
        0x4ft
        0x48t
        0xbt
        0x5dt
        0x4at
        0x47t
        0x5et
        0x4et
        0x11t
        0xbt
        0x4et
        0x51t
        0x5ct
        0x5dt
        0x57t
        0x17t
        0x50t
        0x5dt
        0x4et
        0x5bt
    .end array-data
.end method

.method private A03(JIIJ)V
    .locals 5

    .line 60166
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A05:Z

    if-eqz v0, :cond_3

    .line 60167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cg;->A02(JI)V

    .line 60168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Ch;->A04(I)Z

    move-result v0

    const/4 v3, 0x5

    if-eqz v0, :cond_1

    .line 60169
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vl;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const-string v1, "Yba7mj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/HY;->A02([BI)I

    move-result v2

    .line 60170
    .local v0, "unescapedLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0b([BI)V

    .line 60171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 60172
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0B:Lcom/facebook/ads/redexgen/X/Ck;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v1, p5, p6, v0}, Lcom/facebook/ads/redexgen/X/Ck;->A02(JLcom/facebook/ads/redexgen/X/Hc;)V

    .line 60173
    .end local v0    # "unescapedLength":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A09:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Ch;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A09:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A09:Lcom/facebook/ads/redexgen/X/Ch;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/HY;->A02([BI)I

    move-result v2

    .line 60175
    .restart local v0    # "unescapedLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A09:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0b([BI)V

    .line 60176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 60177
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0B:Lcom/facebook/ads/redexgen/X/Ck;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0C:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v1, p5, p6, v0}, Lcom/facebook/ads/redexgen/X/Ck;->A02(JLcom/facebook/ads/redexgen/X/Hc;)V

    .line 60178
    .end local v0    # "unescapedLength":I
    :cond_2
    return-void

    .line 60179
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0A:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Ch;->A04(I)Z

    .line 60180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Ch;->A04(I)Z

    .line 60181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Ch;->A04(I)Z

    .line 60182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0A:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60183
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vl;->A04:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0A:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ch;Lcom/facebook/ads/redexgen/X/Ch;Lcom/facebook/ads/redexgen/X/Ch;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 60184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A05:Z

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04(JIIJ)V
    .locals 7

    .line 60185
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A05:Z

    move v4, p4

    if-eqz v0, :cond_0

    .line 60186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/Cg;

    move-wide v1, p1

    move v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Cg;->A03(JIIJ)V

    .line 60187
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)V

    .line 60188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A09:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)V

    .line 60189
    return-void

    .line 60190
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0A:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)V

    .line 60191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)V

    .line 60192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)V

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 6

    .line 60193
    const/4 v5, 0x0

    .local v0, "sizeId":I
    :goto_0
    const/4 v4, 0x4

    if-ge v5, v4, :cond_5

    .line 60194
    const/4 v3, 0x0

    .local v2, "matrixId":I
    :goto_1
    const/4 v0, 0x6

    if-ge v3, v0, :cond_4

    .line 60195
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 60196
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60197
    .end local v3
    .end local v5
    :cond_0
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1

    :goto_2
    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 60198
    :cond_2
    const/16 v1, 0x40

    shl-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v4

    shl-int v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60199
    .local v3, "coefNum":I
    if-le v5, v2, :cond_3

    .line 60200
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A03()I

    .line 60201
    :cond_3
    const/4 v0, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v0, v1, :cond_0

    .line 60202
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A03()I

    .line 60203
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 60204
    .end local v2    # "matrixId":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60205
    .end local v0    # "sizeId":I
    :cond_5
    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 7

    .line 60206
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v6

    .line 60207
    .local v0, "numShortTermRefPicSets":I
    const/4 v5, 0x0

    .line 60208
    .local v1, "interRefPicSetPredictionFlag":Z
    const/4 v4, 0x0

    .line 60209
    .local v2, "previousNumDeltaPocs":I
    const/4 v3, 0x0

    .local v3, "stRpsIdx":I
    :goto_0
    if-ge v3, v6, :cond_5

    .line 60210
    if-eqz v3, :cond_0

    .line 60211
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v5

    .line 60212
    :cond_0
    if-eqz v5, :cond_2

    .line 60213
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 60214
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60215
    const/4 v1, 0x0

    .local v4, "j":I
    :goto_1
    if-gt v1, v4, :cond_4

    .line 60216
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60217
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 60218
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60219
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v2

    .line 60220
    .local v4, "numNegativePics":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v1

    .line 60221
    .local v5, "numPositivePics":I
    add-int v4, v2, v1

    .line 60222
    const/4 v0, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 60223
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60224
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 60225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 60226
    .end local v6    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 60227
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 60228
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 60229
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 60230
    .end local v4    # "numNegativePics":I
    .end local v5    # "numPositivePics":I
    .end local v6    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60231
    .end local v3    # "stRpsIdx":I
    :cond_5
    return-void
.end method

.method private A07([BII)V
    .locals 1

    .line 60232
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A05:Z

    if-eqz v0, :cond_0

    .line 60233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cg;->A04([BII)V

    .line 60234
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ch;->A02([BII)V

    .line 60235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A09:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ch;->A02([BII)V

    .line 60236
    return-void

    .line 60237
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0A:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ch;->A02([BII)V

    .line 60238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ch;->A02([BII)V

    .line 60239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ch;->A02([BII)V

    goto :goto_0
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 18

    move-object/from16 v6, p0

    .line 60240
    :cond_0
    move-object/from16 v8, p1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A0F:[Ljava/lang/String;

    const-string v1, "AvzYB124iDQiX3hdxqfkLksaQ25q0Ga1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Nv2bR4D3VQ28suo5ivBlL2099SuCEJEb"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-lez v3, :cond_4

    .line 60241
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v7

    .line 60242
    .local v0, "offset":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v5

    .line 60243
    .local v9, "limit":I
    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 60244
    .local v10, "dataArray":[B
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Vl;->A01:J

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/Vl;->A01:J

    .line 60245
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Vl;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    invoke-interface {v1, v8, v0}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 60246
    .end local v0    # "offset":I
    .local v11, "offset":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 60247
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vl;->A0D:[Z

    invoke-static {v4, v7, v5, v0}, Lcom/facebook/ads/redexgen/X/HY;->A04([BII[Z)I

    move-result v3

    .line 60248
    .local v12, "nalUnitOffset":I
    if-ne v3, v5, :cond_1

    .line 60249
    invoke-direct {v6, v4, v7, v5}, Lcom/facebook/ads/redexgen/X/Vl;->A07([BII)V

    .line 60250
    return-void

    .line 60251
    :cond_1
    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/HY;->A00([BI)I

    move-result v15

    .line 60252
    .local v13, "nalUnitType":I
    sub-int v2, v3, v7

    .line 60253
    .local v14, "lengthToNalUnit":I
    if-lez v2, :cond_2

    .line 60254
    invoke-direct {v6, v4, v7, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A07([BII)V

    .line 60255
    :cond_2
    sub-int v10, v5, v3

    .line 60256
    .local v15, "bytesWrittenPastPosition":I
    iget-wide v8, v6, Lcom/facebook/ads/redexgen/X/Vl;->A01:J

    int-to-long v0, v10

    sub-long/2addr v8, v0

    .line 60257
    .local v16, "absolutePosition":J
    if-gez v2, :cond_3

    neg-int v11, v2

    :goto_1
    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/Vl;->A00:J

    .line 60258
    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Vl;->A03(JIIJ)V

    .line 60259
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Vl;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move v14, v10

    move-wide/from16 v16, v0

    invoke-direct/range {v11 .. v17}, Lcom/facebook/ads/redexgen/X/Vl;->A04(JIIJ)V

    .line 60260
    add-int/lit8 v7, v3, 0x3

    .line 60261
    .end local v12    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v15    # "bytesWrittenPastPosition":I
    .end local v16    # "absolutePosition":J
    goto :goto_0

    .line 60262
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 60263
    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 2

    .line 60264
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A05()V

    .line 60265
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A04:Ljava/lang/String;

    .line 60266
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    .line 60267
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Cg;-><init>(Lcom/facebook/ads/redexgen/X/Bh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/Cg;

    .line 60268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0B:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ck;->A03(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V

    .line 60269
    return-void
.end method

.method public final ADM()V
    .locals 0

    .line 60270
    return-void
.end method

.method public final ADN(JZ)V
    .locals 0

    .line 60271
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:J

    .line 60272
    return-void
.end method

.method public final AEb()V
    .locals 2

    .line 60273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0D:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HY;->A0B([Z)V

    .line 60274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A0A:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A09:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cg;->A01()V

    .line 60280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:J

    .line 60281
    return-void
.end method
