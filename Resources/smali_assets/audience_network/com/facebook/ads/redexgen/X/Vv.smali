.class public final Lcom/facebook/ads/redexgen/X/Vv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BV;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/BY;

.field public static final A07:I


# instance fields
.field public A00:Z

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/Vu;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60887
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "89ZAS4gKAvfsCOhGFLRndaPlzH5Jylu0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WDj0w8iYShPhw5JkNLQVjMzFidij1YMB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SZD8V9ebG6DMCxkEToUDQHseHkwYH45y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "flB69VC8Ebs69L5nDVZVAs6kLxLMfW9p"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Dc9Giep11FBAOEJK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fiVRhSZcsaoyqUlEeIiHO4czNXpaN55t"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HHz5E2PDkz6p7na9zQig"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GASwop9kiLfFsL9tAHZWlbr16muWtU3x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vv;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vw;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vv;->A06:Lcom/facebook/ads/redexgen/X/BY;

    .line 60888
    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Vv;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60889
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vv;-><init>(J)V

    .line 60890
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 60891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60892
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A01:J

    .line 60893
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vu;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:Lcom/facebook/ads/redexgen/X/Vu;

    .line 60894
    const/16 v1, 0xae2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    .line 60895
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vv;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

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
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vv;->A04:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vv;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vv;->A05:[Ljava/lang/String;

    const-string v1, "Dcf"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :array_0
    .array-data 1
        -0x8t
        -0xdt
        -0x1et
    .end array-data
.end method


# virtual methods
.method public final A8V(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 4

    .line 60896
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:Lcom/facebook/ads/redexgen/X/Vu;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Cp;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V

    .line 60897
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 60898
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/WU;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 60899
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v4, 0x0

    const/16 v0, 0xae2

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/BW;->read([BII)I

    move-result v1

    .line 60901
    .local v0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 60902
    return v0

    .line 60903
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0X(I)V

    .line 60905
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:Z

    if-nez v0, :cond_1

    .line 60906
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:Lcom/facebook/ads/redexgen/X/Vu;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Vu;->ADN(JZ)V

    .line 60907
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:Z

    .line 60908
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:Lcom/facebook/ads/redexgen/X/Vu;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A03:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A4B(Lcom/facebook/ads/redexgen/X/Hc;)V

    .line 60909
    return v4
.end method

.method public final AEc(JJ)V
    .locals 1

    .line 60910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A00:Z

    .line 60911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vv;->A02:Lcom/facebook/ads/redexgen/X/Vu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vu;->AEb()V

    .line 60912
    return-void
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60913
    const/16 v4, 0xa

    new-instance v3, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    .line 60914
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/Hc;
    const/4 v2, 0x0

    .line 60915
    .local v2, "startPosition":I
    :goto_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 60916
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60917
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Vv;->A07:I

    if-eq v1, v0, :cond_4

    .line 60918
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 60919
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    .line 60920
    move v5, v2

    .line 60921
    .local v1, "headerPosition":I
    const/4 v4, 0x0

    .line 60922
    .local v3, "validFramesCount":I
    :goto_1
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v0, 0x5

    invoke-interface {p1, v1, v6, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 60923
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 60924
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v1

    .line 60925
    .local v5, "syncBytes":I
    const/16 v0, 0xb77

    if-eq v1, v0, :cond_1

    .line 60926
    const/4 v4, 0x0

    .line 60927
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->AES()V

    .line 60928
    add-int/lit8 v5, v5, 0x1

    sub-int v1, v5, v2

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_0

    .line 60929
    return v6

    .line 60930
    :cond_0
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    goto :goto_1

    .line 60931
    :cond_1
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x4

    if-lt v4, v0, :cond_2

    .line 60932
    const/4 v0, 0x1

    return v0

    .line 60933
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A3;->A05([B)I

    move-result v1

    .line 60934
    .local v6, "frameSize":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    .line 60935
    return v6

    .line 60936
    :cond_3
    add-int/lit8 v0, v1, -0x5

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    goto :goto_1

    .line 60937
    .end local v1    # "headerPosition":I
    .end local v3    # "validFramesCount":I
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 60938
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hc;->A0D()I

    move-result v1

    .line 60939
    .local v3, "length":I
    add-int/lit8 v0, v1, 0xa

    add-int/2addr v2, v0

    .line 60940
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    .line 60941
    .end local v3    # "length":I
    goto :goto_0
.end method
