.class public final Lcom/facebook/ads/redexgen/X/W3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CO;
.implements Lcom/facebook/ads/redexgen/X/Be;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlacOggSeeker"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:[J

.field public A03:[J

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/W2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 61141
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RxrevBHwZunvWtoC5v6V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BM7NoIYIDKALVkWYBFUm4mgKfD4surZT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wT545zonAETVeqcNIpSLQKDSBA4psZtT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "O6YerNOVuBIV8g4cn8DH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "f7xxxnJira03VIlY2bxNtwSQeXyrwxct"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8kRv9b0m26r6Uh6XKMOB9WasCMU5o07v"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0W8GSaK37PxtOyOV4bIEUVoiYe2UqjRN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TYUMHNguvpgJeUJ5Wme9D9z4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W3;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/W2;)V
    .locals 2

    .line 61142
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W3;->A04:Lcom/facebook/ads/redexgen/X/W2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61143
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A00:J

    .line 61144
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A01:J

    .line 61145
    return-void
.end method


# virtual methods
.method public final A00(J)V
    .locals 0

    .line 61146
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/W3;->A00:J

    .line 61147
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Hc;)V
    .locals 5

    .line 61148
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 61149
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0G()I

    move-result v0

    .line 61150
    .local v0, "length":I
    div-int/lit8 v4, v0, 0x12

    .line 61151
    .local v1, "numberOfSeekPoints":I
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:[J

    .line 61152
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A03:[J

    .line 61153
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 61154
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:[J

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0L()J

    move-result-wide v0

    aput-wide v0, v2, v3

    .line 61155
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W3;->A03:[J

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hc;->A0L()J

    move-result-wide v0

    aput-wide v0, v2, v3

    .line 61156
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Z(I)V

    .line 61157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61158
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public final A4V()Lcom/facebook/ads/redexgen/X/Be;
    .locals 0

    .line 61159
    return-object p0
.end method

.method public final A6Y()J
    .locals 2

    .line 61160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A04:Lcom/facebook/ads/redexgen/X/W2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A01(Lcom/facebook/ads/redexgen/X/W2;)Lcom/facebook/ads/redexgen/X/HP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HP;->A01()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7a(J)Lcom/facebook/ads/redexgen/X/Bd;
    .locals 10

    .line 61161
    move-object v8, p0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/W3;->A04:Lcom/facebook/ads/redexgen/X/W2;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CR;->A04(J)J

    move-result-wide v1

    .line 61162
    .local v3, "granule":J
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/W3;->A02:[J

    const/4 v9, 0x1

    invoke-static {v0, v1, v2, v9, v9}, Lcom/facebook/ads/redexgen/X/Hs;->A0B([JJZZ)I

    move-result v7

    .line 61163
    .local v5, "index":I
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/W3;->A04:Lcom/facebook/ads/redexgen/X/W2;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/W3;->A02:[J

    aget-wide v0, v0, v7

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/CR;->A03(J)J

    move-result-wide v2

    .line 61164
    .local v7, "seekTimeUs":J
    iget-wide v0, v8, Lcom/facebook/ads/redexgen/X/W3;->A00:J

    iget-object v4, v8, Lcom/facebook/ads/redexgen/X/W3;->A03:[J

    aget-wide v4, v4, v7

    add-long/2addr v0, v4

    .line 61165
    .local v9, "seekPosition":J
    new-instance v6, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(JJ)V

    .line 61166
    .local p1, "seekPoint":Lcom/facebook/ads/redexgen/X/Bf;
    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/W3;->A02:[J

    array-length v0, v1

    sub-int/2addr v0, v9

    if-ne v7, v0, :cond_1

    .line 61167
    .end local v6
    .end local p2
    .end local p4
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0

    .line 61168
    :cond_1
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/W3;->A04:Lcom/facebook/ads/redexgen/X/W2;

    add-int/lit8 v0, v7, 0x1

    aget-wide v0, v1, v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/CR;->A03(J)J

    move-result-wide v4

    .line 61169
    .local p2, "secondSeekTimeUs":J
    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/W3;->A00:J

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/W3;->A03:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v0, v1, v0

    add-long/2addr v2, v0

    .line 61170
    .local p4, "secondSeekPosition":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bf;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Bf;-><init>(JJ)V

    .line 61171
    .local v6, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/Bf;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bd;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Bd;-><init>(Lcom/facebook/ads/redexgen/X/Bf;Lcom/facebook/ads/redexgen/X/Bf;)V

    return-object v0
.end method

.method public final A8v()Z
    .locals 1

    .line 61172
    const/4 v0, 0x1

    return v0
.end method

.method public final ADq(Lcom/facebook/ads/redexgen/X/BW;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61173
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/W3;->A01:J

    const-wide/16 v4, -0x1

    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-ltz v0, :cond_1

    .line 61174
    const-wide/16 v0, 0x2

    add-long/2addr v6, v0

    neg-long v2, v6

    .line 61175
    .local v0, "result":J
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/W3;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/W3;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61176
    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/W3;->A05:[Ljava/lang/String;

    const-string v1, "MeEp95NFLxRX8bxkfA2m"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "RwTpOb1Sie1PnKrI5U9E"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    return-wide v2

    .line 61177
    .end local v0    # "result":J
    :cond_1
    return-wide v4
.end method

.method public final AFR(J)J
    .locals 4

    .line 61178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A04:Lcom/facebook/ads/redexgen/X/W2;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CR;->A04(J)J

    move-result-wide v2

    .line 61179
    .local v0, "granule":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:[J

    const/4 v0, 0x1

    invoke-static {v1, v2, v3, v0, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A0B([JJZZ)I

    move-result v1

    .line 61180
    .local v2, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A02:[J

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W3;->A01:J

    .line 61181
    return-wide v2
.end method
