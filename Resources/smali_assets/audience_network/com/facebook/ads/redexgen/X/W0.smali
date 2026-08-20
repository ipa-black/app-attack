.class public final Lcom/facebook/ads/redexgen/X/W0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BV;


# static fields
.field public static A03:[B

.field public static final A04:Lcom/facebook/ads/redexgen/X/BY;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/BX;

.field public A01:Lcom/facebook/ads/redexgen/X/CR;

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 61057
    invoke-static {}, Lcom/facebook/ads/redexgen/X/W0;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/W1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W1;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/W0;->A04:Lcom/facebook/ads/redexgen/X/BY;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/Hc;
    .locals 1

    .line 61059
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 61060
    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W0;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x25

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

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W0;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x6ct
        -0x79t
        -0x71t
        -0x6et
        -0x75t
        -0x76t
        0x46t
        -0x66t
        -0x6bt
        0x46t
        -0x76t
        -0x75t
        -0x66t
        -0x75t
        -0x68t
        -0x6dt
        -0x71t
        -0x6ct
        -0x75t
        0x46t
        -0x78t
        -0x71t
        -0x66t
        -0x67t
        -0x66t
        -0x68t
        -0x75t
        -0x79t
        -0x6dt
        0x46t
        -0x66t
        -0x61t
        -0x6at
        -0x75t
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61061
    new-instance v2, Lcom/facebook/ads/redexgen/X/CN;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/CN;-><init>()V

    .line 61062
    .local v0, "header":Lcom/facebook/ads/redexgen/X/CN;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/facebook/ads/redexgen/X/CN;->A03(Lcom/facebook/ads/redexgen/X/BW;Z)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget v1, v2, Lcom/facebook/ads/redexgen/X/CN;->A04:I

    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_1

    .line 61063
    .end local v2
    .end local v4
    :cond_0
    return v4

    .line 61064
    :cond_1
    iget v1, v2, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    const/16 v0, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 61065
    .local v2, "length":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    .line 61066
    .local v4, "scratch":Lcom/facebook/ads/redexgen/X/Hc;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v4, v2}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 61067
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/W0;->A00(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A04(Lcom/facebook/ads/redexgen/X/Hc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61068
    new-instance v0, Lcom/facebook/ads/redexgen/X/W2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W2;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:Lcom/facebook/ads/redexgen/X/CR;

    .line 61069
    :goto_0
    return v3

    .line 61070
    :cond_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/W0;->A00(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vx;->A06(Lcom/facebook/ads/redexgen/X/Hc;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61071
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vx;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vx;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:Lcom/facebook/ads/redexgen/X/CR;

    goto :goto_0

    .line 61072
    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/W0;->A00(Lcom/facebook/ads/redexgen/X/Hc;)Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A04(Lcom/facebook/ads/redexgen/X/Hc;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61073
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vz;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:Lcom/facebook/ads/redexgen/X/CR;

    goto :goto_0

    .line 61074
    :cond_4
    return v4
.end method


# virtual methods
.method public final A8V(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 0

    .line 61075
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W0;->A00:Lcom/facebook/ads/redexgen/X/BX;

    .line 61076
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:Lcom/facebook/ads/redexgen/X/CR;

    if-nez v0, :cond_0

    .line 61078
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W0;->A03(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61079
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 61080
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A02:Z

    if-nez v0, :cond_1

    .line 61081
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A00:Lcom/facebook/ads/redexgen/X/BX;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/BX;->AFc(II)Lcom/facebook/ads/redexgen/X/Bh;

    move-result-object v2

    .line 61082
    .local v0, "trackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A00:Lcom/facebook/ads/redexgen/X/BX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 61083
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:Lcom/facebook/ads/redexgen/X/CR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A00:Lcom/facebook/ads/redexgen/X/BX;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/CR;->A06(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Bh;)V

    .line 61084
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/W0;->A02:Z

    .line 61085
    .end local v0    # "trackOutput":Lcom/facebook/ads/redexgen/X/Bh;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:Lcom/facebook/ads/redexgen/X/CR;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CR;->A02(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I

    move-result v0

    return v0

    .line 61086
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W0;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9Y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9Y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final AEc(JJ)V
    .locals 1

    .line 61087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W0;->A01:Lcom/facebook/ads/redexgen/X/CR;

    if-eqz v0, :cond_0

    .line 61088
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/CR;->A05(JJ)V

    .line 61089
    :cond_0
    return-void
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61090
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W0;->A03(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9Y; {:try_start_0 .. :try_end_0} :catch_0

    .line 61091
    .local v0, "e":Lcom/facebook/ads/redexgen/X/9Y;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method
