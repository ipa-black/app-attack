.class public final Lcom/facebook/ads/redexgen/X/2d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static A04:[B

.field public static final A05:Ljava/lang/Object;


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:[J

.field public A03:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 6001
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2d;->A05()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/2d;->A05:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6002
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2d;-><init>(I)V

    .line 6003
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 6004
    .local v2, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6005
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Z

    .line 6006
    if-nez p1, :cond_0

    .line 6007
    sget-object v0, Lcom/facebook/ads/redexgen/X/2c;->A01:[J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    .line 6008
    sget-object v0, Lcom/facebook/ads/redexgen/X/2c;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    .line 6009
    :goto_0
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    .line 6010
    return-void

    .line 6011
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2c;->A00(I)I

    move-result v1

    .line 6012
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    .line 6013
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private final A00(I)J
    .locals 2

    .line 6014
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Z

    if-eqz v0, :cond_0

    .line 6015
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;->A04()V

    .line 6016
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method private final A01()Lcom/facebook/ads/redexgen/X/2d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/2d<",
            "TE;>;"
        }
    .end annotation

    .line 6017
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 6018
    .local v0, "clone":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2d;

    move-object v1, v0

    .line 6019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    .line 6020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6021
    :catch_0
    return-object v1
.end method

.method private final A02(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 6022
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2c;->A03([JIJ)I

    move-result v3

    .line 6023
    .local v0, "i":I
    if-ltz v3, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    aget-object v1, v2, v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A05:Ljava/lang/Object;

    if-ne v1, v0, :cond_1

    .line 6024
    :cond_0
    return-object p3

    .line 6025
    :cond_1
    aget-object v0, v2, v3

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2d;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 8

    .line 6026
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget v7, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    .line 6027
    .local v0, "n":I
    const/4 v6, 0x0

    .line 6028
    .local v1, "o":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    .line 6029
    .local v2, "keys":[J
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    .line 6030
    .local v3, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 6031
    aget-object v2, v4, v3

    .line 6032
    .local v5, "val":Ljava/lang/Object;
    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A05:Ljava/lang/Object;

    if-eq v2, v0, :cond_1

    .line 6033
    if-eq v3, v6, :cond_0

    .line 6034
    aget-wide v0, v5, v3

    aput-wide v0, v5, v6

    .line 6035
    aput-object v2, v4, v6

    .line 6036
    const/4 v0, 0x0

    aput-object v0, v4, v3

    .line 6037
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 6038
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6039
    .end local v4    # "i":I
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Z

    .line 6040
    iput v6, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    .line 6041
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2d;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x13t
        0x4ft
        0x53t
        0x52t
        0x48t
        0x1bt
        0x76t
        0x5at
        0x4bt
        0x12t
        0x5bt
        0x57t
        0x33t
        0x35t
    .end array-data
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 6042
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Z

    if-eqz v0, :cond_0

    .line 6043
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;->A04()V

    .line 6044
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    return v0
.end method

.method public final A07(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 6045
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Z

    if-eqz v0, :cond_0

    .line 6046
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;->A04()V

    .line 6047
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A08(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 6048
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/2d;->A02(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A09()V
    .locals 4

    .line 6049
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    .line 6050
    .local v0, "n":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    .line 6051
    .local v1, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 6052
    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 6053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6054
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    .line 6055
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Z

    .line 6056
    return-void
.end method

.method public final A0A(I)V
    .locals 3

    .line 6057
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    aget-object v1, v2, p1

    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A05:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    .line 6058
    aput-object v0, v2, p1

    .line 6059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Z

    .line 6060
    :cond_0
    return-void
.end method

.method public final A0B(JLjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 6061
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    .local p4, "value":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2c;->A03([JIJ)I

    move-result v1

    .line 6062
    .local v0, "i":I
    if-ltz v1, :cond_0

    .line 6063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    aput-object p3, v0, v1

    .line 6064
    :goto_0
    return-void

    .line 6065
    :cond_0
    xor-int/lit8 v3, v1, -0x1

    .line 6066
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    if-ge v3, v0, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    aget-object v1, v2, v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/2d;->A05:Ljava/lang/Object;

    if-ne v1, v0, :cond_1

    .line 6067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    aput-wide p1, v0, v3

    .line 6068
    aput-object p3, v2, v3

    .line 6069
    return-void

    .line 6070
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A01:Z

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    array-length v0, v0

    if-lt v1, v0, :cond_2

    .line 6071
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;->A04()V

    .line 6072
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2c;->A03([JIJ)I

    move-result v0

    xor-int/lit8 v3, v0, -0x1

    .line 6073
    :cond_2
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    array-length v0, v0

    if-lt v1, v0, :cond_3

    .line 6074
    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2c;->A00(I)I

    move-result v0

    .line 6075
    .local v1, "n":I
    new-array v5, v0, [J

    .line 6076
    .local v2, "nkeys":[J
    new-array v4, v0, [Ljava/lang/Object;

    .line 6077
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    array-length v0, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6078
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    array-length v0, v1

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6079
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    .line 6080
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    .line 6081
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    sub-int v0, v2, v3

    if-eqz v0, :cond_4

    .line 6082
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    add-int/lit8 v0, v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6083
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    add-int/lit8 v1, v3, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    sub-int/2addr v0, v3

    invoke-static {v2, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6084
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A02:[J

    aput-wide p1, v0, v3

    .line 6085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A03:[Ljava/lang/Object;

    aput-object p3, v0, v3

    .line 6086
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    goto :goto_0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6087
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;->A01()Lcom/facebook/ads/redexgen/X/2d;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 6088
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2d;, "Lcom/facebook/ads/internal/androidx/support/v4/util/LongSparseArray<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2d;->A06()I

    move-result v0

    if-gtz v0, :cond_0

    .line 6089
    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2d;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6090
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6091
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6092
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2d;->A00:I

    if-ge v4, v0, :cond_3

    .line 6093
    if-lez v4, :cond_1

    .line 6094
    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2d;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6095
    :cond_1
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/2d;->A00(I)J

    move-result-wide v0

    .line 6096
    .local v2, "key":J
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6097
    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6098
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/2d;->A07(I)Ljava/lang/Object;

    move-result-object v0

    .line 6099
    .local v4, "value":Ljava/lang/Object;
    if-eq v0, p0, :cond_2

    .line 6100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6101
    .end local v2    # "key":J
    .end local v4    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6102
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2d;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6103
    .end local v1    # "i":I
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
