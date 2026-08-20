.class public final Lcom/facebook/ads/redexgen/X/F2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/ads/AdPlaybackState$AdState;,
        Lcom/facebook/ads/redexgen/X/F0;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/F2;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:[J

.field public final A04:[Lcom/facebook/ads/redexgen/X/F0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 32411
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uUgQSQgVsgHH0N1UsfY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7AFLCGuL9JRzl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SUkqvXm6rFeJNlyU4q2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DM2QNBARzQjqq5KTyec"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OFwEtNlY3tfCjSjl1W0mAcBM0ytDkhEA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Uou0zfuAqjYMYyC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2ZbfYqEAzIBMf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/F2;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [J

    new-instance v0, Lcom/facebook/ads/redexgen/X/F2;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/F2;-><init>([J)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/F2;->A06:Lcom/facebook/ads/redexgen/X/F2;

    return-void
.end method

.method public varargs constructor <init>([J)V
    .locals 4

    .line 32412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32413
    array-length v3, p1

    .line 32414
    .local v0, "count":I
    iput v3, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:I

    .line 32415
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A03:[J

    .line 32416
    new-array v0, v3, [Lcom/facebook/ads/redexgen/X/F0;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A04:[Lcom/facebook/ads/redexgen/X/F0;

    .line 32417
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 32418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F2;->A04:[Lcom/facebook/ads/redexgen/X/F0;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/F0;-><init>()V

    aput-object v0, v1, v2

    .line 32419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32420
    .end local v1    # "i":I
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A01:J

    .line 32421
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A02:J

    .line 32422
    return-void
.end method


# virtual methods
.method public final A00(J)I
    .locals 7

    .line 32423
    const/4 v3, 0x0

    .line 32424
    .local v0, "index":I
    :goto_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/F2;->A03:[J

    array-length v0, v6

    if-ge v3, v0, :cond_2

    aget-wide v4, v6, v3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v4, v1

    if-eqz v0, :cond_2

    aget-wide v0, v6, v3

    cmp-long v4, p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/F2;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/F2;->A05:[Ljava/lang/String;

    const-string v1, "JOT1DKN2kTxJVBU4QbvAyq2E38ICiTh6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A04:[Lcom/facebook/ads/redexgen/X/F0;

    aget-object v0, v0, v3

    .line 32425
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F0;->A02()Z

    move-result v0

    if-nez v0, :cond_2

    .line 32426
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32427
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A03:[J

    array-length v0, v0

    if-ge v3, v0, :cond_3

    :goto_1
    return v3

    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public final A01(J)I
    .locals 7

    .line 32428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A03:[J

    array-length v0, v0

    add-int/lit8 v6, v0, -0x1

    .line 32429
    .local v0, "index":I
    :goto_0
    if-ltz v6, :cond_1

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/F2;->A03:[J

    aget-wide v3, v5, v6

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    aget-wide v1, v5, v6

    cmp-long v0, v1, p1

    if-lez v0, :cond_1

    .line 32430
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 32431
    :cond_1
    if-ltz v6, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A04:[Lcom/facebook/ads/redexgen/X/F0;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F0;->A02()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v6

    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method
