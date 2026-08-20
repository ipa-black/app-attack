.class public final Lcom/facebook/ads/redexgen/X/VG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Eo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClippingSampleStream"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/Eo;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/BS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58572
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2iJQWlRsUDoPLtxxhE0wL9Cx9C7nOBrU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oJgjoNY6hjjHJmelHDlI5xZuIY2b67h"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lPiJTezOZt4yDoox6bX3l7R6F2XzCVNN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wrWzKGBonHGMzL1uPVOM3eUURFaMzKwB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "aBcbXNoo2m3wtFqQFSiOk3RFoevM7GVG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GcCP7ZOQcwM7LeXwSBQclRy3S6aYmmD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JUPsbTU3PQNYOt9vjPoPUzbQPtEFF22Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "21kt6KXNgOdDUktVBInrV9GyhB6eLfYq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VG;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BS;Lcom/facebook/ads/redexgen/X/Eo;)V
    .locals 0

    .line 58573
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/BS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58574
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:Lcom/facebook/ads/redexgen/X/Eo;

    .line 58575
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 58576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:Z

    .line 58577
    return-void
.end method

.method public final A8r()Z
    .locals 1

    .line 58578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/BS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BS;->A03()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Eo;->A8r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Eo;->A9j()V

    .line 58580
    return-void
.end method

.method public final ADs(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I
    .locals 12

    .line 58581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/BS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BS;->A03()Z

    move-result v0

    const/4 v8, -0x3

    if-eqz v0, :cond_0

    .line 58582
    return v8

    .line 58583
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:Z

    const/4 v6, 0x4

    const/4 v5, -0x4

    if-eqz v0, :cond_1

    .line 58584
    invoke-virtual {p2, v6}, Lcom/facebook/ads/redexgen/X/Ak;->A02(I)V

    .line 58585
    return v5

    .line 58586
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eo;->ADs(Lcom/facebook/ads/redexgen/X/9S;Lcom/facebook/ads/redexgen/X/Wg;Z)I

    move-result v7

    .line 58587
    .local v0, "result":I
    const/4 v9, -0x5

    const-wide/high16 v10, -0x8000000000000000L

    if-ne v7, v9, :cond_6

    .line 58588
    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/9S;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 58589
    .local v1, "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06:I

    if-nez v0, :cond_2

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07:I

    if-eqz v0, :cond_3

    .line 58590
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/BS;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BS;->A01:J

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    cmp-long v0, v1, v5

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    .line 58591
    .local v2, "encoderDelay":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/BS;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    cmp-long v0, v1, v10

    if-eqz v0, :cond_4

    .line 58592
    .local v3, "encoderPadding":I
    :goto_1
    invoke-virtual {v7, v3, v4}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G(II)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/9S;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    .line 58593
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :cond_3
    return v9

    .line 58594
    :cond_4
    iget v4, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07:I

    goto :goto_1

    .line 58595
    :cond_5
    iget v3, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06:I

    goto :goto_0

    .line 58596
    .end local v1    # "format":Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/BS;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    cmp-long v2, v0, v10

    if-eqz v2, :cond_9

    if-ne v7, v5, :cond_7

    iget-wide v3, p2, Lcom/facebook/ads/redexgen/X/Wg;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/BS;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_8

    :cond_7
    if-ne v7, v8, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/BS;

    .line 58597
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BS;->A5w()J

    move-result-wide v1

    cmp-long v0, v1, v10

    if-nez v0, :cond_9

    .line 58598
    :cond_8
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Wg;->A07()V

    .line 58599
    invoke-virtual {p2, v6}, Lcom/facebook/ads/redexgen/X/Ak;->A02(I)V

    .line 58600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:Z

    .line 58601
    return v5

    .line 58602
    :cond_9
    return v7
.end method

.method public final AFI(J)I
    .locals 4

    .line 58603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/BS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BS;->A03()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58604
    const/4 v3, -0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/VG;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VG;->A03:[Ljava/lang/String;

    const-string v1, "I7Vle9theSHJs2vfg5SYnPGKFT8j8RVM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58605
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eo;->AFI(J)I

    move-result v0

    return v0
.end method
