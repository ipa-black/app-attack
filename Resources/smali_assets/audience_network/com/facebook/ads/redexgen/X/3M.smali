.class public abstract Lcom/facebook/ads/redexgen/X/3M;
.super Lcom/facebook/ads/redexgen/X/Dh;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/mediacodec/MediaCodecRenderer$AdaptationWorkaroundMode;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/mediacodec/MediaCodecRenderer$ReinitializationState;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/mediacodec/MediaCodecRenderer$ReconfigurationState;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/mediacodec/MediaCodecRenderer$KeepCodecResult;,
        Lcom/facebook/ads/redexgen/X/Cv;
    }
.end annotation


# static fields
.field public static A0d:[B

.field public static A0e:[Ljava/lang/String;

.field public static final A0f:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:Landroid/media/MediaCodec;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A08:Lcom/facebook/ads/redexgen/X/BE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BE<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/BE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BE<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;"
        }
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Ct;

.field public A0B:Ljava/nio/ByteBuffer;

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z

.field public A0R:Z

.field public A0S:[Ljava/nio/ByteBuffer;

.field public A0T:[Ljava/nio/ByteBuffer;

.field public A0U:Lcom/facebook/ads/redexgen/X/Ap;

.field public final A0V:Landroid/media/MediaCodec$BufferInfo;

.field public final A0W:Lcom/facebook/ads/redexgen/X/9S;

.field public final A0X:Lcom/facebook/ads/redexgen/X/Wg;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/Wg;

.field public final A0Z:Lcom/facebook/ads/redexgen/X/BF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BF<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;"
        }
    .end annotation
.end field

.field public final A0a:Lcom/facebook/ads/redexgen/X/Cz;

.field public final A0b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final A0c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 8336
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "el1NIdjJdnQk8rQ7yI3DLJMJGUNGpsaL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cMnDkAErKs2M6cVzDcwdPqTaRDuVL2G6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3Ljz1yFix4teFI07gFBJ1ZVJZ4Elk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "rfweshkfyu7YGNu9gmTN5aJbUxr0jD44"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UwDJ5OwzyxxJZbvw2og9SG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kELoxR7DFwuexd5ZjpenISH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LMGopoJZLCWwOw1IQPtLBjMdbqq8sxxW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3M;->A0j()V

    const/16 v2, 0x3b

    const/16 v1, 0x4c

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0h(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3M;->A0f:[B

    .line 8337
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/redexgen/X/BF;Z)V
    .locals 3
    .param p3    # Lcom/facebook/ads/redexgen/X/BF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/Cz;",
            "Lcom/facebook/ads/redexgen/X/BF<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;Z)V"
        }
    .end annotation

    .line 8338
    .local p3, "drmSessionManager":Lcom/facebook/ads/redexgen/X/BF;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dh;-><init>(I)V

    .line 8339
    sget v2, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/4 v1, 0x0

    const/16 v0, 0x10

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 8340
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cz;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0a:Lcom/facebook/ads/redexgen/X/Cz;

    .line 8341
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    .line 8342
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/3M;->A0c:Z

    .line 8343
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Wg;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    .line 8344
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wg;->A02()Lcom/facebook/ads/redexgen/X/Wg;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Y:Lcom/facebook/ads/redexgen/X/Wg;

    .line 8345
    new-instance v0, Lcom/facebook/ads/redexgen/X/9S;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9S;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0W:Lcom/facebook/ads/redexgen/X/9S;

    .line 8346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0b:Ljava/util/List;

    .line 8347
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    .line 8348
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    .line 8349
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A02:I

    .line 8350
    return-void

    .line 8351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0W(Ljava/lang/String;)I
    .locals 4

    .line 8352
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x19

    if-gt v1, v0, :cond_1

    .line 8353
    const/16 v2, 0x107

    const/16 v1, 0x19

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A06:Ljava/lang/String;

    .line 8354
    const/16 v2, 0x271

    const/4 v1, 0x7

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A06:Ljava/lang/String;

    .line 8355
    const/16 v2, 0x255

    const/4 v1, 0x7

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A06:Ljava/lang/String;

    .line 8356
    const/16 v2, 0x25c

    const/4 v1, 0x7

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A06:Ljava/lang/String;

    .line 8357
    const/16 v2, 0x26a

    const/4 v1, 0x7

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8358
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 8359
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_4

    .line 8360
    const/16 v2, 0x152

    const/16 v1, 0x16

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v2, 0x168

    const/16 v1, 0x1d

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A03:Ljava/lang/String;

    .line 8361
    const/16 v2, 0x2ab

    const/16 v1, 0x8

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A03:Ljava/lang/String;

    .line 8362
    const/16 v2, 0x2b3

    const/16 v1, 0xc

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A03:Ljava/lang/String;

    .line 8363
    const/16 v2, 0x2bf

    const/4 v1, 0x7

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A03:Ljava/lang/String;

    .line 8364
    const/16 v2, 0x2dc

    const/4 v1, 0x7

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8365
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 8366
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final A0X()J
    .locals 2

    .line 8367
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static A0Y(Lcom/facebook/ads/redexgen/X/Wg;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 6

    .line 8368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wg;->A02:Lcom/facebook/ads/redexgen/X/An;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/An;->A02()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    .line 8369
    .local v0, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    if-nez p1, :cond_0

    .line 8370
    return-object p0

    .line 8371
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    .line 8372
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 8373
    :cond_1
    iget-object v5, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v4, 0x0

    aget v3, v5, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "NOzrMPRB76F8DdbUb3OPVPb4rTNpEGvY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "IDmZDsJhwqXuUzopfYWLVElAjmr2DtdU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/2addr v3, p1

    aput v3, v5, v4

    .line 8374
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0Z(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0d:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v3, v0, 0x39

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "GT4OiQXgMfCUtJ1QRZ1mZZkQ0KPtv7dD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0a(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 8375
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 8376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 8377
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0S:[Ljava/nio/ByteBuffer;

    aget-object v3, v0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "akmimywpCQzy2zgGqC6e1Zi0HtFx9MqZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "4g16x1WFaX1F1Ai56lyJAgpz1Kjl0dDQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0b(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 8378
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 8379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 8380
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0T:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private A0c()V
    .locals 4

    .line 8381
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 8382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0S:[Ljava/nio/ByteBuffer;

    .line 8383
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "BQUwUvW99pDNY9ExELsrhPAvhUrne6"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0T:[Ljava/nio/ByteBuffer;

    .line 8384
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8385
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 8386
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1G()V

    .line 8387
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1I()V

    .line 8388
    :goto_0
    return-void

    .line 8389
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0N:Z

    .line 8390
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1H()V

    goto :goto_0
.end method

.method private A0e()V
    .locals 2

    .line 8391
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 8392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0T:[Ljava/nio/ByteBuffer;

    .line 8393
    :cond_0
    return-void
.end method

.method private A0f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 8395
    .local v0, "format":Landroid/media/MediaFormat;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A00:I

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 8396
    const/16 v2, 0x2e3

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    .line 8397
    const/16 v2, 0x2cc

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 8398
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/3M;->A0O:Z

    .line 8399
    return-void

    .line 8400
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0I:Z

    if-eqz v0, :cond_1

    .line 8401
    const/16 v2, 0x278

    const/16 v1, 0xd

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 8402
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/3M;->A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 8403
    return-void
.end method

.method private A0g()V
    .locals 2

    .line 8404
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 8405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0S:[Ljava/nio/ByteBuffer;

    .line 8406
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0T:[Ljava/nio/ByteBuffer;

    .line 8407
    :cond_0
    return-void
.end method

.method private A0h()V
    .locals 2

    .line 8408
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A03:I

    .line 8409
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    .line 8410
    return-void
.end method

.method private A0i()V
    .locals 1

    .line 8411
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A04:I

    .line 8412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0B:Ljava/nio/ByteBuffer;

    .line 8413
    return-void
.end method

.method public static A0j()V
    .locals 1

    const/16 v0, 0x2e8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3M;->A0d:[B

    return-void

    :array_0
    .array-data 1
        0x55t
        0x59t
        0x1bt
        0xct
        0xdt
        0x59t
        0x17t
        0x16t
        0x59t
        0xat
        0x1ct
        0x1at
        0xct
        0xbt
        0x1ct
        0x59t
        0x1dt
        0x1ct
        0x1at
        0x16t
        0x1dt
        0x1ct
        0xbt
        0x59t
        0x18t
        0xft
        0x18t
        0x10t
        0x15t
        0x18t
        0x1bt
        0x15t
        0x1ct
        0x57t
        0x59t
        0x2dt
        0xbt
        0x0t
        0x10t
        0x17t
        0x1et
        0x59t
        0xdt
        0x16t
        0x59t
        0x9t
        0xbt
        0x16t
        0x1at
        0x1ct
        0x1ct
        0x1dt
        0x59t
        0xet
        0x10t
        0xdt
        0x11t
        0x59t
        0x13t
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x68t
        0x19t
        0x6at
        0x6at
        0x18t
        0x1et
        0x1bt
        0x68t
        0x6ft
        0x63t
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6bt
        0x6ct
        0x62t
        0x19t
        0x1ft
        0x6at
        0x1ct
        0x6bt
        0x69t
        0x68t
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6at
        0x6bt
        0x6ct
        0x6ft
        0x62t
        0x62t
        0x62t
        0x6et
        0x6at
        0x1et
        0x19t
        0x1ft
        0x6dt
        0x6bt
        0x6bt
        0x62t
        0x1bt
        0x6at
        0x6at
        0x6at
        0x68t
        0x1ct
        0x18t
        0x1ct
        0x6bt
        0x19t
        0x69t
        0x6bt
        0x19t
        0x69t
        0x68t
        0x6dt
        0x6ft
        0x1et
        0x6dt
        0x62t
        0x6bt
        0x6ct
        0x7et
        0x68t
        0x3t
        0x4t
        0x16t
        0xft
        0x58t
        0x5ft
        0x4dt
        0x4at
        0x17t
        0x3bt
        0x37t
        0x2ct
        0x39t
        0x38t
        0x0t
        0x36t
        0x29t
        0x64t
        0x37t
        0x21t
        0x37t
        0x37t
        0x2dt
        0x2bt
        0x2at
        0x64t
        0x36t
        0x21t
        0x35t
        0x31t
        0x2dt
        0x36t
        0x21t
        0x37t
        0x64t
        0x37t
        0x21t
        0x27t
        0x31t
        0x36t
        0x21t
        0x64t
        0x20t
        0x21t
        0x27t
        0x2bt
        0x20t
        0x21t
        0x36t
        0x64t
        0x22t
        0x2bt
        0x36t
        0x64t
        0x47t
        0x6ft
        0x6et
        0x63t
        0x6bt
        0x2at
        0x78t
        0x6ft
        0x7bt
        0x7ft
        0x63t
        0x78t
        0x6ft
        0x79t
        0x2at
        0x6bt
        0x2at
        0x4et
        0x78t
        0x67t
        0x59t
        0x6ft
        0x79t
        0x79t
        0x63t
        0x65t
        0x64t
        0x47t
        0x6bt
        0x64t
        0x6bt
        0x6dt
        0x6ft
        0x78t
        0x22t
        0xat
        0xbt
        0x6t
        0xet
        0x2ct
        0x0t
        0xbt
        0xat
        0xct
        0x3dt
        0xat
        0x1t
        0xbt
        0xat
        0x1dt
        0xat
        0x1dt
        0x2at
        0x28t
        0x3dt
        0x4bt
        0x20t
        0x1dt
        0x1ct
        0xbt
        0xat
        0x16t
        0x4bt
        0x4t
        0x13t
        0x6t
        0x4bt
        0x1t
        0x0t
        0x6t
        0x50t
        0x52t
        0x47t
        0x31t
        0x5at
        0x67t
        0x66t
        0x71t
        0x70t
        0x6ct
        0x31t
        0x7et
        0x69t
        0x7ct
        0x31t
        0x7bt
        0x7at
        0x7ct
        0x31t
        0x6ct
        0x7at
        0x7ct
        0x6at
        0x6dt
        0x7at
        0x24t
        0x26t
        0x33t
        0x45t
        0x26t
        0x3ft
        0x20t
        0x45t
        0x2at
        0x3et
        0x2ft
        0x22t
        0x24t
        0x45t
        0x2ft
        0x2et
        0x28t
        0x24t
        0x2ft
        0x2et
        0x39t
        0x45t
        0x26t
        0x3bt
        0x58t
        0x3ft
        0x3dt
        0x28t
        0x5et
        0x3dt
        0x24t
        0x3bt
        0x5et
        0x26t
        0x39t
        0x34t
        0x35t
        0x3ft
        0x5et
        0x34t
        0x35t
        0x33t
        0x3ft
        0x34t
        0x35t
        0x22t
        0x5et
        0x31t
        0x26t
        0x33t
        0xet
        0xct
        0x19t
        0x6ft
        0xft
        0x37t
        0x28t
        0x25t
        0x28t
        0x20t
        0x6ft
        0x29t
        0x73t
        0x77t
        0x75t
        0x6ft
        0x25t
        0x24t
        0x22t
        0x2et
        0x25t
        0x24t
        0x4t
        0x6t
        0x13t
        0x65t
        0x5t
        0x3dt
        0x22t
        0x2ft
        0x22t
        0x2at
        0x65t
        0x23t
        0x79t
        0x7dt
        0x7ft
        0x65t
        0x2ft
        0x2et
        0x28t
        0x24t
        0x2ft
        0x2et
        0x65t
        0x38t
        0x2et
        0x28t
        0x3et
        0x39t
        0x2et
        0x4t
        0x6t
        0x13t
        0x65t
        0x18t
        0xet
        0x8t
        0x65t
        0x2at
        0x3dt
        0x28t
        0x65t
        0x2ft
        0x2et
        0x28t
        0x4bt
        0x49t
        0x5ct
        0x2at
        0x57t
        0x41t
        0x47t
        0x2at
        0x65t
        0x72t
        0x67t
        0x2at
        0x60t
        0x61t
        0x67t
        0x2at
        0x77t
        0x61t
        0x67t
        0x71t
        0x76t
        0x61t
        0x6et
        0x6ct
        0x79t
        0xft
        0x40t
        0x4dt
        0x4dt
        0x56t
        0x48t
        0x4ft
        0x4ft
        0x44t
        0x53t
        0xft
        0x57t
        0x48t
        0x45t
        0x44t
        0x4et
        0xft
        0x45t
        0x44t
        0x42t
        0x4et
        0x45t
        0x44t
        0x53t
        0xft
        0x40t
        0x57t
        0x42t
        0x57t
        0x55t
        0x40t
        0x36t
        0x79t
        0x75t
        0x74t
        0x77t
        0x7ft
        0x71t
        0x7bt
        0x36t
        0x79t
        0x6et
        0x7bt
        0x36t
        0x7ct
        0x7dt
        0x7bt
        0x77t
        0x7ct
        0x7dt
        0x6at
        0x36t
        0x79t
        0x6ft
        0x7dt
        0x6bt
        0x77t
        0x75t
        0x7dt
        0x72t
        0x70t
        0x65t
        0x13t
        0x5ct
        0x50t
        0x51t
        0x52t
        0x5at
        0x54t
        0x5et
        0x13t
        0x5ct
        0x4bt
        0x5et
        0x13t
        0x59t
        0x58t
        0x5et
        0x52t
        0x59t
        0x58t
        0x4ft
        0x13t
        0x5ct
        0x4at
        0x58t
        0x4et
        0x52t
        0x50t
        0x58t
        0x13t
        0x4et
        0x58t
        0x5et
        0x48t
        0x4ft
        0x58t
        0x7bt
        0x79t
        0x6ct
        0x1at
        0x53t
        0x5bt
        0x5bt
        0x53t
        0x58t
        0x51t
        0x1at
        0x55t
        0x55t
        0x57t
        0x1at
        0x50t
        0x51t
        0x57t
        0x5bt
        0x50t
        0x51t
        0x46t
        0x5ft
        0x5dt
        0x48t
        0x3et
        0x77t
        0x7ft
        0x7ft
        0x77t
        0x7ct
        0x75t
        0x3et
        0x66t
        0x7ft
        0x62t
        0x72t
        0x79t
        0x63t
        0x3et
        0x74t
        0x75t
        0x73t
        0x7ft
        0x74t
        0x75t
        0x62t
        0x26t
        0x24t
        0x31t
        0x47t
        0x1bt
        0x2t
        0x47t
        0x1ft
        0x0t
        0xdt
        0xct
        0x6t
        0x36t
        0xdt
        0xct
        0xat
        0x6t
        0xdt
        0xct
        0x1bt
        0x47t
        0x8t
        0x1ft
        0xat
        0x39t
        0x27t
        0x47t
        0x2bt
        0x5ft
        0x5bt
        0x5at
        0xbt
        0x15t
        0x75t
        0x19t
        0x6dt
        0x6at
        0x68t
        0x69t
        0x77t
        0x17t
        0x7dt
        0x2t
        0xat
        0xat
        0x5at
        0x44t
        0x24t
        0x43t
        0x3et
        0x39t
        0x39t
        0x4ct
        0x52t
        0x32t
        0x4bt
        0x2at
        0x27t
        0x2at
        0xbt
        0x0t
        0x9t
        0x6t
        0x6t
        0xdt
        0x4t
        0x45t
        0xbt
        0x7t
        0x1dt
        0x6t
        0x1ct
        0x4t
        0x8t
        0x9t
        0x1t
        0xet
        0x0t
        0x12t
        0x15t
        0x2t
        0x24t
        0x8t
        0x3t
        0x2t
        0x4t
        0x7dt
        0x6ct
        0x7bt
        0x7ft
        0x6at
        0x7bt
        0x5dt
        0x71t
        0x7at
        0x7bt
        0x7dt
        0x24t
        0x1ct
        0xat
        0x19t
        0x11t
        0x16t
        0x39t
        0x16t
        0x1ct
        0x3et
        0x1dt
        0x1dt
        0x1ct
        0x39t
        0x33t
        0x30t
        0x2at
        0x31t
        0x3bt
        0x3at
        0x2dt
        0x6at
        0x60t
        0x63t
        0x79t
        0x62t
        0x68t
        0x69t
        0x7et
        0x53t
        0x60t
        0x78t
        0x69t
        0x1t
        0x14t
        0x9t
        0x13t
        0x16t
        0x3t
        0x14t
        0x40t
        0x4at
        0x1at
        0x18t
        0x18t
        0x18t
        0x3et
        0x33t
        0x3ft
        0x31t
        0x3et
        0x22t
        0x7dt
        0x7at
        0x6ft
        0x7ct
        0x7at
        0x4dt
        0x61t
        0x6at
        0x6bt
        0x6dt
        0x42t
        0x5ft
        0x5at
        0x57t
        0x46t
        0x5ft
        0x57t
        0x33t
        0x2dt
        0x20t
        0x30t
        0x2ct
    .end array-data
.end method

.method private A0k(Lcom/facebook/ads/redexgen/X/Cv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8414
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0
.end method

.method private A0l()Z
    .locals 4

    .line 8415
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/lang/String;

    const/16 v2, 0x93

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A06:Ljava/lang/String;

    .line 8416
    const/16 v2, 0x8b

    const/4 v1, 0x4

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A06:Ljava/lang/String;

    .line 8417
    const/16 v2, 0x87

    const/4 v1, 0x4

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 8418
    :goto_0
    return v0

    .line 8419
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0m()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8420
    move-object v0, p0

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v5, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A02:I

    const/4 v6, 0x2

    if-eq v1, v6, :cond_0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A0M:Z

    if-eqz v1, :cond_1

    .line 8421
    .end local v0
    .end local v4
    .end local v5
    .end local v6
    :cond_0
    return v2

    .line 8422
    :cond_1
    iget v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A03:I

    if-gez v1, :cond_3

    .line 8423
    const-wide/16 v3, 0x0

    invoke-virtual {v5, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A03:I

    .line 8424
    iget v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A03:I

    if-gez v1, :cond_2

    .line 8425
    return v2

    .line 8426
    :cond_2
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3M;->A0a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    .line 8427
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Wg;->A07()V

    .line 8428
    :cond_3
    iget v7, v0, Lcom/facebook/ads/redexgen/X/3M;->A02:I

    const/4 v1, 0x1

    sget-object v4, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x1

    if-eq v4, v3, :cond_1c

    sget-object v5, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v4, "BGv06lkWwG6z0hSmECPMwAj0xiUhKKMm"

    const/4 v3, 0x0

    aput-object v4, v5, v3

    if-ne v7, v1, :cond_5

    .line 8429
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0G:Z

    if-eqz v3, :cond_4

    .line 8430
    :goto_0
    iput v6, v0, Lcom/facebook/ads/redexgen/X/3M;->A02:I

    .line 8431
    return v2

    .line 8432
    :cond_4
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A0K:Z

    .line 8433
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/3M;->A03:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x4

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 8434
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0h()V

    goto :goto_0

    .line 8435
    :cond_5
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0C:Z

    if-eqz v3, :cond_6

    .line 8436
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A0C:Z

    .line 8437
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0f:[B

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 8438
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3M;->A03:I

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0f:[B

    array-length v6, v2

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 8439
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0h()V

    .line 8440
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A0J:Z

    .line 8441
    return v1

    .line 8442
    :cond_6
    const/4 v5, 0x0

    .line 8443
    .local v0, "adaptiveReconfigurationBytes":I
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0R:Z

    if-eqz v3, :cond_7

    .line 8444
    const/4 v8, -0x4

    sget-object v4, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x1

    if-eq v4, v3, :cond_1b

    sget-object v7, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v4, "cWcFMDoxN8Aku4bywP95fMqNRICNv17K"

    const/4 v3, 0x0

    aput-object v4, v7, v3

    .line 8445
    .local v5, "result":I
    .end local v0    # "adaptiveReconfigurationBytes":I
    .local v5, "result":I
    .local v6, "adaptiveReconfigurationBytes":I
    :goto_1
    const/4 v3, -0x3

    if-ne v8, v3, :cond_b

    .line 8446
    return v2

    .line 8447
    .end local v5    # "result":I
    :cond_7
    iget v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    if-ne v3, v1, :cond_9

    .line 8448
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v3, v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_8

    .line 8449
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v3, v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 8450
    .local v6, "data":[B
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 8451
    .end local v6    # "data":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 8452
    .end local v5    # "i":I
    :cond_8
    iput v6, v0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    .line 8453
    :cond_9
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 8454
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/3M;->A0W:Lcom/facebook/ads/redexgen/X/9S;

    sget-object v4, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x14

    if-eq v4, v3, :cond_a

    sget-object v7, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v4, "GMhmsEJxFGP4UGYwyrNMJ7ABPSyH92Wb"

    const/4 v3, 0x7

    aput-object v4, v7, v3

    const-string v4, "9vGc1NAfm636mRfTzlbxXXygjN4bGT7w"

    const/4 v3, 0x3

    aput-object v4, v7, v3

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v0, v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Dh;->A10(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I

    move-result v8

    goto :goto_1

    :cond_a
    sget-object v7, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v4, "jZbWd1eO6yZY8R9xWwlVER"

    const/4 v3, 0x4

    aput-object v4, v7, v3

    const-string v4, "QWk96bCMj56V6fYDRZTqXno"

    const/4 v3, 0x6

    aput-object v4, v7, v3

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v0, v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Dh;->A10(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I

    move-result v8

    goto :goto_1

    .line 8455
    :cond_b
    const/4 v3, -0x5

    if-ne v8, v3, :cond_d

    .line 8456
    iget v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    if-ne v2, v6, :cond_c

    .line 8457
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Wg;->A07()V

    .line 8458
    iput v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    .line 8459
    :cond_c
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A0W:Lcom/facebook/ads/redexgen/X/9S;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/9S;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3M;->A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 8460
    return v1

    .line 8461
    :cond_d
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ak;->A04()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 8462
    iget v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    if-ne v3, v6, :cond_e

    .line 8463
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Wg;->A07()V

    .line 8464
    iput v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    .line 8465
    :cond_e
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A0M:Z

    .line 8466
    iget-boolean v6, v0, Lcom/facebook/ads/redexgen/X/3M;->A0J:Z

    sget-object v4, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v4, v3

    const/16 v3, 0x12

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x77

    if-eq v4, v3, :cond_f

    if-nez v6, :cond_10

    .line 8467
    :goto_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0d()V

    .line 8468
    return v2

    :cond_f
    sget-object v5, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v4, "IK13ew4"

    const/4 v3, 0x5

    aput-object v4, v5, v3

    if-nez v6, :cond_10

    goto :goto_3

    .line 8469
    :cond_10
    :try_start_0
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0G:Z

    if-eqz v3, :cond_11

    goto :goto_4

    .line 8470
    :cond_11
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A0K:Z

    .line 8471
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3M;->A03:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 8472
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0h()V

    .line 8473
    :goto_4
    return v2
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8474
    :catch_0
    move-exception v1

    .line 8475
    .local v0, "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0

    .line 8476
    .end local v0    # "e":Landroid/media/MediaCodec$CryptoException;
    :cond_12
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0Q:Z

    if-eqz v3, :cond_15

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    sget-object v4, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v4, v3

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x73

    if-eq v4, v3, :cond_14

    sget-object v7, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v4, "ywBWkcBFyHyOTxmikBGNQ7ElC4JSn47y"

    const/4 v3, 0x0

    aput-object v4, v7, v3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Ak;->A05()Z

    move-result v3

    if-nez v3, :cond_15

    .line 8477
    :goto_5
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Wg;->A07()V

    .line 8478
    iget v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    if-ne v2, v6, :cond_13

    .line 8479
    iput v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    .line 8480
    :cond_13
    return v1

    :cond_14
    sget-object v7, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v4, "uqwAh7OiLzrqYCdIK7FE27Aq9dnmjoOb"

    const/4 v3, 0x7

    aput-object v4, v7, v3

    const-string v4, "CGhJEeUUTBGplB6hh3d6N38sXeZGKtI8"

    const/4 v3, 0x3

    aput-object v4, v7, v3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Ak;->A05()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_5

    .line 8481
    :cond_15
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A0Q:Z

    .line 8482
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Wg;->A0A()Z

    move-result v6

    .line 8483
    .local v4, "bufferEncrypted":Z
    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/3M;->A0w(Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0R:Z

    .line 8484
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0R:Z

    if-eqz v3, :cond_16

    .line 8485
    return v2

    .line 8486
    :cond_16
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0D:Z

    if-eqz v3, :cond_18

    if-nez v6, :cond_18

    .line 8487
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/HY;->A0A(Ljava/nio/ByteBuffer;)V

    .line 8488
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_17

    .line 8489
    return v1

    .line 8490
    :cond_17
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A0D:Z

    .line 8491
    :cond_18
    :try_start_1
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    iget-wide v8, v3, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    .line 8492
    .local v11, "presentationTimeUs":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ak;->A03()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 8493
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/3M;->A0b:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8494
    :cond_19
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Wg;->A08()V

    .line 8495
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3M;->A1M(Lcom/facebook/ads/redexgen/X/Wg;)V

    .line 8496
    if-eqz v6, :cond_1a

    goto :goto_6

    .line 8497
    :cond_1a
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3M;->A03:I

    const/4 v6, 0x0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Wg;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_7

    .line 8498
    :goto_6
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/3M;->A0X:Lcom/facebook/ads/redexgen/X/Wg;

    .line 8499
    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/3M;->A0Y(Lcom/facebook/ads/redexgen/X/Wg;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v7

    .line 8500
    .local v10, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3M;->A03:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 8501
    :goto_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0h()V

    .line 8502
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/3M;->A0J:Z

    .line 8503
    iput v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    .line 8504
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Ap;->A04:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Ap;->A04:I

    .line 8505
    .end local v11    # "presentationTimeUs":J
    return v1
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8506
    :catch_1
    move-exception v1

    .line 8507
    .restart local v0    # "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0n()Z
    .locals 1

    .line 8508
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A04:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0o(J)Z
    .locals 5

    .line 8509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 8510
    .local v0, "size":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 8511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_0

    .line 8512
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8513
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8514
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "GAQPkPxILqrNxqRn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x1

    return v0

    .line 8515
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private A0p(JJ)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8516
    move-object/from16 v5, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0n()Z

    move-result v0

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 8517
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0F:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0K:Z

    if-eqz v0, :cond_1

    .line 8518
    :try_start_0
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    .line 8519
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0X()J

    move-result-wide v0

    invoke-virtual {v4, v3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8520
    .end local v0
    .local v0, "e":Ljava/lang/IllegalStateException;
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0d()V

    .line 8521
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0N:Z

    if-eqz v0, :cond_0

    .line 8522
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A1G()V

    .line 8523
    :cond_0
    return v2

    .line 8524
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    .line 8525
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0X()J

    move-result-wide v0

    invoke-virtual {v4, v3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 8526
    .local v0, "outputIndex":I
    :goto_0
    if-ltz v6, :cond_3

    .line 8527
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0O:Z

    if-eqz v0, :cond_2

    .line 8528
    iput-boolean v2, v5, Lcom/facebook/ads/redexgen/X/3M;->A0O:Z

    .line 8529
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, v6, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 8530
    return v7

    .line 8531
    :cond_2
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_b

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 8532
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0d()V

    .line 8533
    return v2

    .line 8534
    :cond_3
    const/4 v4, -0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_13

    sget-object v3, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "HT1pBWWLOYy8PEf8scwcSavywhmMK5P3"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    if-ne v6, v4, :cond_5

    .line 8535
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0f()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 8536
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "todLl0dSZi0vPTtgICo1ottwNzErViL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v7

    :cond_4
    return v7

    .line 8537
    :cond_5
    const/4 v4, -0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_a

    sget-object v3, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "4PVEqwR"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    if-ne v6, v4, :cond_6

    .line 8538
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0e()V

    .line 8539
    return v7

    .line 8540
    :cond_6
    iget-boolean v4, v5, Lcom/facebook/ads/redexgen/X/3M;->A0G:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "oPTnjsm2EBoNSW7B2QwBvulptlCCgQiW"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    if-eqz v4, :cond_8

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0M:Z

    if-nez v0, :cond_7

    iget v1, v5, Lcom/facebook/ads/redexgen/X/3M;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_8

    .line 8541
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0d()V

    .line 8542
    :cond_8
    return v2

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8543
    :cond_b
    iput v6, v5, Lcom/facebook/ads/redexgen/X/3M;->A04:I

    .line 8544
    invoke-direct {v5, v6}, Lcom/facebook/ads/redexgen/X/3M;->A0b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0B:Ljava/nio/ByteBuffer;

    .line 8545
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/3M;->A0B:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_c

    .line 8546
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8547
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/3M;->A0B:Ljava/nio/ByteBuffer;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_13

    sget-object v3, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "FaJE2XiArfhYqeNyfkTyaQ"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const-string v1, "HvmGKe0EFE5f200jghUPQNW"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8548
    :cond_c
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/3M;->A0o(J)Z

    move-result v0

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0P:Z

    .line 8549
    .end local v0    # "outputIndex":I
    :cond_d
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0F:Z

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    if-eqz v0, :cond_f

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0K:Z

    if-eqz v0, :cond_f

    .line 8550
    :try_start_1
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget-object v14, v5, Lcom/facebook/ads/redexgen/X/3M;->A0B:Ljava/nio/ByteBuffer;

    iget v15, v5, Lcom/facebook/ads/redexgen/X/3M;->A04:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v3, v5, Lcom/facebook/ads/redexgen/X/3M;->A0P:Z

    .line 8551
    move-object/from16 v8, p0

    move/from16 v16, v4

    move-wide/from16 v17, v0

    move/from16 v19, v3

    invoke-virtual/range {v8 .. v19}, Lcom/facebook/ads/redexgen/X/3M;->A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8552
    .end local v0
    .local v0, "e":Ljava/lang/IllegalStateException;
    :catch_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0d()V

    .line 8553
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0N:Z

    if-eqz v0, :cond_e

    .line 8554
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A1G()V

    .line 8555
    :cond_e
    return v2

    .line 8556
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_f
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget-object v14, v5, Lcom/facebook/ads/redexgen/X/3M;->A0B:Ljava/nio/ByteBuffer;

    iget v15, v5, Lcom/facebook/ads/redexgen/X/3M;->A04:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0P:Z

    .line 8557
    move-object/from16 v8, p0

    move/from16 v16, v1

    move-wide/from16 v17, v3

    move/from16 v19, v0

    invoke-virtual/range {v8 .. v19}, Lcom/facebook/ads/redexgen/X/3M;->A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    .line 8558
    .local v0, "processedOutputBuffer":Z
    :goto_1
    if-eqz v0, :cond_12

    .line 8559
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/3M;->A1J(J)V

    .line 8560
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3M;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 8561
    .local v1, "isEndOfStream":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0i()V

    .line 8562
    if-nez v0, :cond_11

    .line 8563
    return v7

    .line 8564
    :cond_10
    const/4 v0, 0x0

    goto :goto_2

    .line 8565
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/3M;->A0d()V

    .line 8566
    .end local v1    # "isEndOfStream":Z
    :cond_12
    return v2

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0q(Lcom/facebook/ads/redexgen/X/Ct;)Z
    .locals 7

    .line 8567
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ct;->A02:Ljava/lang/String;

    .line 8568
    .local v0, "name":Ljava/lang/String;
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x11

    if-gt v1, v0, :cond_0

    .line 8569
    const/16 v2, 0x23d

    const/16 v1, 0x18

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8570
    const/16 v2, 0x1aa

    const/16 v1, 0x1f

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A05:Ljava/lang/String;

    .line 8571
    const/16 v2, 0x93

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v6, Lcom/facebook/ads/redexgen/X/Hs;->A06:Ljava/lang/String;

    const/16 v5, 0x8f

    const/4 v4, 0x4

    const/16 v3, 0x20

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "ta8dfTbq5GbSxrQo9R7BCH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "TLzt7USKw6C8aMs6TrECz9n"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 8572
    :goto_0
    return v0

    .line 8573
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0r(Ljava/lang/String;)Z
    .locals 4

    .line 8574
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_0

    const/16 v2, 0x224

    const/16 v1, 0x19

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x13

    if-gt v1, v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A03:Ljava/lang/String;

    .line 8575
    const/16 v2, 0x2c6

    const/4 v1, 0x6

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8576
    const/16 v2, 0x1c9

    const/16 v1, 0x1f

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8577
    const/16 v2, 0x1e8

    const/16 v1, 0x26

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 8578
    :goto_0
    return v0

    .line 8579
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0s(Ljava/lang/String;)Z
    .locals 3

    .line 8580
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x15

    if-ne v1, v0, :cond_0

    const/16 v2, 0x20e

    const/16 v1, 0x16

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0t(Ljava/lang/String;)Z
    .locals 4

    .line 8581
    sget v0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    if-ne v0, v1, :cond_0

    .line 8582
    const/16 v2, 0x185

    const/16 v1, 0xf

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v2, 0x194

    const/16 v1, 0x16

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x13

    if-ne v1, v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hs;->A06:Ljava/lang/String;

    .line 8583
    const/16 v2, 0x263

    const/4 v1, 0x7

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8584
    const/16 v2, 0xf5

    const/16 v1, 0x12

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v2, 0x107

    const/16 v1, 0x19

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 8585
    :goto_0
    return v0

    .line 8586
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0u(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z
    .locals 3

    .line 8587
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    .line 8588
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8589
    const/16 v2, 0x139

    const/16 v1, 0x19

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 8590
    :goto_0
    return v0

    .line 8591
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0v(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z
    .locals 4

    .line 8592
    sget v1, Lcom/facebook/ads/redexgen/X/Hs;->A02:I

    const/4 v3, 0x1

    const/16 v0, 0x12

    if-gt v1, v0, :cond_0

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    if-ne v0, v3, :cond_0

    .line 8593
    const/16 v2, 0x120

    const/16 v1, 0x19

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8594
    :goto_0
    return v3

    .line 8595
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private A0w(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0c:Z

    if-eqz v0, :cond_1

    .line 8597
    .end local v0
    :cond_0
    return v2

    .line 8598
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BE;->A7i()I

    move-result v1

    .line 8599
    .local v0, "drmSessionState":I
    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    .line 8600
    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 8601
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BE;->A6f()Lcom/facebook/ads/redexgen/X/BC;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public A12()V
    .locals 4

    .line 8602
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 8603
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 8604
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-eqz v0, :cond_0

    .line 8605
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8606
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-eq v1, v0, :cond_1

    .line 8607
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8608
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8609
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 8610
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "7dwj0KBDIsFyzp5b78UdOB5dCWX1QTuU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8611
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8612
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    .line 8613
    throw v0

    .line 8614
    :catchall_1
    move-exception v2

    .line 8615
    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-eq v1, v0, :cond_3

    .line 8616
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8617
    :cond_3
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8618
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    .line 8619
    throw v2

    .line 8620
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8621
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    .line 8622
    throw v0

    .line 8623
    :catchall_3
    move-exception v2

    .line 8624
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-eqz v0, :cond_4

    .line 8625
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 8626
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-eq v1, v0, :cond_5

    .line 8627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 8628
    :cond_5
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8629
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    .line 8630
    throw v2

    .line 8631
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8632
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    .line 8633
    throw v0

    .line 8634
    :catchall_5
    move-exception v2

    .line 8635
    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-eq v1, v0, :cond_6

    .line 8636
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 8637
    :cond_6
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8638
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    .line 8639
    throw v2

    .line 8640
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8641
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    .line 8642
    throw v0
.end method

.method public A13()V
    .locals 0

    .line 8643
    return-void
.end method

.method public A14()V
    .locals 0

    .line 8644
    return-void
.end method

.method public A15(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0M:Z

    .line 8646
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0N:Z

    .line 8647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 8648
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1F()V

    .line 8649
    :cond_0
    return-void
.end method

.method public A16(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8650
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ap;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    .line 8651
    return-void
.end method

.method public A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Ct;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .locals 1

    .line 8652
    const/4 v0, 0x0

    return v0
.end method

.method public abstract A1B(Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Cz;",
            "Lcom/facebook/ads/redexgen/X/BF<",
            "Lcom/facebook/ads/redexgen/X/Wa;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D2;
        }
    .end annotation
.end method

.method public final A1C()Landroid/media/MediaCodec;
    .locals 1

    .line 8653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final A1D()Lcom/facebook/ads/redexgen/X/Ct;
    .locals 1

    .line 8654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    return-object v0
.end method

.method public A1E(Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Ct;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D2;
        }
    .end annotation

    .line 8655
    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/facebook/ads/redexgen/X/Cz;->A6T(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v0

    return-object v0
.end method

.method public A1F()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8656
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A05:J

    .line 8657
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0h()V

    .line 8658
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0i()V

    .line 8659
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Q:Z

    .line 8660
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0R:Z

    .line 8661
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0P:Z

    .line 8662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8663
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0C:Z

    .line 8664
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0O:Z

    .line 8665
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0K:Z

    if-eqz v0, :cond_2

    .line 8666
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1G()V

    .line 8667
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1I()V

    .line 8668
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-eqz v0, :cond_1

    .line 8669
    iput v2, p0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    .line 8670
    :cond_1
    return-void

    .line 8671
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A02:I

    if-eqz v0, :cond_3

    .line 8672
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1G()V

    .line 8673
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1I()V

    goto :goto_0

    .line 8674
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 8675
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0J:Z

    goto :goto_0
.end method

.method public A1G()V
    .locals 7

    .line 8676
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A05:J

    .line 8677
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0h()V

    .line 8678
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0i()V

    .line 8679
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0R:Z

    .line 8680
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0P:Z

    .line 8681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8682
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0g()V

    .line 8683
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    .line 8684
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0L:Z

    .line 8685
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0J:Z

    .line 8686
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0D:Z

    .line 8687
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0H:Z

    .line 8688
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A00:I

    .line 8689
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0G:Z

    .line 8690
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0E:Z

    .line 8691
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0I:Z

    .line 8692
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0C:Z

    .line 8693
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0O:Z

    .line 8694
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0K:Z

    .line 8695
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    .line 8696
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A02:I

    .line 8697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 8698
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ap;->A01:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ap;->A01:I

    .line 8699
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 8700
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8701
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    .line 8702
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    if-eq v0, v1, :cond_5

    .line 8703
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V

    goto/16 :goto_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8704
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8705
    throw v0

    .line 8706
    :catchall_1
    move-exception v4

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    .line 8707
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "xSjaYNEZ4qh1ZPx8xTwjTufaVWwElX5P"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    if-eq v0, v3, :cond_1

    .line 8708
    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V

    goto :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8709
    :catchall_2
    move-exception v0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8710
    throw v0

    .line 8711
    :goto_0
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8712
    :cond_1
    throw v4

    .line 8713
    :catchall_3
    move-exception v2

    .line 8714
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 8715
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    .line 8716
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    if-eq v0, v1, :cond_2

    .line 8717
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V

    goto :goto_1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 8718
    :catchall_4
    move-exception v0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8719
    throw v0

    .line 8720
    :goto_1
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8721
    :cond_2
    throw v2

    .line 8722
    :catchall_5
    move-exception v5

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    .line 8723
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "vD6SaWSNQpnT2etBhelIXAl4LKAzAMEb"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v3, v4, :cond_4

    .line 8724
    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V

    goto :goto_2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 8725
    :catchall_6
    move-exception v0

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8726
    throw v0

    .line 8727
    :goto_2
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8728
    :cond_4
    throw v5

    .line 8729
    :goto_3
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8730
    :cond_5
    return-void
.end method

.method public A1H()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8731
    return-void
.end method

.method public final A1I()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-nez v1, :cond_1

    .line 8733
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_0
    return-void

    .line 8734
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    .line 8735
    iget-object v8, v1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    .line 8736
    .local v0, "mimeType":Ljava/lang/String;
    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_c

    .line 8737
    .local v1, "wrappedMediaCrypto":Landroid/media/MediaCrypto;
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "pTVSxclXptnWdkcsOldSnbHbt080oNsP"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "3A2dqVKC7anzB9bdQIqtLGHUlM9PHMrl"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v3, 0x0

    .line 8738
    .local v2, "drmSessionRequiresSecureDecoder":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    .line 8739
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BE;->A75()Lcom/facebook/ads/redexgen/X/BG;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wa;

    .line 8740
    .local v3, "mediaCrypto":Lcom/facebook/ads/redexgen/X/Wa;
    if-nez v0, :cond_2

    .line 8741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BE;->A6f()Lcom/facebook/ads/redexgen/X/BC;

    move-result-object v0

    .line 8742
    .local v5, "drmError":Lcom/facebook/ads/redexgen/X/BC;
    if-eqz v0, :cond_4

    .line 8743
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BE;->A7i()I

    move-result v1

    .line 8745
    .local v5, "drmSessionState":I
    if-eq v1, v5, :cond_3

    .line 8746
    const/4 v0, 0x4

    if-eq v1, v0, :cond_5

    .line 8747
    return-void

    .line 8748
    .end local v5    # "drmSessionState":I
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wa;->A00()Landroid/media/MediaCrypto;

    move-result-object v4

    .line 8749
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Wa;->A01(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 8750
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BE;->A6f()Lcom/facebook/ads/redexgen/X/BC;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0

    .line 8751
    .restart local v5    # "drmSessionState":I
    :cond_4
    return-void

    .line 8752
    .end local v3    # "mediaCrypto":Lcom/facebook/ads/redexgen/X/Wa;
    .end local v5    # "drmSessionState":I
    :cond_5
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "oPP6wTkKkwktIyM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v6, :cond_7

    .line 8753
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0a:Lcom/facebook/ads/redexgen/X/Cz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/3M;->A1E(Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    .line 8754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    .line 8755
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3M;->A0a:Lcom/facebook/ads/redexgen/X/Cz;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A1E(Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    .line 8756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    if-eqz v0, :cond_6

    .line 8757
    const/16 v2, 0xe3

    const/16 v1, 0x12

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x99

    const/16 v1, 0x28

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x3a

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ct;->A02:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/D2; {:try_start_0 .. :try_end_0} :catch_0

    .line 8758
    :catch_0
    move-exception v6

    .line 8759
    .local v3, "e":Lcom/facebook/ads/redexgen/X/D2;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const v1, -0xc34e

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cv;

    invoke-direct {v0, v2, v6, v3, v1}, Lcom/facebook/ads/redexgen/X/Cv;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0k(Lcom/facebook/ads/redexgen/X/Cv;)V

    .line 8760
    .end local v3    # "e":Lcom/facebook/ads/redexgen/X/D2;
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    if-nez v0, :cond_7

    .line 8761
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v2, 0x0

    const v1, -0xc34f

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cv;

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/Cv;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0k(Lcom/facebook/ads/redexgen/X/Cv;)V

    .line 8762
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3M;->A1Q(Lcom/facebook/ads/redexgen/X/Ct;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 8763
    return-void

    .line 8764
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Ct;->A02:Ljava/lang/String;

    .line 8765
    .local v3, "codecName":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/3M;->A0W(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A00:I

    .line 8766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0u(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0D:Z

    .line 8767
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3M;->A0t(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0H:Z

    .line 8768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A0q(Lcom/facebook/ads/redexgen/X/Ct;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0G:Z

    .line 8769
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3M;->A0r(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0E:Z

    .line 8770
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/3M;->A0s(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0F:Z

    .line 8771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0v(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0I:Z

    .line 8772
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 8773
    .local v11, "codecInitializingTimestamp":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x293

    const/16 v1, 0xc

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(Ljava/lang/String;)V

    .line 8774
    invoke-static {v9}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    .line 8775
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A00()V

    .line 8776
    const/16 v2, 0x285

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(Ljava/lang/String;)V

    .line 8777
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/3M;->A1N(Lcom/facebook/ads/redexgen/X/Ct;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Landroid/media/MediaCrypto;)V

    .line 8778
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A00()V

    .line 8779
    const/16 v2, 0x2d2

    const/16 v1, 0xa

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(Ljava/lang/String;)V

    .line 8780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 8781
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A00()V

    .line 8782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 8783
    .local v13, "codecInitializedTimestamp":J
    sub-long v12, v10, v7

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/3M;->A1O(Ljava/lang/String;JJ)V

    .line 8784
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0c()V

    goto :goto_2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8785
    :catch_1
    move-exception v2

    .line 8786
    .local v5, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cv;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/facebook/ads/redexgen/X/Cv;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0k(Lcom/facebook/ads/redexgen/X/Cv;)V

    .line 8787
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A7i()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_9

    .line 8788
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "PmY0JvPcAmgMlvk30PUrAfvygqaUDHom"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-wide/16 v0, 0x3e8

    add-long/2addr v3, v0

    .line 8789
    :goto_3
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A05:J

    .line 8790
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0h()V

    .line 8791
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0i()V

    .line 8792
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Q:Z

    .line 8793
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Ap;->A00:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Ap;->A00:I

    .line 8794
    return-void

    .line 8795
    :cond_9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1J(J)V
    .locals 0

    .line 8796
    return-void
.end method

.method public A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8797
    return-void
.end method

.method public A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8798
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 8799
    .local v0, "oldFormat":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 8800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v2, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    .line 8801
    const/4 v1, 0x0

    if-nez v4, :cond_2

    move-object v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 8802
    .local v1, "drmInitDataChanged":Z
    if-eqz v0, :cond_0

    .line 8803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    if-eqz v0, :cond_1

    .line 8804
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    if-eqz v2, :cond_b

    .line 8805
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BF;->A2Q(Landroid/os/Looper;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/redexgen/X/BE;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    .line 8806
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-ne v1, v0, :cond_0

    .line 8807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BF;->AEA(Lcom/facebook/ads/redexgen/X/BE;)V

    .line 8808
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 8809
    .local v2, "keepingCodec":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A08:Lcom/facebook/ads/redexgen/X/BE;

    if-ne v1, v0, :cond_8

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    if-eqz v2, :cond_8

    .line 8810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0A:Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v2, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/3M;->A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Ct;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_7

    const/4 v0, 0x3

    if-ne v1, v0, :cond_6

    .line 8811
    const/4 v5, 0x1

    .line 8812
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A0L:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8813
    :cond_1
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A09:Lcom/facebook/ads/redexgen/X/BE;

    goto :goto_1

    .line 8814
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    goto :goto_0

    .line 8815
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "470Pj9QxuaVscsy8pk25MlpSOfE9YJj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A01:I

    .line 8816
    iget v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    if-ne v1, v3, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    if-ne v1, v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0C:Z

    .line 8817
    goto :goto_3

    .line 8818
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 8819
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 8820
    :cond_7
    const/4 v5, 0x1

    .line 8821
    :cond_8
    :goto_3
    if-nez v5, :cond_9

    .line 8822
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0J:Z

    if-eqz v0, :cond_a

    .line 8823
    iput v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A02:I

    .line 8824
    :cond_9
    :goto_4
    return-void

    .line 8825
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1G()V

    .line 8826
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1I()V

    goto :goto_4

    .line 8827
    :cond_b
    const/16 v2, 0xc1

    const/16 v1, 0x22

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8828
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    .line 8829
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0
.end method

.method public A1M(Lcom/facebook/ads/redexgen/X/Wg;)V
    .locals 0

    .line 8830
    return-void
.end method

.method public abstract A1N(Lcom/facebook/ads/redexgen/X/Ct;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D2;
        }
    .end annotation
.end method

.method public A1O(Ljava/lang/String;JJ)V
    .locals 0

    .line 8831
    return-void
.end method

.method public abstract A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation
.end method

.method public A1Q(Lcom/facebook/ads/redexgen/X/Ct;)Z
    .locals 1

    .line 8832
    const/4 v0, 0x1

    return v0
.end method

.method public A8h()Z
    .locals 1

    .line 8833
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0N:Z

    return v0
.end method

.method public A8r()Z
    .locals 5

    .line 8834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0R:Z

    if-nez v0, :cond_1

    .line 8835
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A18()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8836
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A05:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 8837
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A05:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 8838
    :goto_0
    return v0

    .line 8839
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AEH(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8840
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0N:Z

    if-eqz v0, :cond_1

    .line 8841
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1H()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 8842
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "lwFTUI1opuqPhbxVYngJAvB4EigDaO53"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8843
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v5, -0x4

    const/4 v4, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 8844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Y:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wg;->A07()V

    .line 8845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0W:Lcom/facebook/ads/redexgen/X/9S;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Y:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Dh;->A10(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I

    move-result v0

    .line 8846
    .local v0, "result":I
    if-ne v0, v4, :cond_9

    .line 8847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0W:Lcom/facebook/ads/redexgen/X/9S;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9S;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3M;->A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 8848
    .end local v0    # "result":I
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3M;->A1I()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 8849
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "eroLcdOpjUP85EYGmYhVy7jJ6XqjjMHN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 8850
    :goto_0
    const/16 v2, 0x29f

    const/16 v1, 0xc

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3M;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(Ljava/lang/String;)V

    .line 8851
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3M;->A0p(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 8852
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/3M;->A0e:[Ljava/lang/String;

    const-string v1, "qeXDyPBokWYcVwHFGawdRvPvaKboAA5h"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 8853
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0m()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 8854
    :cond_5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ap;->A07:I

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dh;->A0z(J)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Ap;->A07:I

    .line 8855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Y:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wg;->A07()V

    .line 8856
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3M;->A0W:Lcom/facebook/ads/redexgen/X/9S;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Y:Lcom/facebook/ads/redexgen/X/Wg;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Dh;->A10(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I

    move-result v0

    .line 8857
    .restart local v0    # "result":I
    if-ne v0, v4, :cond_6

    .line 8858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0W:Lcom/facebook/ads/redexgen/X/9S;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9S;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3M;->A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    goto :goto_3

    .line 8859
    :cond_6
    if-ne v0, v5, :cond_8

    .line 8860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Y:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ak;->A04()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 8861
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A0M:Z

    .line 8862
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0d()V

    goto :goto_3

    .line 8863
    :cond_7
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A00()V

    .line 8864
    .end local v0    # "result":I
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0U:Lcom/facebook/ads/redexgen/X/Ap;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00()V

    .line 8865
    return-void

    .line 8866
    :cond_9
    if-ne v0, v5, :cond_a

    .line 8867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Y:Lcom/facebook/ads/redexgen/X/Wg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ak;->A04()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 8868
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/3M;->A0M:Z

    .line 8869
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3M;->A0d()V

    .line 8870
    return-void

    .line 8871
    :cond_a
    return-void
.end method

.method public final AFY(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 8872
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3M;->A0a:Lcom/facebook/ads/redexgen/X/Cz;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3M;->A0Z:Lcom/facebook/ads/redexgen/X/BF;

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/3M;->A1B(Lcom/facebook/ads/redexgen/X/Cz;Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/D2; {:try_start_0 .. :try_end_0} :catch_0

    .line 8873
    :catch_0
    move-exception v1

    .line 8874
    .local v0, "e":Lcom/facebook/ads/redexgen/X/D2;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    throw v0
.end method

.method public final AFa()I
    .locals 1

    .line 8875
    const/16 v0, 0x8

    return v0
.end method
