.class public final Lcom/facebook/ads/redexgen/X/BR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/VA;
.implements Lcom/facebook/ads/redexgen/X/BX;
.implements Lcom/facebook/ads/redexgen/X/Gj;
.implements Lcom/facebook/ads/redexgen/X/Gm;
.implements Lcom/facebook/ads/redexgen/X/En;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/EN;,
        Lcom/facebook/ads/redexgen/X/VE;,
        Lcom/facebook/ads/redexgen/X/VD;,
        Lcom/facebook/ads/redexgen/X/EO;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/VA;",
        "Lcom/facebook/ads/redexgen/X/BX;",
        "Lcom/facebook/ads/redexgen/X/Gj<",
        "Lcom/facebook/ads/redexgen/X/VE;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/Gm;",
        "Lcom/facebook/ads/redexgen/X/En;"
    }
.end annotation


# static fields
.field public static A0c:[B

.field public static A0d:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/Be;

.field public A08:Lcom/facebook/ads/redexgen/X/VB;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:[I

.field public A0K:[Lcom/facebook/ads/redexgen/X/V9;

.field public A0L:[Z

.field public A0M:[Z

.field public A0N:[Z

.field public final A0O:I

.field public final A0P:J

.field public final A0Q:Landroid/net/Uri;

.field public final A0R:Landroid/os/Handler;

.field public final A0S:Lcom/facebook/ads/redexgen/X/EN;

.field public final A0T:Lcom/facebook/ads/redexgen/X/EO;

.field public final A0U:Lcom/facebook/ads/redexgen/X/Ee;

.field public final A0V:Lcom/facebook/ads/redexgen/X/GP;

.field public final A0W:Lcom/facebook/ads/redexgen/X/GX;

.field public final A0X:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/HJ;

.field public final A0Z:Ljava/lang/Runnable;

.field public final A0a:Ljava/lang/Runnable;

.field public final A0b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 23309
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uM3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HhtEoeszujhq2hqW803X6wAUFNr2yIvk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "llgRlYE2HHrDKVr9Tlv1gg4sawaKL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gd26Zevc0BeMQVnsPvgEWj4kMHitbDqE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "B56DgxYfwXnRdFUWoxgY8ZwWxUmrPQlR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "o6X9hbG4Io42IRbcZylLcsRNIhbJFPRA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SBfu1SOz9uKNnyoy8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5PtJb97AhuhjIJJCziWFyl83Esr9CMYA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BR;->A0B()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GX;[Lcom/facebook/ads/redexgen/X/BV;ILcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/EO;Lcom/facebook/ads/redexgen/X/GP;Ljava/lang/String;I)V
    .locals 4
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23311
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0Q:Landroid/net/Uri;

    .line 23312
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/BR;->A0W:Lcom/facebook/ads/redexgen/X/GX;

    .line 23313
    iput p4, p0, Lcom/facebook/ads/redexgen/X/BR;->A0O:I

    .line 23314
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/BR;->A0U:Lcom/facebook/ads/redexgen/X/Ee;

    .line 23315
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/BR;->A0T:Lcom/facebook/ads/redexgen/X/EO;

    .line 23316
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/BR;->A0V:Lcom/facebook/ads/redexgen/X/GP;

    .line 23317
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/BR;->A0b:Ljava/lang/String;

    .line 23318
    int-to-long v0, p9

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0P:J

    .line 23319
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BR;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    .line 23320
    new-instance v0, Lcom/facebook/ads/redexgen/X/EN;

    invoke-direct {v0, p3, p0}, Lcom/facebook/ads/redexgen/X/EN;-><init>([Lcom/facebook/ads/redexgen/X/BV;Lcom/facebook/ads/redexgen/X/BX;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0S:Lcom/facebook/ads/redexgen/X/EN;

    .line 23321
    new-instance v0, Lcom/facebook/ads/redexgen/X/HJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HJ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0Y:Lcom/facebook/ads/redexgen/X/HJ;

    .line 23322
    new-instance v0, Lcom/facebook/ads/redexgen/X/EL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EL;-><init>(Lcom/facebook/ads/redexgen/X/BR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0Z:Ljava/lang/Runnable;

    .line 23323
    new-instance v0, Lcom/facebook/ads/redexgen/X/EM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EM;-><init>(Lcom/facebook/ads/redexgen/X/BR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0a:Ljava/lang/Runnable;

    .line 23324
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0R:Landroid/os/Handler;

    .line 23325
    const/4 v1, 0x0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0J:[I

    .line 23326
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/V9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    .line 23327
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    .line 23328
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:J

    .line 23329
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    .line 23330
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    .line 23331
    const/4 p4, 0x3

    .line 23332
    :cond_0
    iput p4, p0, Lcom/facebook/ads/redexgen/X/BR;->A00:I

    .line 23333
    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Ee;->A03()V

    .line 23334
    return-void
.end method

.method private A00()I
    .locals 5

    .line 23335
    const/4 v4, 0x0

    .line 23336
    .local v0, "extractedSamplesCount":I
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 23337
    .local v4, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0C()I

    move-result v0

    add-int/2addr v4, v0

    .line 23338
    .end local v4    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23339
    :cond_0
    return v4
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/VE;JJLjava/io/IOException;)I
    .locals 21

    move-object/from16 v0, p0

    move-object v0, v0

    .line 23340
    move-object/from16 v19, p6

    invoke-static/range {v19 .. v19}, Lcom/facebook/ads/redexgen/X/BR;->A0N(Ljava/io/IOException;)Z

    move-result v20

    .line 23341
    .local v20, "isErrorFatal":Z
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/BR;->A0U:Lcom/facebook/ads/redexgen/X/Ee;

    .line 23342
    move-object/from16 v1, p1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VE;->A03(Lcom/facebook/ads/redexgen/X/VE;)Lcom/facebook/ads/redexgen/X/Gb;

    move-result-object v3

    .line 23343
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VE;->A00(Lcom/facebook/ads/redexgen/X/VE;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    .line 23344
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VE;->A01(Lcom/facebook/ads/redexgen/X/VE;)J

    move-result-wide v17

    .line 23345
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-virtual/range {v2 .. v20}, Lcom/facebook/ads/redexgen/X/Ee;->A0H(Lcom/facebook/ads/redexgen/X/Gb;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 23346
    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/BR;->A0E(Lcom/facebook/ads/redexgen/X/VE;)V

    .line 23347
    if-eqz v20, :cond_0

    .line 23348
    const/4 v0, 0x3

    return v0

    .line 23349
    :cond_0
    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/BR;->A00()I

    move-result v4

    .line 23350
    .local v1, "extractedSamplesCount":I
    iget v2, v0, Lcom/facebook/ads/redexgen/X/BR;->A02:I

    const/4 v3, 0x1

    if-le v4, v2, :cond_3

    const/4 v2, 0x1

    .line 23351
    .local v2, "madeProgress":Z
    :goto_0
    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/BR;->A0L(Lcom/facebook/ads/redexgen/X/VE;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23352
    if-eqz v2, :cond_1

    .line 23353
    :goto_1
    return v3

    .line 23354
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 23355
    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    .line 23356
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private A02()J
    .locals 7

    .line 23357
    const-wide/high16 v3, -0x8000000000000000L

    .line 23358
    .local v0, "largestQueuedTimestampUs":J
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v5, v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v6, v2

    .line 23359
    .local v5, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0F()J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 23360
    .end local v5    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23361
    :cond_0
    return-wide v3
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/BR;)J
    .locals 1

    .line 23362
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0P:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/BR;)Landroid/os/Handler;
    .locals 0

    .line 23363
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0R:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/BR;)Lcom/facebook/ads/redexgen/X/VB;
    .locals 0

    .line 23364
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BR;->A08:Lcom/facebook/ads/redexgen/X/VB;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/BR;)Ljava/lang/Runnable;
    .locals 0

    .line 23365
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0a:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/BR;->A0c:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/BR;)Ljava/lang/String;
    .locals 0

    .line 23366
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0b:Ljava/lang/String;

    return-object p0
.end method

.method private A09()V
    .locals 8

    .line 23367
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0H:Z

    if-nez v0, :cond_1

    .line 23368
    .end local v0
    .end local v1
    :cond_0
    return-void

    .line 23369
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v2, v3

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, v3, v1

    .line 23370
    .local v4, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0G()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    if-nez v0, :cond_2

    .line 23371
    return-void

    .line 23372
    .end local v4    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23373
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0Y:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HJ;->A01()Z

    .line 23374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v6, v0

    .line 23375
    .local v0, "trackCount":I
    new-array v5, v6, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    .line 23376
    .local v1, "trackArray":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0N:[Z

    .line 23377
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0L:[Z

    .line 23378
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0M:[Z

    .line 23379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Be;->A6Y()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    .line 23380
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x1

    if-ge v3, v6, :cond_6

    .line 23381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0G()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    .line 23382
    .local v5, "trackFormat":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    new-array v1, v4, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aput-object v2, v1, v7

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;-><init>([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    aput-object v0, v5, v3

    .line 23383
    iget-object v1, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    .line 23384
    .local v6, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HV;->A0B(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HV;->A09(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23385
    .local v4, "isAudioVideo":Z
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0N:[Z

    aput-boolean v4, v0, v3

    .line 23386
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0A:Z

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0A:Z

    .line 23387
    .end local v4    # "isAudioVideo":Z
    .end local v5    # "trackFormat":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .end local v6    # "mimeType":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23388
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 23389
    .end local v3    # "i":I
    :cond_6
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-direct {v0, v5}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    .line 23390
    iget v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0O:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_7

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v5, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    .line 23391
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Be;->A6Y()J

    move-result-wide v5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v1

    if-nez v0, :cond_7

    .line 23392
    const/4 v3, 0x6

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, "7a3gC0RfnKvRSexgB6r2d4KLSEZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A00:I

    .line 23393
    :cond_7
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/BR;->A0F:Z

    .line 23394
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0T:Lcom/facebook/ads/redexgen/X/EO;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Be;->A8v()Z

    move-result v0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/EO;->ACa(JZ)V

    .line 23395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A08:Lcom/facebook/ads/redexgen/X/VB;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/VB;->AC9(Lcom/facebook/ads/redexgen/X/VA;)V

    .line 23396
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0A()V
    .locals 15

    .line 23397
    move-object v0, p0

    new-instance v9, Lcom/facebook/ads/redexgen/X/VE;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/BR;->A0Q:Landroid/net/Uri;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/BR;->A0W:Lcom/facebook/ads/redexgen/X/GX;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/BR;->A0S:Lcom/facebook/ads/redexgen/X/EN;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/BR;->A0Y:Lcom/facebook/ads/redexgen/X/HJ;

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/VE;-><init>(Lcom/facebook/ads/redexgen/X/BR;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/GX;Lcom/facebook/ads/redexgen/X/EN;Lcom/facebook/ads/redexgen/X/HJ;)V

    .line 23398
    .local v0, "loadable":Lcom/facebook/ads/redexgen/X/VE;
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/BR;->A0F:Z

    if-eqz v1, :cond_1

    .line 23399
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0I()Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23400
    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v5

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    cmp-long v1, v2, v7

    if-ltz v1, :cond_0

    .line 23401
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/BR;->A0B:Z

    .line 23402
    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    .line 23403
    return-void

    .line 23404
    :cond_0
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    .line 23405
    invoke-interface {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Be;->A7a(J)Lcom/facebook/ads/redexgen/X/Bd;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/Bd;->A00:Lcom/facebook/ads/redexgen/X/Bf;

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/Bf;->A00:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    .line 23406
    invoke-virtual {v9, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/VE;->A04(JJ)V

    .line 23407
    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    .line 23408
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A00()I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/BR;->A02:I

    .line 23409
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/BR;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/BR;->A00:I

    invoke-virtual {v2, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/Gl;Lcom/facebook/ads/redexgen/X/Gj;I)J

    move-result-wide v12

    .line 23410
    .local v1, "elapsedRealtimeMs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/BR;->A0U:Lcom/facebook/ads/redexgen/X/Ee;

    .line 23411
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/VE;->A03(Lcom/facebook/ads/redexgen/X/VE;)Lcom/facebook/ads/redexgen/X/Gb;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23412
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/VE;->A00(Lcom/facebook/ads/redexgen/X/VE;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    .line 23413
    invoke-virtual/range {v1 .. v13}, Lcom/facebook/ads/redexgen/X/Ee;->A0E(Lcom/facebook/ads/redexgen/X/Gb;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJ)V

    .line 23414
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BR;->A0c:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x6dt
        0x63t
        0x66t
        0x67t
        0x70t
        0x38t
        0x47t
        0x7at
        0x76t
        0x70t
        0x63t
        0x61t
        0x76t
        0x6dt
        0x70t
        0x4ft
        0x67t
        0x66t
        0x6bt
        0x63t
        0x52t
        0x67t
        0x70t
        0x6bt
        0x6dt
        0x66t
    .end array-data
.end method

.method private A0C(I)V
    .locals 8

    .line 23415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0M:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 23416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    .line 23417
    .local v0, "trackFormat":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0U:Lcom/facebook/ads/redexgen/X/Ee;

    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    .line 23418
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HV;->A01(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:J

    .line 23419
    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Ee;->A06(ILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;J)V

    .line 23420
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0M:[Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, "eh27oOHcwVOmHzYfi8kDTS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-boolean v0, v3, p1

    .line 23421
    .end local v0    # "trackFormat":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(I)V
    .locals 6

    .line 23422
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0N:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v0, v0, p1

    .line 23423
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0M()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23424
    :cond_0
    return-void

    .line 23425
    :cond_1
    const-wide/16 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, "sgNFiq5UDquEcD4Be"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "0a9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    .line 23426
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0E:Z

    .line 23427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0D:Z

    .line 23428
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:J

    .line 23429
    iput v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:I

    .line 23430
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v0, v2, v3

    .line 23431
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0I()V

    .line 23432
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23433
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A08:Lcom/facebook/ads/redexgen/X/VB;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Ep;->AAc(Lcom/facebook/ads/redexgen/X/Eq;)V

    .line 23434
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/VE;)V
    .locals 5

    .line 23435
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 23436
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/VE;->A02(Lcom/facebook/ads/redexgen/X/VE;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:J

    .line 23437
    :cond_0
    return-void
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/VE;JJ)V
    .locals 20

    .line 23438
    move-object/from16 v2, p0

    move-object v2, v2

    iget-wide v5, v2, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 23439
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/BR;->A02()J

    move-result-wide v5

    .line 23440
    .local v1, "largestQueuedTimestampUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    .line 23441
    const-wide/16 v0, 0x0

    .line 23442
    :goto_0
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    .line 23443
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/BR;->A0T:Lcom/facebook/ads/redexgen/X/EO;

    iget-wide v3, v2, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Be;->A8v()Z

    move-result v0

    invoke-interface {v1, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/EO;->ACa(JZ)V

    .line 23444
    .end local v1    # "largestQueuedTimestampUs":J
    :cond_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/BR;->A0U:Lcom/facebook/ads/redexgen/X/Ee;

    .line 23445
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VE;->A03(Lcom/facebook/ads/redexgen/X/VE;)Lcom/facebook/ads/redexgen/X/Gb;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 23446
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VE;->A00(Lcom/facebook/ads/redexgen/X/VE;)J

    move-result-wide v10

    iget-wide v12, v2, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    .line 23447
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VE;->A01(Lcom/facebook/ads/redexgen/X/VE;)J

    move-result-wide v18

    .line 23448
    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v3 .. v19}, Lcom/facebook/ads/redexgen/X/Ee;->A0G(Lcom/facebook/ads/redexgen/X/Gb;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJJJ)V

    .line 23449
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/BR;->A0E(Lcom/facebook/ads/redexgen/X/VE;)V

    .line 23450
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/BR;->A0B:Z

    .line 23451
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/BR;->A08:Lcom/facebook/ads/redexgen/X/VB;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Ep;->AAc(Lcom/facebook/ads/redexgen/X/Eq;)V

    .line 23452
    return-void

    .line 23453
    :cond_1
    const-wide/16 v0, 0x2710

    add-long/2addr v0, v5

    goto :goto_0
.end method

.method private final A0G(Lcom/facebook/ads/redexgen/X/VE;JJZ)V
    .locals 19

    move-object/from16 v1, p0

    move-object v1, v1

    .line 23454
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/BR;->A0U:Lcom/facebook/ads/redexgen/X/Ee;

    .line 23455
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VE;->A03(Lcom/facebook/ads/redexgen/X/VE;)Lcom/facebook/ads/redexgen/X/Gb;

    move-result-object v3

    .line 23456
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VE;->A00(Lcom/facebook/ads/redexgen/X/VE;)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/facebook/ads/redexgen/X/BR;->A03:J

    .line 23457
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VE;->A01(Lcom/facebook/ads/redexgen/X/VE;)J

    move-result-wide v17

    .line 23458
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-virtual/range {v2 .. v18}, Lcom/facebook/ads/redexgen/X/Ee;->A0F(Lcom/facebook/ads/redexgen/X/Gb;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJJJ)V

    .line 23459
    if-nez p6, :cond_1

    .line 23460
    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/BR;->A0E(Lcom/facebook/ads/redexgen/X/VE;)V

    .line 23461
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v4, v2

    .line 23462
    .local v4, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0I()V

    .line 23463
    .end local v4    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23464
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/BR;->A01:I

    if-lez v0, :cond_1

    .line 23465
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/BR;->A08:Lcom/facebook/ads/redexgen/X/VB;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Ep;->AAc(Lcom/facebook/ads/redexgen/X/Eq;)V

    .line 23466
    :cond_1
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/BR;)V
    .locals 0

    .line 23467
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A09()V

    return-void
.end method

.method private A0I()Z
    .locals 5

    .line 23468
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0J()Z
    .locals 1

    .line 23469
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0D:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0I()Z

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

.method private A0K(J)Z
    .locals 7

    .line 23470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v6, v0

    .line 23471
    .local v0, "trackCount":I
    const/4 v5, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v5, v6, :cond_4

    .line 23472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v0, v0, v5

    .line 23473
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0J()V

    .line 23474
    const/4 v4, 0x0

    invoke-virtual {v0, p1, p2, v2, v4}, Lcom/facebook/ads/redexgen/X/V9;->A0D(JZZ)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 23475
    .local v2, "seekInsideQueue":Z
    :goto_1
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0N:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_0

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0A:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, "iCn5X7g6PoYVWCe4GwpQYWYt9drfTGBT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "IDd3eJ2NBG0wgz78gdspZyWtrcrofueQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 23476
    :cond_0
    return v4

    .line 23477
    .end local v2    # "seekInsideQueue":Z
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23478
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23479
    .end local v1    # "i":I
    :cond_4
    return v2
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/VE;I)Z
    .locals 7

    .line 23480
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A05:J

    const/4 v6, 0x1

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Be;->A6Y()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 23481
    :cond_0
    iput p2, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1

    .line 23482
    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, "F1SGTXFlfQdsRtCv2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "c29"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v6

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23483
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0F:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0J()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23484
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/BR;->A0E:Z

    .line 23485
    return v5

    .line 23486
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0F:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0D:Z

    .line 23487
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:J

    .line 23488
    iput v5, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:I

    .line 23489
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v1, v4

    :goto_0
    if-ge v5, v1, :cond_4

    aget-object v0, v4, v5

    .line 23490
    .local v6, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0I()V

    .line 23491
    .end local v6    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23492
    :cond_4
    invoke-virtual {p1, v2, v3, v2, v3}, Lcom/facebook/ads/redexgen/X/VE;->A04(JJ)V

    .line 23493
    return v6
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/BR;)Z
    .locals 0

    .line 23494
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0G:Z

    return p0
.end method

.method public static A0N(Ljava/io/IOException;)Z
    .locals 0

    .line 23495
    instance-of p0, p0, Lcom/facebook/ads/redexgen/X/V7;

    return p0
.end method


# virtual methods
.method public final A0O(IJ)I
    .locals 5

    .line 23496
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23497
    const/4 v0, 0x0

    return v0

    .line 23498
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v3, v0, p1

    .line 23499
    .local v0, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0B:Z

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/V9;->A0F()J

    move-result-wide v1

    cmp-long v0, p2, v1

    if-lez v0, :cond_3

    .line 23500
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/V9;->A0A()I

    move-result v4

    .line 23501
    .local v1, "skipCount":I
    :cond_1
    :goto_0
    if-lez v4, :cond_2

    .line 23502
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BR;->A0C(I)V

    .line 23503
    :goto_1
    return v4

    .line 23504
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BR;->A0D(I)V

    goto :goto_1

    .line 23505
    .end local v1    # "skipCount":I
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v3, p2, p3, v0, v0}, Lcom/facebook/ads/redexgen/X/V9;->A0D(JZZ)I

    move-result v4

    .line 23506
    .restart local v1    # "skipCount":I
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, "NIYG9FQCzFZSe10IE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "6cN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    .line 23507
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0P(ILcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I
    .locals 10

    .line 23508
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0J()Z

    move-result v0

    const/4 v2, -0x3

    if-eqz v0, :cond_0

    .line 23509
    return v2

    .line 23510
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v3, v0, p1

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/BR;->A0B:Z

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:J

    .line 23511
    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/V9;->A0E(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;ZZJ)I

    move-result v1

    .line 23512
    .local v0, "result":I
    const/4 v0, -0x4

    if-ne v1, v0, :cond_2

    .line 23513
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BR;->A0C(I)V

    .line 23514
    :cond_1
    :goto_0
    return v1

    .line 23515
    :cond_2
    if-ne v1, v2, :cond_1

    .line 23516
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BR;->A0D(I)V

    goto :goto_0
.end method

.method public final A0Q()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23517
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A06(I)V

    .line 23518
    return-void
.end method

.method public final A0R()V
    .locals 4

    .line 23519
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0F:Z

    if-eqz v0, :cond_0

    .line 23520
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 23521
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0H()V

    .line 23522
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23523
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Ua;->A07(Lcom/facebook/ads/redexgen/X/Gm;)V

    .line 23524
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0R:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23525
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A08:Lcom/facebook/ads/redexgen/X/VB;

    .line 23526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0G:Z

    .line 23527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0U:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A04()V

    .line 23528
    return-void
.end method

.method public final A0S(I)Z
    .locals 1

    .line 23529
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0J()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0M()Z

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

.method public final A4D(J)Z
    .locals 2

    .line 23530
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0E:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0F:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A01:I

    if-nez v0, :cond_1

    .line 23531
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 23532
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0Y:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HJ;->A02()Z

    move-result v1

    .line 23533
    .local v0, "continuedLoading":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ua;->A08()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23534
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0A()V

    .line 23535
    const/4 v1, 0x1

    .line 23536
    :cond_2
    return v1
.end method

.method public final A4s(JZ)V
    .locals 4

    .line 23537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v3, v0

    .line 23538
    .local v0, "trackCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 23539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v1, v0, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0L:[Z

    aget-boolean v0, v0, v2

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/V9;->A0K(JZZ)V

    .line 23540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23541
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final A5G()V
    .locals 2

    .line 23542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0H:Z

    .line 23543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23544
    return-void
.end method

.method public final A5g(JLcom/facebook/ads/redexgen/X/9q;)J
    .locals 9

    .line 23545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Be;->A8v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23546
    const-wide/16 v0, 0x0

    return-wide v0

    .line 23547
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    move-wide v2, p1

    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Be;->A7a(J)Lcom/facebook/ads/redexgen/X/Bd;

    move-result-object v1

    .line 23548
    .local v0, "seekPoints":Lcom/facebook/ads/redexgen/X/Bd;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Bd;->A00:Lcom/facebook/ads/redexgen/X/Bf;

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/Bf;->A01:J

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Bd;->A01:Lcom/facebook/ads/redexgen/X/Bf;

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/Bf;->A01:J

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Hs;->A0I(JLcom/facebook/ads/redexgen/X/9q;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A5w()J
    .locals 8

    .line 23549
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0B:Z

    const-wide/high16 v6, -0x8000000000000000L

    if-eqz v0, :cond_0

    .line 23550
    return-wide v6

    .line 23551
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23552
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, "ld4wWqv9tK9nTvU7QEEl8vpde5wWqGSi"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-wide v3

    .line 23553
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0A:Z

    if-eqz v0, :cond_4

    .line 23554
    const-wide v2, 0x7fffffffffffffffL

    .line 23555
    .local v3, "largestQueuedTimestampUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v5, v0

    .line 23556
    .local v0, "trackCount":I
    const/4 v4, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v4, v5, :cond_5

    .line 23557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0N:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_3

    .line 23558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v0, v0, v4

    .line 23559
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0F()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 23560
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 23561
    .end local v3    # "largestQueuedTimestampUs":J
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A02()J

    move-result-wide v2

    .line 23562
    .restart local v3    # "largestQueuedTimestampUs":J
    :cond_5
    cmp-long v0, v2, v6

    if-nez v0, :cond_6

    .line 23563
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:J

    .line 23564
    :cond_6
    return-wide v2
.end method

.method public final A7B()J
    .locals 2

    .line 23565
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A01:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BR;->A5w()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final A7t()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;
    .locals 1

    .line 23566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    return-object v0
.end method

.method public final A9k()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23567
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0Q()V

    .line 23568
    return-void
.end method

.method public final bridge synthetic ABS(Lcom/facebook/ads/redexgen/X/Gl;JJZ)V
    .locals 7

    .line 23569
    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/VE;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/BR;->A0G(Lcom/facebook/ads/redexgen/X/VE;JJZ)V

    return-void
.end method

.method public final bridge synthetic ABU(Lcom/facebook/ads/redexgen/X/Gl;JJ)V
    .locals 6

    .line 23570
    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/VE;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/BR;->A0F(Lcom/facebook/ads/redexgen/X/VE;JJ)V

    return-void
.end method

.method public final bridge synthetic ABV(Lcom/facebook/ads/redexgen/X/Gl;JJLjava/io/IOException;)I
    .locals 7

    .line 23571
    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/VE;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/BR;->A01(Lcom/facebook/ads/redexgen/X/VE;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public final ABZ()V
    .locals 4

    .line 23572
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 23573
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0I()V

    .line 23574
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23575
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0S:Lcom/facebook/ads/redexgen/X/EN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EN;->A03()V

    .line 23576
    return-void
.end method

.method public final ACt(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 2

    .line 23577
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23578
    return-void
.end method

.method public final ADY(Lcom/facebook/ads/redexgen/X/VB;J)V
    .locals 1

    .line 23579
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BR;->A08:Lcom/facebook/ads/redexgen/X/VB;

    .line 23580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0Y:Lcom/facebook/ads/redexgen/X/HJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HJ;->A02()Z

    .line 23581
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0A()V

    .line 23582
    return-void
.end method

.method public final ADt()J
    .locals 5

    .line 23583
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0C:Z

    if-nez v0, :cond_0

    .line 23584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0U:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A05()V

    .line 23585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0C:Z

    .line 23586
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0D:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0B:Z

    if-nez v0, :cond_1

    .line 23587
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A02:I

    if-le v1, v0, :cond_2

    .line 23588
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0D:Z

    .line 23589
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:J

    return-wide v0

    .line 23590
    :cond_2
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, "a8TiTKBNhx8jXxPRrcAgh1BUcIw96G2f"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "NHpS1UqcJuZi4hHtySMRiLK65X8yfSYb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public final AE0(J)V
    .locals 0

    .line 23591
    return-void
.end method

.method public final AEd(Lcom/facebook/ads/redexgen/X/Be;)V
    .locals 2

    .line 23592
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    .line 23593
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23594
    return-void
.end method

.method public final AEg(J)J
    .locals 5

    .line 23595
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A07:Lcom/facebook/ads/redexgen/X/Be;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Be;->A8v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23596
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BR;->A04:J

    .line 23597
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0D:Z

    .line 23598
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0I()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BR;->A0K(J)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v1, "4t4h1X84Q9aXzP6i3O1IFqP61fZwJyic"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "YchhDxV7HDCpyjRy2lVbypcIuIxdt4SR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 23599
    return-wide p1

    .line 23600
    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23601
    :cond_2
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0E:Z

    .line 23602
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BR;->A06:J

    .line 23603
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BR;->A0B:Z

    .line 23604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ua;->A08()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ua;->A05()V

    .line 23606
    :cond_3
    return-wide p1

    .line 23607
    :cond_4
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v1, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v0, v2, v3

    .line 23608
    .local v3, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0I()V

    .line 23609
    .end local v3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public final AEh([Lcom/facebook/ads/redexgen/X/GJ;[Z[Lcom/facebook/ads/redexgen/X/Eo;[ZJ)J
    .locals 9

    .line 23610
    move-object v5, p0

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A0F:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23611
    iget v1, v5, Lcom/facebook/ads/redexgen/X/BR;->A01:I

    .line 23612
    .local v5, "oldEnabledTrackCount":I
    const/4 v2, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p1

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 23613
    aget-object v8, p3, v2

    sget-object v7, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v6, v7, v0

    const/4 v0, 0x5

    aget-object v7, v7, v0

    const/16 v0, 0x13

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v6, v0, :cond_2

    sget-object v7, Lcom/facebook/ads/redexgen/X/BR;->A0d:[Ljava/lang/String;

    const-string v6, "mg4ta7ka0nUwB4FGZ9fOP"

    const/4 v0, 0x2

    aput-object v6, v7, v0

    if-eqz v8, :cond_1

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    aget-boolean v0, p2, v2

    if-nez v0, :cond_1

    .line 23614
    :cond_0
    aget-object v0, p3, v2

    check-cast v0, Lcom/facebook/ads/redexgen/X/VD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VD;->A00(Lcom/facebook/ads/redexgen/X/VD;)I

    move-result v6

    .line 23615
    .local v7, "track":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A0L:[Z

    aget-boolean v0, v0, v6

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23616
    iget v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A01:I

    sub-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A01:I

    .line 23617
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A0L:[Z

    aput-boolean v4, v0, v6

    .line 23618
    const/4 v0, 0x0

    aput-object v0, p3, v2

    .line 23619
    .end local v7    # "track":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23620
    .end local v6    # "i":I
    :cond_3
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A0I:Z

    if-eqz v0, :cond_8

    if-nez v1, :cond_9

    :goto_1
    const/4 v1, 0x1

    .line 23621
    .local v6, "seekRequired":Z
    :goto_2
    const/4 v6, 0x0

    .local v7, "i":I
    :goto_3
    array-length v0, p1

    if-ge v6, v0, :cond_a

    .line 23622
    aget-object v0, p3, v6

    if-nez v0, :cond_4

    aget-object v0, p1, v6

    if-eqz v0, :cond_4

    .line 23623
    aget-object v7, p1, v6

    .line 23624
    .local p1, "selection":Lcom/facebook/ads/redexgen/X/GJ;
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/GJ;->length()I

    move-result v0

    if-ne v0, v3, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23625
    invoke-interface {v7, v4}, Lcom/facebook/ads/redexgen/X/GJ;->A6u(I)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23626
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/BR;->A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/GJ;->A7s()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)I

    move-result v2

    .line 23627
    .local p2, "track":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A0L:[Z

    aget-boolean v0, v0, v2

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 23628
    iget v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A01:I

    add-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A01:I

    .line 23629
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A0L:[Z

    aput-boolean v3, v0, v2

    .line 23630
    new-instance v0, Lcom/facebook/ads/redexgen/X/VD;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/VD;-><init>(Lcom/facebook/ads/redexgen/X/BR;I)V

    aput-object v0, p3, v6

    .line 23631
    aput-boolean v3, p4, v6

    .line 23632
    if-nez v1, :cond_4

    .line 23633
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v2, v0, v2

    .line 23634
    .local p3, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/V9;->A0J()V

    .line 23635
    invoke-virtual {v2, p5, p6, v3, v3}, Lcom/facebook/ads/redexgen/X/V9;->A0D(JZZ)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_5

    .line 23636
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/V9;->A0B()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 23637
    .end local p1    # "selection":Lcom/facebook/ads/redexgen/X/GJ;
    .end local p2    # "track":I
    .end local p3    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    :cond_4
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 23638
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 23639
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 23640
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 23641
    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v0, p5, v1

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 23642
    .end local v7    # "i":I
    :cond_a
    iget v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A01:I

    if-nez v0, :cond_c

    .line 23643
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/BR;->A0E:Z

    .line 23644
    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/BR;->A0D:Z

    .line 23645
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ua;->A08()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23646
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v1, v2

    :goto_7
    if-ge v4, v1, :cond_e

    aget-object v0, v2, v4

    .line 23647
    .local p2, "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0H()V

    .line 23648
    .end local p2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 23649
    :cond_b
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v1, v2

    :goto_8
    if-ge v4, v1, :cond_f

    aget-object v0, v2, v4

    .line 23650
    .restart local p2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V9;->A0I()V

    .line 23651
    .end local p2    # "sampleQueue":Lcom/facebook/ads/redexgen/X/V9;
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 23652
    :cond_c
    if-eqz v1, :cond_f

    .line 23653
    invoke-virtual {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/BR;->AEg(J)J

    move-result-wide p5

    .line 23654
    .end local p11
    .local v3, "positionUs":J
    const/4 v1, 0x0

    .restart local v7    # "i":I
    :goto_9
    array-length v0, p3

    if-ge v1, v0, :cond_f

    .line 23655
    aget-object v0, p3, v1

    if-eqz v0, :cond_d

    .line 23656
    aput-boolean v3, p4, v1

    .line 23657
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 23658
    :cond_e
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BR;->A0X:Lcom/facebook/ads/redexgen/X/Ua;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ua;->A05()V

    .line 23659
    .end local v7    # "i":I
    :cond_f
    iput-boolean v3, v5, Lcom/facebook/ads/redexgen/X/BR;->A0I:Z

    .line 23660
    return-wide p5
.end method

.method public final AFc(II)Lcom/facebook/ads/redexgen/X/Bh;
    .locals 4

    .line 23661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    array-length v3, v0

    .line 23662
    .local v0, "trackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 23663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0J:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 23664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aget-object v0, v0, v1

    return-object v0

    .line 23665
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23666
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0V:Lcom/facebook/ads/redexgen/X/GP;

    new-instance v2, Lcom/facebook/ads/redexgen/X/V9;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/V9;-><init>(Lcom/facebook/ads/redexgen/X/GP;)V

    .line 23667
    .local v1, "trackOutput":Lcom/facebook/ads/redexgen/X/V9;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/V9;->A0L(Lcom/facebook/ads/redexgen/X/En;)V

    .line 23668
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0J:[I

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0J:[I

    .line 23669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0J:[I

    aput p1, v0, v3

    .line 23670
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/V9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    .line 23671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BR;->A0K:[Lcom/facebook/ads/redexgen/X/V9;

    aput-object v2, v0, v3

    .line 23672
    return-object v2
.end method
