.class public final Lcom/facebook/ads/redexgen/X/Vm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cf;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Bh;

.field public A03:Lcom/facebook/ads/redexgen/X/Cf;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Ch;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ch;

.field public final A08:Lcom/facebook/ads/redexgen/X/Ch;

.field public final A09:Lcom/facebook/ads/redexgen/X/Ck;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A0B:Z

.field public final A0C:Z

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60282
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FmtBUqGmzQvxm47AtoGl5GE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5iXLyJPyDLcaPMUjk1v5bxBpoPhfo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hif1Xiw3z0OLVixA8K1yUZiszA96"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VzETX2BwbL5Y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rXQDE7FzOjIY2cTlxG1EbFIaNFkq3NBz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hyxBaGmEw9nsGl9VO3HFyZpkQthqrgGl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hfnp76HvDzKR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cXQxcUyRSwddwq1B1B5vUbLw26Cn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vm;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vm;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ck;ZZ)V
    .locals 3

    .line 60283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A09:Lcom/facebook/ads/redexgen/X/Ck;

    .line 60285
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Vm;->A0B:Z

    .line 60286
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Vm;->A0C:Z

    .line 60287
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A0D:[Z

    .line 60288
    const/16 v2, 0x80

    const/4 v1, 0x7

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ch;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ch;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    .line 60289
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ch;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ch;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    .line 60290
    const/4 v1, 0x6

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ch;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ch;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    .line 60291
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    .line 60292
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vm;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

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

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vm;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        -0x3ct
        -0x41t
        -0x40t
        -0x36t
        -0x76t
        -0x44t
        -0x2ft
        -0x42t
    .end array-data
.end method

.method private A02(JIIJ)V
    .locals 24

    .line 60293
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A05:Z

    move/from16 v7, p4

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60294
    :cond_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Ch;->A04(I)Z

    .line 60295
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Ch;->A04(I)Z

    .line 60296
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A05:Z

    const/4 v2, 0x3

    if-nez v0, :cond_3

    .line 60297
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60299
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60300
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60301
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/HY;->A06([BII)Lcom/facebook/ads/redexgen/X/HX;

    move-result-object v4

    .line 60302
    .local v15, "spsData":Lcom/facebook/ads/redexgen/X/HX;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/HY;->A05([BII)Lcom/facebook/ads/redexgen/X/HW;

    move-result-object v3

    .line 60303
    .local v3, "ppsData":Lcom/facebook/ads/redexgen/X/HW;
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v12, v6, Lcom/facebook/ads/redexgen/X/Vm;->A04:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    iget v11, v4, Lcom/facebook/ads/redexgen/X/HX;->A06:I

    iget v10, v4, Lcom/facebook/ads/redexgen/X/HX;->A02:I

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v21, -0x1

    iget v9, v4, Lcom/facebook/ads/redexgen/X/HX;->A00:F

    const/16 v23, 0x0

    .line 60304
    const/4 v8, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x12

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v13

    .end local v15    # "spsData":Lcom/facebook/ads/redexgen/X/HX;
    .local v2, "spsData":Lcom/facebook/ads/redexgen/X/HX;
    .local v17, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move/from16 v22, v9

    move-object/from16 v20, v5

    move/from16 v18, v10

    move/from16 v17, v11

    invoke-static/range {v12 .. v23}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    .line 60305
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 60306
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A05:Z

    .line 60307
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Cf;->A05(Lcom/facebook/ads/redexgen/X/HX;)V

    .line 60308
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Cf;->A04(Lcom/facebook/ads/redexgen/X/HW;)V

    .line 60309
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60310
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60311
    .end local v2    # "spsData":Lcom/facebook/ads/redexgen/X/HX;
    .end local v3    # "ppsData":Lcom/facebook/ads/redexgen/X/HW;
    .end local v17    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Ch;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60312
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/Vm;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vm;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vm;->A0F:[Ljava/lang/String;

    const-string v1, "MYiVFEqyRoVR8PpaQvBVtWO0d80axIUe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WESehlM6UD3i8IXgr5ZdByrcv93bSxFf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/HY;->A02([BI)I

    move-result v2

    .line 60313
    .local v2, "unescapedLength":I
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Vm;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hc;->A0b([BI)V

    .line 60314
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Vm;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60315
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Vm;->A09:Lcom/facebook/ads/redexgen/X/Ck;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A0A:Lcom/facebook/ads/redexgen/X/Hc;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Ck;->A02(JLcom/facebook/ads/redexgen/X/Hc;)V

    .line 60316
    :cond_2
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    move-wide/from16 v2, p1

    move/from16 v1, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/Cf;->A02(JI)V

    .line 60317
    return-void

    .line 60318
    :cond_3
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A03()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60319
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/HY;->A06([BII)Lcom/facebook/ads/redexgen/X/HX;

    move-result-object v1

    .line 60320
    .restart local v2    # "unescapedLength":I
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Cf;->A05(Lcom/facebook/ads/redexgen/X/HX;)V

    .line 60321
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .end local v2    # "unescapedLength":I
    goto :goto_0

    .line 60322
    :cond_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60323
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ch;->A01:[B

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/HY;->A05([BII)Lcom/facebook/ads/redexgen/X/HW;

    move-result-object v1

    .line 60324
    .local v2, "ppsData":Lcom/facebook/ads/redexgen/X/HW;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Cf;->A04(Lcom/facebook/ads/redexgen/X/HW;)V

    .line 60325
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(JIJ)V
    .locals 6

    .line 60326
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Z

    move v3, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60327
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)V

    .line 60328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)V

    .line 60329
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)V

    .line 60330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    move-wide v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Cf;->A03(JIJ)V

    .line 60331
    return-void
.end method

.method private A04([BII)V
    .locals 1

    .line 60332
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A07()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60333
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ch;->A02([BII)V

    .line 60334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ch;->A02([BII)V

    .line 60335
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ch;->A02([BII)V

    .line 60336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cf;->A06([BII)V

    .line 60337
    return-void
.end method


# virtual methods
.method public final A4B(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 17

    .line 60338
    move-object/from16 v5, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A06()I

    move-result v8

    .line 60339
    .local v0, "offset":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v4

    .line 60340
    .local v9, "limit":I
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    .line 60341
    .local v10, "dataArray":[B
    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/Vm;->A01:J

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    iput-wide v6, v5, Lcom/facebook/ads/redexgen/X/Vm;->A01:J

    .line 60342
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hc;->A04()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 60343
    .end local v0    # "offset":I
    .local v11, "offset":I
    :goto_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Vm;->A0D:[Z

    invoke-static {v3, v8, v4, v0}, Lcom/facebook/ads/redexgen/X/HY;->A04([BII[Z)I

    move-result v2

    .line 60344
    .local v12, "nalUnitOffset":I
    if-ne v2, v4, :cond_0

    .line 60345
    invoke-direct {v5, v3, v8, v4}, Lcom/facebook/ads/redexgen/X/Vm;->A04([BII)V

    .line 60346
    return-void

    .line 60347
    :cond_0
    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/HY;->A01([BI)I

    move-result v14

    .line 60348
    .local v13, "nalUnitType":I
    sub-int v7, v2, v8

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vm;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v6, v0

    const/4 v0, 0x6

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60349
    .local v14, "lengthToNalUnit":I
    :cond_1
    sget-object v6, Lcom/facebook/ads/redexgen/X/Vm;->A0F:[Ljava/lang/String;

    const-string v1, "lQl99M6qnQlq"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const-string v1, "jJKIbaSVKHql"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    if-lez v7, :cond_2

    .line 60350
    invoke-direct {v5, v3, v8, v2}, Lcom/facebook/ads/redexgen/X/Vm;->A04([BII)V

    .line 60351
    :cond_2
    sub-int v10, v4, v2

    .line 60352
    .local v15, "bytesWrittenPastPosition":I
    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/Vm;->A01:J

    int-to-long v0, v10

    sub-long/2addr v8, v0

    .line 60353
    .local v16, "absolutePosition":J
    if-gez v7, :cond_4

    neg-int v11, v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vm;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v6, v0

    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v6, Lcom/facebook/ads/redexgen/X/Vm;->A0F:[Ljava/lang/String;

    const-string v1, "CFaupTF247UissJwn80OFqAOj9Vx"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "5OzpI30ijAeJlsq8Y1OyIdlDADpj"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    :goto_1
    iget-wide v12, v5, Lcom/facebook/ads/redexgen/X/Vm;->A00:J

    .line 60354
    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/Vm;->A02(JIIJ)V

    .line 60355
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Vm;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move-wide v15, v0

    invoke-direct/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/Vm;->A03(JIJ)V

    .line 60356
    add-int/lit8 v8, v2, 0x3

    .line 60357
    .end local v12    # "nalUnitOffset":I
    .end local v13    # "nalUnitType":I
    .end local v14    # "lengthToNalUnit":I
    .end local v15    # "bytesWrittenPastPosition":I
    .end local v16    # "absolutePosition":J
    goto :goto_0

    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/Vm;->A0F:[Ljava/lang/String;

    const-string v1, "eqTKDwhJaRXE4qM7uaf5ert1lQX8N"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const-string v1, "XXULpdZ36j09HmRAAM7fCX7"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    goto :goto_1

    .line 60358
    :cond_4
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public final A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 4

    .line 60359
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A05()V

    .line 60360
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:Ljava/lang/String;

    .line 60361
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cp;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    .line 60362
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Vm;->A0B:Z

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A0C:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cf;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Cf;-><init>(Lcom/facebook/ads/redexgen/X/Bh;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    .line 60363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A09:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ck;->A03(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V

    .line 60364
    return-void
.end method

.method public final ADM()V
    .locals 0

    .line 60365
    return-void
.end method

.method public final ADN(JZ)V
    .locals 0

    .line 60366
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:J

    .line 60367
    return-void
.end method

.method public final AEb()V
    .locals 2

    .line 60368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A0D:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HY;->A0B([Z)V

    .line 60369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A08:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A06:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A07:Lcom/facebook/ads/redexgen/X/Ch;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00()V

    .line 60372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Lcom/facebook/ads/redexgen/X/Cf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cf;->A01()V

    .line 60373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:J

    .line 60374
    return-void
.end method
