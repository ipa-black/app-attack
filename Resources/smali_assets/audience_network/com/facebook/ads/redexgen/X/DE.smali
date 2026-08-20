.class public final Lcom/facebook/ads/redexgen/X/DE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/WG;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:[J

.field public final A02:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 27271
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xRROEGdAUCAudeqcJX0caVC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RDpao2hkrR6ziaViz3g3BPe5hbb4l2e8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ed7dYiwxF6JAh1fdxaorqpYaLnkoS8WW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Xbh7mQj6Yl76z6fGuBw3MVdSfIRc8xO0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JfNfbo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kPoVrOTPOM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yNEpniBOJkiFBdNkOj3ydJ5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nAMwe50fIcxJ3aJSfb4K9HE8NaHgqVAu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DE;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DE;->A02()V

    return-void
.end method

.method public constructor <init>([J[JJ)V
    .locals 0

    .line 27272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27273
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DE;->A02:[J

    .line 27274
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DE;->A01:[J

    .line 27275
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/DE;->A00:J

    .line 27276
    return-void
.end method

.method public static A00(JJLcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/DE;
    .locals 17

    .line 27277
    move-wide/from16 v2, p2

    const/16 v0, 0xa

    move-object/from16 v15, p5

    invoke-virtual {v15, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 27278
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v4

    .line 27279
    .local v4, "numFrames":I
    const/4 v0, 0x0

    if-gtz v4, :cond_0

    .line 27280
    return-object v0

    .line 27281
    :cond_0
    move-object/from16 v1, p4

    iget v6, v1, Lcom/facebook/ads/redexgen/X/Bb;->A03:I

    .line 27282
    .local v6, "sampleRate":I
    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    .line 27283
    const/16 v0, 0x7d00

    if-lt v6, v0, :cond_5

    const/16 v0, 0x480

    :goto_0
    int-to-long v4, v0

    mul-long/2addr v9, v4

    int-to-long v11, v6

    .line 27284
    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Hs;->A0F(JJJ)J

    move-result-wide v6

    .line 27285
    .local v7, "durationUs":J
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v13

    .line 27286
    .local v9, "entryCount":I
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v16

    .line 27287
    .local v10, "scale":I
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v12

    .line 27288
    .local v11, "entrySize":I
    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 27289
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bb;->A02:I

    int-to-long v0, v0

    add-long v4, v2, v0

    .line 27290
    .local v13, "minPosition":J
    new-array v14, v13, [J

    .line 27291
    .local v15, "timesUs":[J
    new-array v11, v13, [J

    .line 27292
    .local v5, "positions":[J
    const/4 v10, 0x0

    .end local p4    # null:Lcom/facebook/ads/redexgen/X/Bb;
    .local v2, "position":J
    .local v12, "index":I
    :goto_1
    if-ge v10, v13, :cond_7

    .line 27293
    int-to-long v8, v10

    mul-long/2addr v8, v6

    .end local v6    # "sampleRate":I
    .end local v7    # "durationUs":J
    .local v16, "sampleRate":I
    .local p0, "durationUs":J
    int-to-long v0, v13

    div-long/2addr v8, v0

    aput-wide v8, v14, v10

    .line 27294
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    aput-wide v0, v11, v10

    .line 27295
    const/4 v0, 0x1

    if-eq v12, v0, :cond_3

    const/4 v0, 0x2

    if-eq v12, v0, :cond_2

    const/4 v0, 0x3

    if-eq v12, v0, :cond_1

    const/4 v0, 0x4

    if-eq v12, v0, :cond_4

    .line 27296
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DE;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27297
    .end local v6
    :cond_1
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v0

    .line 27298
    .restart local v6    # "sampleRate":I
    goto :goto_2

    .line 27299
    .end local v6    # "sampleRate":I
    :cond_2
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    .line 27300
    .restart local v6    # "sampleRate":I
    goto :goto_2

    .line 27301
    .end local v6    # "sampleRate":I
    :cond_3
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    .line 27302
    .restart local v6    # "sampleRate":I
    goto :goto_2

    .line 27303
    :cond_4
    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Hc;->A0H()I

    move-result v0

    .line 27304
    .local v6, "segmentSize":I
    :goto_2
    mul-int v0, v0, v16

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 27305
    .end local v6    # "segmentSize":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 27306
    :cond_5
    const/16 v0, 0x240

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/DE;->A04:[Ljava/lang/String;

    const-string v1, "shzBCu6iNjpu9oAeJ3X3cqRaPh16FJGu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "4tLpe6sFHaeg4HGZmZj3jIz6GaNzZHiC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 27307
    .end local v16    # "sampleRate":I
    .end local p0    # "durationUs":J
    .local v6, "sampleRate":I
    .restart local v7    # "durationUs":J
    .end local v6    # "sampleRate":I
    .end local v7    # "durationUs":J
    .end local v12    # "index":I
    .restart local v16    # "sampleRate":I
    .restart local p0    # "durationUs":J
    :cond_7
    const-wide/16 v8, -0x1

    move-wide/from16 v0, p0

    cmp-long v4, v0, v8

    if-eqz v4, :cond_8

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    .line 27308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    const/16 v5, 0x19

    const/16 v4, 0x4a

    invoke-static {v9, v5, v4}, Lcom/facebook/ads/redexgen/X/DE;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x6a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/DE;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1b

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DE;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27309
    .end local v2    # "position":J
    .end local p0    # "durationUs":J
    .local v1, "durationUs":J
    .restart local p4    # null:Lcom/facebook/ads/redexgen/X/Bb;
    :cond_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/DE;

    invoke-direct {v0, v14, v11, v6, v7}, Lcom/facebook/ads/redexgen/X/DE;-><init>([J[JJ)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/DE;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1

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

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DE;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x47t
        0x4bt
        0x1dt
        0x9t
        0x19t
        0x2t
        0x6bt
        0x2ft
        0x2at
        0x3ft
        0x2at
        0x6bt
        0x38t
        0x22t
        0x31t
        0x2et
        0x6bt
        0x26t
        0x22t
        0x38t
        0x26t
        0x2at
        0x3ft
        0x28t
        0x23t
        0x71t
        0x6bt
        0x0t
        0x34t
        0x24t
        0x3ft
        0x5t
        0x33t
        0x33t
        0x3dt
        0x33t
        0x24t
    .end array-data
.end method


# virtual methods
.method public final A6Y()J
    .locals 2

    .line 27310
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DE;->A00:J

    return-wide v0
.end method

.method public final A7a(J)Lcom/facebook/ads/redexgen/X/Bd;
    .locals 8

    .line 27311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DE;->A02:[J

    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4, v4}, Lcom/facebook/ads/redexgen/X/Hs;->A0B([JJZZ)I

    move-result v7

    .line 27312
    .local v0, "tableIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DE;->A02:[J

    aget-wide v2, v0, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DE;->A01:[J

    aget-wide v0, v0, v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(JJ)V

    .line 27313
    .local v2, "seekPoint":Lcom/facebook/ads/redexgen/X/Bf;
    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/Bf;->A01:J

    cmp-long v0, v1, p1

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DE;->A02:[J

    array-length v0, v1

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_1

    .line 27314
    .end local v1
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0

    .line 27315
    :cond_1
    add-int/lit8 v0, v7, 0x1

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DE;->A01:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v2, v1, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(JJ)V

    .line 27316
    .local v1, "nextSeekPoint":Lcom/facebook/ads/redexgen/X/Bf;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0
.end method

.method public final A7q(J)J
    .locals 3

    .line 27317
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DE;->A02:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DE;->A01:[J

    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0B([JJZZ)I

    move-result v0

    aget-wide v0, v2, v0

    return-wide v0
.end method

.method public final A8v()Z
    .locals 1

    .line 27318
    const/4 v0, 0x1

    return v0
.end method
