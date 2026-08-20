.class public final Lcom/facebook/ads/redexgen/X/C8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackBundle"
.end annotation


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/C2;

.field public A05:Lcom/facebook/ads/redexgen/X/CH;

.field public final A06:Lcom/facebook/ads/redexgen/X/Bh;

.field public final A07:Lcom/facebook/ads/redexgen/X/CJ;

.field public final A08:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A09:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 25266
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VV6EzFzDFGyxh7278LhkWh1nAnO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RIeoUtwh2k0Lp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KiUc8yTTjWF6Y9v"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6tIA8m5WM2YSgVpCAFtgKZOFEkm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "A00z45"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ej2X1eDppCFfwh6aI5B812e88v7VHLnd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "obdd9bh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/C8;->A0A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bh;)V
    .locals 2

    .line 25267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25268
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    .line 25269
    new-instance v0, Lcom/facebook/ads/redexgen/X/CJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CJ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    .line 25270
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    .line 25271
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A08:Lcom/facebook/ads/redexgen/X/Hc;

    .line 25272
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/CI;
    .locals 4

    .line 25273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CJ;->A07:Lcom/facebook/ads/redexgen/X/C2;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/C2;->A02:I

    .line 25274
    .local v0, "sampleDescriptionIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CJ;->A08:Lcom/facebook/ads/redexgen/X/CI;

    if-eqz v0, :cond_0

    .line 25275
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/C8;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/C8;->A0A:[Ljava/lang/String;

    const-string v1, "yH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/CJ;->A08:Lcom/facebook/ads/redexgen/X/CI;

    .line 25276
    :goto_0
    return-object v0

    .line 25277
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/CH;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/CH;->A00(I)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .locals 3

    .line 25278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/CJ;->A0A:Z

    if-nez v0, :cond_0

    .line 25279
    return-void

    .line 25280
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CJ;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    .line 25281
    .local v0, "sampleEncryptionData":Lcom/facebook/ads/redexgen/X/Hc;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C8;->A00()Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v1

    .line 25282
    .local v1, "encryptionBox":Lcom/facebook/ads/redexgen/X/CI;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/CI;->A00:I

    if-eqz v0, :cond_1

    .line 25283
    iget v0, v1, Lcom/facebook/ads/redexgen/X/CI;->A00:I

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 25284
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CJ;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_2

    .line 25285
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 25286
    :cond_2
    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/C8;)V
    .locals 0

    .line 25287
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C8;->A01()V

    return-void
.end method


# virtual methods
.method public final A03()I
    .locals 6

    .line 25288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/CJ;->A0A:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 25289
    return v2

    .line 25290
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/C8;->A00()Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/C8;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25291
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/CI;
    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/C8;->A0A:[Ljava/lang/String;

    const-string v1, "c"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/CI;->A00:I

    if-eqz v0, :cond_3

    .line 25292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/CJ;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    .line 25293
    .local v2, "initializationVectorData":Lcom/facebook/ads/redexgen/X/Hc;
    iget v3, v4, Lcom/facebook/ads/redexgen/X/CI;->A00:I

    .line 25294
    .local v3, "vectorSize":I
    .local v2, "vectorSize":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CJ;->A0H:[Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    aget-boolean v4, v1, v0

    .line 25295
    .local v4, "subsampleEncryption":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    if-eqz v4, :cond_2

    const/16 v0, 0x80

    :goto_1
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 25296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 25297
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v0, 0x1

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 25298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, v5, v3}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 25299
    if-nez v4, :cond_4

    .line 25300
    add-int/lit8 v0, v3, 0x1

    return v0

    .line 25301
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 25302
    .end local v2    # "vectorSize":I
    .end local v3    # "vectorSize":I
    :cond_3
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/CI;->A04:[B

    .line 25303
    .local v2, "initVectorData":[B
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A08:Lcom/facebook/ads/redexgen/X/Hc;

    array-length v0, v3

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0b([BI)V

    .line 25304
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/C8;->A08:Lcom/facebook/ads/redexgen/X/Hc;

    .line 25305
    .local v3, "initializationVectorData":Lcom/facebook/ads/redexgen/X/Hc;
    array-length v3, v3

    goto :goto_0

    .line 25306
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CJ;->A09:Lcom/facebook/ads/redexgen/X/Hc;

    .line 25307
    .local v1, "subsampleEncryptionData":Lcom/facebook/ads/redexgen/X/Hc;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v1

    .line 25308
    .local v5, "subsampleCount":I
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 25309
    mul-int/lit8 v0, v1, 0x6

    add-int/lit8 v1, v0, 0x2

    .line 25310
    .local p0, "subsampleDataLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 25311
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final A04()V
    .locals 1

    .line 25312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CJ;->A01()V

    .line 25313
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    .line 25314
    iput v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A02:I

    .line 25315
    iput v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:I

    .line 25316
    iput v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:I

    .line 25317
    return-void
.end method

.method public final A05(J)V
    .locals 6

    .line 25318
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/99;->A01(J)J

    move-result-wide v4

    .line 25319
    .local v0, "timeMs":J
    iget v3, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    .line 25320
    .local v2, "searchIndex":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CJ;->A00:I

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    .line 25321
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/CJ;->A00(I)J

    move-result-wide v1

    cmp-long v0, v1, v4

    if-gez v0, :cond_1

    .line 25322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CJ;->A0I:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 25323
    iput v3, p0, Lcom/facebook/ads/redexgen/X/C8;->A03:I

    .line 25324
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25325
    :cond_1
    return-void
.end method

.method public final A06(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)V
    .locals 4

    .line 25326
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/CH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CJ;->A07:Lcom/facebook/ads/redexgen/X/C2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/C2;->A02:I

    .line 25327
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A00(I)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v0

    .line 25328
    .local v0, "encryptionBox":Lcom/facebook/ads/redexgen/X/CI;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/CI;->A02:Ljava/lang/String;

    .line 25329
    .local v1, "schemeType":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/CH;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CH;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A02(Ljava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0I(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 25330
    return-void

    .line 25331
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/C2;)V
    .locals 2

    .line 25332
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/CH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A05:Lcom/facebook/ads/redexgen/X/CH;

    .line 25333
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/C2;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A04:Lcom/facebook/ads/redexgen/X/C2;

    .line 25334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A06:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/CH;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 25335
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/C8;->A04()V

    .line 25336
    return-void
.end method

.method public final A08()Z
    .locals 4

    .line 25337
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A01:I

    .line 25338
    iget v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:I

    .line 25339
    iget v2, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A07:Lcom/facebook/ads/redexgen/X/CJ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CJ;->A0E:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A02:I

    aget v0, v0, v1

    if-ne v2, v0, :cond_0

    .line 25340
    add-int/2addr v1, v3

    iput v1, p0, Lcom/facebook/ads/redexgen/X/C8;->A02:I

    .line 25341
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/C8;->A00:I

    .line 25342
    return v0

    .line 25343
    :cond_0
    return v3
.end method
