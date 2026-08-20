.class public abstract Lcom/facebook/ads/redexgen/X/CR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Vy;,
        Lcom/facebook/ads/redexgen/X/CQ;
    }
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/BX;

.field public A07:Lcom/facebook/ads/redexgen/X/Bh;

.field public A08:Lcom/facebook/ads/redexgen/X/CO;

.field public A09:Lcom/facebook/ads/redexgen/X/CQ;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/CM;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 25921
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0vhu5jxS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Yr1jkp10QbCUuCnawnVg6DyED3T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sHPBJpa0rClOKB4ts4mek83zSMf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "023O0ZSY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oXq1fAkWHKLdk2C1T6ZzlQ7WbkpG5dco"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "r27coonoikndR5VwsgZJDPH1Xbh3nrzE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wA4WoZs0OtPlvEvglX5psUeQApq37N8U"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1wN1LzZhcL4LE4gXrEEsM7fopE3lhqwu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CR;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25923
    new-instance v0, Lcom/facebook/ads/redexgen/X/CM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    .line 25924
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/BW;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 25925
    const/4 v2, 0x1

    .line 25926
    .local v0, "readingHeaders":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 25927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/CM;->A05(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25928
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    .line 25929
    const/4 v0, -0x1

    return v0

    .line 25930
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:J

    .line 25931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CM;->A02()Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A09:Lcom/facebook/ads/redexgen/X/CQ;

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CR;->A0A(Lcom/facebook/ads/redexgen/X/Hc;JLcom/facebook/ads/redexgen/X/CQ;)Z

    move-result v2

    .line 25932
    if-eqz v2, :cond_0

    .line 25933
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:J

    goto :goto_0

    .line 25934
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A09:Lcom/facebook/ads/redexgen/X/CQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CQ;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    .line 25935
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A0A:Z

    if-nez v0, :cond_3

    .line 25936
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CR;->A07:Lcom/facebook/ads/redexgen/X/Bh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A09:Lcom/facebook/ads/redexgen/X/CQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CQ;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bh;->A5X(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    .line 25937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A0A:Z

    .line 25938
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A09:Lcom/facebook/ads/redexgen/X/CQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CQ;->A01:Lcom/facebook/ads/redexgen/X/CO;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 25939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A09:Lcom/facebook/ads/redexgen/X/CQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CQ;->A01:Lcom/facebook/ads/redexgen/X/CO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A08:Lcom/facebook/ads/redexgen/X/CO;

    .line 25940
    .end local v1
    :goto_1
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/CR;->A09:Lcom/facebook/ads/redexgen/X/CQ;

    .line 25941
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    .line 25942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CM;->A04()V

    .line 25943
    const/4 v0, 0x0

    return v0

    .line 25944
    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A70()J

    move-result-wide v5

    const-wide/16 v3, -0x1

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    .line 25945
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vy;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Vy;-><init>(Lcom/facebook/ads/redexgen/X/CP;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A08:Lcom/facebook/ads/redexgen/X/CO;

    goto :goto_1

    .line 25946
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CM;->A01()Lcom/facebook/ads/redexgen/X/CN;

    move-result-object v1

    .line 25947
    .local v1, "firstPayloadPageHeader":Lcom/facebook/ads/redexgen/X/CN;
    new-instance v3, Lcom/facebook/ads/redexgen/X/W4;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:J

    .line 25948
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A70()J

    move-result-wide v6

    iget v9, v1, Lcom/facebook/ads/redexgen/X/CN;->A01:I

    iget v0, v1, Lcom/facebook/ads/redexgen/X/CN;->A00:I

    add-int/2addr v9, v0

    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/CN;->A05:J

    move-object v8, p0

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/W4;-><init>(JJLcom/facebook/ads/redexgen/X/CR;IJ)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/CR;->A08:Lcom/facebook/ads/redexgen/X/CO;

    goto :goto_1
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 25949
    move-object v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/CR;->A08:Lcom/facebook/ads/redexgen/X/CO;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/CO;->ADq(Lcom/facebook/ads/redexgen/X/BW;)J

    move-result-wide v2

    .line 25950
    .local v2, "position":J
    const/4 v9, 0x1

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_0

    .line 25951
    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/Bc;->A00:J

    .line 25952
    return v9

    .line 25953
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v7, v2, v0

    if-gez v7, :cond_1

    .line 25954
    const-wide/16 v7, 0x2

    add-long/2addr v7, v2

    neg-long v2, v7

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/CR;->A08(J)V

    .line 25955
    :cond_1
    iget-boolean v2, v4, Lcom/facebook/ads/redexgen/X/CR;->A0B:Z

    if-nez v2, :cond_2

    .line 25956
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/CR;->A08:Lcom/facebook/ads/redexgen/X/CO;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/CO;->A4V()Lcom/facebook/ads/redexgen/X/Be;

    move-result-object v3

    .line 25957
    .local v10, "seekMap":Lcom/facebook/ads/redexgen/X/Be;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/CR;->A06:Lcom/facebook/ads/redexgen/X/BX;

    invoke-interface {v2, v3}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 25958
    iput-boolean v9, v4, Lcom/facebook/ads/redexgen/X/CR;->A0B:Z

    .line 25959
    .end local v10    # "seekMap":Lcom/facebook/ads/redexgen/X/Be;
    :cond_2
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/CR;->A03:J

    cmp-long v2, v7, v5

    if-gtz v2, :cond_3

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/CR;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/CM;->A05(Lcom/facebook/ads/redexgen/X/BW;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 25960
    :cond_3
    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/CR;->A03:J

    .line 25961
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/CR;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/CM;->A02()Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v9

    .line 25962
    .local v4, "payload":Lcom/facebook/ads/redexgen/X/Hc;
    invoke-virtual {v4, v9}, Lcom/facebook/ads/redexgen/X/CR;->A07(Lcom/facebook/ads/redexgen/X/Hc;)J

    move-result-wide v12

    .line 25963
    .local v10, "granulesInPacket":J
    cmp-long v2, v12, v5

    if-ltz v2, :cond_4

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/CR;->A02:J

    add-long v10, v7, v12

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/CR;->A05:J

    cmp-long v2, v10, v5

    if-ltz v2, :cond_4

    .line 25964
    invoke-virtual {v4, v7, v8}, Lcom/facebook/ads/redexgen/X/CR;->A03(J)J

    move-result-wide v6

    .line 25965
    .local v5, "timeUs":J
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/CR;->A07:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v2

    invoke-interface {v3, v9, v2}, Lcom/facebook/ads/redexgen/X/Bh;->AEX(Lcom/facebook/ads/redexgen/X/Hc;I)V

    .line 25966
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/CR;->A07:Lcom/facebook/ads/redexgen/X/Bh;

    const/4 v8, 0x1

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Hc;->A07()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Bh;->AEY(JIIILcom/facebook/ads/redexgen/X/Bg;)V

    .line 25967
    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/CR;->A05:J

    .line 25968
    .end local v5    # "timeUs":J
    :cond_4
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/CR;->A02:J

    add-long/2addr v0, v12

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/CR;->A02:J

    .line 25969
    .end local v4    # "payload":Lcom/facebook/ads/redexgen/X/Hc;
    .end local v10    # "granulesInPacket":J
    const/4 v0, 0x0

    return v0

    .line 25970
    :cond_5
    const/4 v0, 0x3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    .line 25971
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 25972
    iget v1, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v1, v0, :cond_1

    if-ne v1, v3, :cond_0

    .line 25973
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/CR;->A01(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I

    move-result v0

    return v0

    .line 25974
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 25975
    :cond_1
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 25976
    iput v3, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    .line 25977
    const/4 v0, 0x0

    return v0

    .line 25978
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CR;->A00(Lcom/facebook/ads/redexgen/X/BW;)I

    move-result v0

    return v0
.end method

.method public final A03(J)J
    .locals 4

    .line 25979
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A04(J)J
    .locals 4

    .line 25980
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final A05(JJ)V
    .locals 4

    .line 25981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A0C:Lcom/facebook/ads/redexgen/X/CM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CM;->A03()V

    .line 25982
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 25983
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A0B:Z

    xor-int/lit8 v3, v0, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/CR;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/CR;->A0D:[Ljava/lang/String;

    const-string v1, "k4zvnx9t3uHSh6LLctIVLoh0Ftprjk2l"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "HhnKvAaHZTpmoBA85UMRj52n1m1tHG3b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/CR;->A09(Z)V

    .line 25984
    :cond_0
    :goto_0
    return-void

    .line 25985
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    if-eqz v0, :cond_0

    .line 25986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A08:Lcom/facebook/ads/redexgen/X/CO;

    invoke-interface {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/CO;->AFR(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A05:J

    .line 25987
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Bh;)V
    .locals 1

    .line 25988
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CR;->A06:Lcom/facebook/ads/redexgen/X/BX;

    .line 25989
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CR;->A07:Lcom/facebook/ads/redexgen/X/Bh;

    .line 25990
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/CR;->A09(Z)V

    .line 25991
    return-void
.end method

.method public abstract A07(Lcom/facebook/ads/redexgen/X/Hc;)J
.end method

.method public A08(J)V
    .locals 0

    .line 25992
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/CR;->A02:J

    .line 25993
    return-void
.end method

.method public A09(Z)V
    .locals 4

    .line 25994
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 25995
    new-instance v0, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CQ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A09:Lcom/facebook/ads/redexgen/X/CQ;

    .line 25996
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:J

    .line 25997
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    .line 25998
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A05:J

    .line 25999
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/CR;->A02:J

    .line 26000
    return-void

    .line 26001
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    goto :goto_0
.end method

.method public abstract A0A(Lcom/facebook/ads/redexgen/X/Hc;JLcom/facebook/ads/redexgen/X/CQ;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
