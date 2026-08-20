.class public final Lcom/facebook/ads/redexgen/X/HY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/HW;,
        Lcom/facebook/ads/redexgen/X/HX;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[I

.field public static A02:[Ljava/lang/String;

.field public static final A03:[B

.field public static final A04:[F

.field public static final A05:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 36677
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NtIRWyZV8H4fZGcEpCmcKf3IqD05aRmR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GeJrrdqpTOChTmOZ0a7zD9rW5xWuwwPC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fB9woPX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "60Ey3AJYIgulbHGVt5ok32wwr6OtRAhs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ywmal8sml3QBlriqnsJwUXbJL0wOA6tO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h15JbuXclRunjao1u8Y3u6XMQgnEqNxE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VnL2Csv3rCYD2ISe0PbhclEmcnjJ2Dil"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pqWxkCx1Owc6AlIW11IRV9LZfrwFezHs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HY;->A08()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HY;->A03:[B

    .line 36678
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/HY;->A04:[F

    .line 36679
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/HY;->A05:Ljava/lang/Object;

    .line 36680
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/HY;->A01:[I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 36681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36682
    return-void
.end method

.method public static A00([BI)I
    .locals 1

    .line 36683
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static A01([BI)I
    .locals 1

    .line 36684
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static A02([BI)I
    .locals 8

    .line 36685
    sget-object v7, Lcom/facebook/ads/redexgen/X/HY;->A05:Ljava/lang/Object;

    monitor-enter v7

    .line 36686
    const/4 v2, 0x0

    .line 36687
    .local v1, "position":I
    const/4 v6, 0x0

    .line 36688
    .local v2, "scratchEscapeCount":I
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 36689
    :try_start_0
    invoke-static {p0, v2, p1}, Lcom/facebook/ads/redexgen/X/HY;->A03([BII)I

    move-result v2

    .line 36690
    if-ge v2, p1, :cond_0

    .line 36691
    sget-object v0, Lcom/facebook/ads/redexgen/X/HY;->A01:[I

    array-length v0, v0

    if-gt v0, v6, :cond_1

    .line 36692
    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/HY;->A01:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 36693
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HY;->A01:[I

    .line 36694
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A01:[I

    add-int/lit8 v0, v6, 0x1

    .end local v2    # "scratchEscapeCount":I
    .local v4, "scratchEscapeCount":I
    aput v2, v1, v6

    .line 36695
    add-int/lit8 v2, v2, 0x3

    move v6, v0

    goto :goto_0

    .line 36696
    .restart local v1    # "position":I
    .restart local v2    # "scratchEscapeCount":I
    :cond_2
    sub-int/2addr p1, v6

    .line 36697
    .local v3, "unescapedLength":I
    const/4 v5, 0x0

    .line 36698
    .local v4, "escapedPosition":I
    const/4 v4, 0x0

    .line 36699
    .local v5, "unescapedPosition":I
    const/4 v3, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 36700
    sget-object v0, Lcom/facebook/ads/redexgen/X/HY;->A01:[I

    aget v2, v0, v3

    .line 36701
    .local v7, "nextEscapePosition":I
    sub-int/2addr v2, v5

    .line 36702
    .local p0, "copyLength":I
    invoke-static {p0, v5, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36703
    add-int/2addr v4, v2

    .line 36704
    add-int/lit8 v1, v4, 0x1

    .end local v5    # "unescapedPosition":I
    .local p1, "unescapedPosition":I
    const/4 v0, 0x0

    aput-byte v0, p0, v4

    .line 36705
    add-int/lit8 v4, v1, 0x1

    .end local p1    # "unescapedPosition":I
    .restart local v5    # "unescapedPosition":I
    aput-byte v0, p0, v1

    .line 36706
    add-int/lit8 v0, v2, 0x3

    add-int/2addr v5, v0

    .line 36707
    .end local v7    # "nextEscapePosition":I
    .end local p0    # "copyLength":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36708
    .end local v6    # "i":I
    :cond_3
    sub-int v0, p1, v4

    .line 36709
    .local v6, "remainingLength":I
    invoke-static {p0, v5, p0, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36710
    monitor-exit v7

    return p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36711
    .end local v1    # "position":I
    .end local v4    # "escapedPosition":I
    :catchall_0
    move-exception v0

    .end local v1
    .end local v2    # "scratchEscapeCount":I
    .end local v3    # "unescapedLength":I
    .end local v4
    .end local v5    # "unescapedPosition":I
    .end local v6    # "remainingLength":I
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A03([BII)I
    .locals 2

    .line 36712
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_1

    .line 36713
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v1, p0, v0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 36714
    return p1

    .line 36715
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 36716
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static A04([BII[Z)I
    .locals 8

    .line 36717
    sub-int v5, p2, p1

    .line 36718
    .local v0, "length":I
    const/4 v7, 0x0

    const/4 v3, 0x1

    if-ltz v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 36719
    if-nez v5, :cond_1

    .line 36720
    return p2

    .line 36721
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 36722
    :cond_1
    const/4 v1, 0x2

    if-eqz p3, :cond_4

    .line 36723
    aget-boolean v0, p3, v7

    if-eqz v0, :cond_2

    .line 36724
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HY;->A0B([Z)V

    .line 36725
    add-int/lit8 v0, p1, -0x3

    return v0

    .line 36726
    :cond_2
    if-le v5, v3, :cond_3

    aget-boolean v0, p3, v3

    if-eqz v0, :cond_3

    aget-byte v0, p0, p1

    if-ne v0, v3, :cond_3

    .line 36727
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HY;->A0B([Z)V

    .line 36728
    add-int/lit8 v0, p1, -0x2

    return v0

    .line 36729
    :cond_3
    if-le v5, v1, :cond_4

    aget-boolean v0, p3, v1

    if-eqz v0, :cond_4

    aget-byte v0, p0, p1

    if-nez v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_4

    .line 36730
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HY;->A0B([Z)V

    .line 36731
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 36732
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 36733
    .local v4, "limit":I
    add-int/lit8 v2, p1, 0x2

    .local v5, "i":I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 36734
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xfe

    if-eqz v0, :cond_5

    .line 36735
    :goto_2
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 36736
    :cond_5
    add-int/lit8 v0, v2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_7

    aget-byte v0, p0, v2

    if-ne v0, v3, :cond_7

    .line 36737
    if-eqz p3, :cond_6

    .line 36738
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/HY;->A0B([Z)V

    .line 36739
    :cond_6
    add-int/lit8 v3, v2, -0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "cwZIqZ1AW63JkQ3pIqo9DKAUVDIU8B2n"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "C4ULzJ2O8tT1dK0koFoE4t7X4OAunQC5"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    .line 36740
    :cond_7
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 36741
    .end local v5    # "i":I
    :cond_8
    if-eqz p3, :cond_f

    .line 36742
    if-le v5, v1, :cond_d

    .line 36743
    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    add-int/lit8 v0, p2, -0x2

    aget-byte v6, p0, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v2, v4, v0

    const/4 v0, 0x1

    aget-object v4, v4, v0

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    sget-object v4, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v2, "3nijOMlfzKgjywxgx1aIEuQEOVvcrnGF"

    const/4 v0, 0x5

    aput-object v2, v4, v0

    const-string v2, "mhxYTAHU7iRAJ8bI14cg8xnokscJO5gc"

    const/4 v0, 0x0

    aput-object v2, v4, v0

    if-nez v6, :cond_c

    add-int/lit8 v0, p2, -0x1

    aget-byte v6, p0, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0x15

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_b

    sget-object v4, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v2, "9ZCFGjZIw1dXFFVp2oTHQfikOa97hWgs"

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const-string v2, "4W5bkIHCCYZDsaIH6FljQxOPKIhpSySs"

    const/4 v0, 0x7

    aput-object v2, v4, v0

    if-ne v6, v3, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 36744
    :cond_d
    if-ne v5, v1, :cond_14

    .line 36745
    aget-boolean v0, p3, v1

    if-eqz v0, :cond_13

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_13

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_13

    const/4 v0, 0x1

    .line 36746
    :goto_3
    aput-boolean v0, p3, v7

    .line 36747
    if-le v5, v3, :cond_11

    .line 36748
    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_10

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 36749
    :goto_4
    aput-boolean v0, p3, v3

    .line 36750
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    const/4 v7, 0x1

    :cond_e
    aput-boolean v7, p3, v1

    .line 36751
    :cond_f
    return p2

    .line 36752
    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    .line 36753
    :cond_11
    aget-boolean v0, p3, v1

    if-eqz v0, :cond_12

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    goto :goto_4

    .line 36754
    :cond_13
    const/4 v0, 0x0

    goto :goto_3

    .line 36755
    :cond_14
    aget-boolean v0, p3, v3

    if-eqz v0, :cond_15

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_15

    const/4 v0, 0x1

    goto :goto_3

    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static A05([BII)Lcom/facebook/ads/redexgen/X/HW;
    .locals 2

    .line 36756
    new-instance v1, Lcom/facebook/ads/redexgen/X/Hd;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hd;-><init>([BII)V

    .line 36757
    .local v0, "data":Lcom/facebook/ads/redexgen/X/Hd;
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 36758
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result p1

    .line 36759
    .local v1, "picParameterSetId":I
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result p0

    .line 36760
    .local p0, "seqParameterSetId":I
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 36761
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v1

    .line 36762
    .local p1, "bottomFieldPicOrderInFramePresentFlag":Z
    new-instance v0, Lcom/facebook/ads/redexgen/X/HW;

    invoke-direct {v0, p1, p0, v1}, Lcom/facebook/ads/redexgen/X/HW;-><init>(IIZ)V

    return-object v0
.end method

.method public static A06([BII)Lcom/facebook/ads/redexgen/X/HX;
    .locals 19

    .line 36763
    new-instance v6, Lcom/facebook/ads/redexgen/X/Hd;

    move-object/from16 v2, p0

    move/from16 v1, p1

    move/from16 v0, p2

    invoke-direct {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;-><init>([BII)V

    .line 36764
    .local v0, "data":Lcom/facebook/ads/redexgen/X/Hd;
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 36765
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v7

    .line 36766
    .local v5, "profileIdc":I
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A07(I)V

    .line 36767
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v12

    .line 36768
    .local v18, "seqParameterSetId":I
    const/4 v3, 0x1

    .line 36769
    .local v7, "chromaFormatIdc":I
    const/16 v16, 0x0

    .line 36770
    .local v8, "separateColorPlaneFlag":Z
    const/4 v4, 0x3

    const/16 v0, 0x64

    if-eq v7, v0, :cond_2

    const/16 v8, 0x6e

    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "yVhhMtRnqXgY1Kb3O7KmUsZDbX87nSR0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "CScaMkkS4ynj4HoVSfcs8Df7mB4vIw2E"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v7, v8, :cond_2

    const/16 v0, 0x7a

    if-eq v7, v0, :cond_2

    const/16 v0, 0xf4

    if-eq v7, v0, :cond_2

    const/16 v0, 0x2c

    if-eq v7, v0, :cond_2

    const/16 v0, 0x53

    if-eq v7, v0, :cond_2

    const/16 v0, 0x56

    if-eq v7, v0, :cond_2

    const/16 v8, 0x76

    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "JhuiEkWh4gR2K7eJg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v7, v8, :cond_2

    :goto_0
    const/16 v0, 0x80

    if-eq v7, v0, :cond_2

    const/16 v0, 0x8a

    if-ne v7, v0, :cond_8

    .line 36771
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v3

    .line 36772
    if-ne v3, v4, :cond_3

    .line 36773
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v16

    .line 36774
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 36775
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 36776
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 36777
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    .line 36778
    .local v10, "seqScalingMatrixPresentFlag":Z
    if-eqz v0, :cond_8

    .line 36779
    if-eq v3, v4, :cond_6

    const/16 v2, 0x8

    .line 36780
    .local v11, "limit":I
    :goto_1
    const/4 v1, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 36781
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    .line 36782
    .local v13, "seqScalingListPresentFlag":Z
    if-eqz v0, :cond_4

    .line 36783
    const/4 v0, 0x6

    if-ge v1, v0, :cond_5

    const/16 v0, 0x10

    :goto_3
    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/HY;->A09(Lcom/facebook/ads/redexgen/X/Hd;I)V

    .line 36784
    .end local v13    # "seqScalingListPresentFlag":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36785
    :cond_5
    const/16 v0, 0x40

    goto :goto_3

    .line 36786
    :cond_6
    const/16 v2, 0xc

    goto :goto_1

    :cond_7
    if-eq v7, v8, :cond_2

    goto :goto_0

    .line 36787
    .end local v7    # "chromaFormatIdc":I
    .end local v8    # "separateColorPlaneFlag":Z
    .local v15, "chromaFormatIdc":I
    .local p0, "separateColorPlaneFlag":Z
    :cond_8
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v0

    add-int/lit8 v18, v0, 0x4

    .line 36788
    .local p1, "frameNumLength":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v9

    .line 36789
    .local v14, "picOrderCntType":I
    const/16 p1, 0x0

    .line 36790
    .local v7, "picOrderCntLsbLength":I
    const/16 p2, 0x0

    .line 36791
    .local v8, "deltaPicOrderAlwaysZeroFlag":Z
    const/4 v2, 0x1

    if-nez v9, :cond_14

    .line 36792
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v0

    add-int/lit8 p1, v0, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_13

    .line 36793
    .end local v8    # "deltaPicOrderAlwaysZeroFlag":Z
    .end local v17
    .local v6, "picOrderCntLsbLength":I
    .local p2, "deltaPicOrderAlwaysZeroFlag":Z
    :cond_9
    :goto_4
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 36794
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 36795
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 36796
    .local p3, "picWidthInMbs":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 36797
    .local p4, "picHeightInMapUnits":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v17

    .line 36798
    .local p5, "frameMbsOnlyFlag":Z
    rsub-int/lit8 v0, v17, 0x2

    mul-int/2addr v0, v1

    .line 36799
    .local p6, "frameHeightInMbs":I
    if-nez v17, :cond_a

    .line 36800
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 36801
    :cond_a
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A06()V

    .line 36802
    mul-int/lit8 v13, v7, 0x10

    .line 36803
    .local v8, "frameWidth":I
    mul-int/lit8 v14, v0, 0x10

    .line 36804
    .local v11, "frameHeight":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    .line 36805
    .local p7, "frameCroppingFlag":Z
    if-eqz v0, :cond_11

    .line 36806
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v11

    .line 36807
    .local v12, "frameCropLeftOffset":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v10

    .line 36808
    .local v13, "frameCropRightOffset":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v8

    .line 36809
    .local v17, "frameCropTopOffset":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v7

    .line 36810
    .local p8, "frameCropBottomOffset":I
    if-nez v3, :cond_e

    .line 36811
    const/4 v1, 0x1

    .line 36812
    .local v9, "cropUnitX":I
    rsub-int/lit8 v0, v17, 0x2

    .line 36813
    .local v7, "cropUnitY":I
    .end local v10    # "seqScalingMatrixPresentFlag":Z
    .end local p9
    .restart local v7    # "cropUnitY":I
    .local v9, "cropUnitX":I
    :goto_5
    add-int/2addr v11, v10

    mul-int/2addr v11, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1e

    if-eq v2, v1, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v2, "K9ZSRxGlh7Ws8i4c0lKuIdr8XNNG4vGX"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    const-string v2, "z3Vhx6GLQ83q5V050JhbnsU4vD8C98vT"

    const/4 v1, 0x1

    aput-object v2, v3, v1

    sub-int/2addr v13, v11

    .line 36814
    add-int/2addr v8, v7

    mul-int/2addr v8, v0

    sub-int/2addr v14, v8

    .line 36815
    .end local v8    # "frameWidth":I
    .end local v11    # "frameHeight":I
    .local p8, "frameWidth":I
    .local p9, "frameHeight":I
    :goto_6
    const/high16 v15, 0x3f800000    # 1.0f

    .line 36816
    .local v7, "pixelWidthHeightRatio":F
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    .line 36817
    .local p10, "vuiParametersPresentFlag":Z
    if-eqz v0, :cond_b

    .line 36818
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result v0

    .line 36819
    .local v8, "aspectRatioInfoPresentFlag":Z
    if-eqz v0, :cond_b

    .line 36820
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v3

    .line 36821
    .local v4, "aspectRatioIdc":I
    const/16 v0, 0xff

    if-ne v3, v0, :cond_c

    .line 36822
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v1

    .line 36823
    .local v10, "sarWidth":I
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A05(I)I

    move-result v0

    .line 36824
    .local v9, "sarHeight":I
    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    .line 36825
    int-to-float v15, v1

    int-to-float v0, v0

    div-float/2addr v15, v0

    .line 36826
    .end local v7    # "pixelWidthHeightRatio":F
    .local v4, "pixelWidthHeightRatio":F
    :cond_b
    :goto_7
    new-instance v11, Lcom/facebook/ads/redexgen/X/HX;

    .end local v14    # "picOrderCntType":I
    .local p12, "picOrderCntType":I
    .end local v15    # "chromaFormatIdc":I
    .local p13, "chromaFormatIdc":I
    move/from16 p0, v9

    invoke-direct/range {v11 .. v21}, Lcom/facebook/ads/redexgen/X/HX;-><init>(IIIFZZIIIZ)V

    return-object v11

    .line 36827
    :cond_c
    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A04:[F

    array-length v0, v1

    if-ge v3, v0, :cond_d

    .line 36828
    aget v15, v1, v3

    goto :goto_7

    .line 36829
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    const/16 v1, 0x23

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HY;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HY;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 36830
    .end local v7
    .end local v9    # "sarHeight":I
    :cond_e
    if-ne v3, v4, :cond_10

    const/4 v1, 0x1

    .line 36831
    .local v9, "subWidthC":I
    :goto_8
    if-ne v3, v2, :cond_f

    const/4 v2, 0x2

    .line 36832
    .local v10, "subHeightC":I
    .local p9, "cropUnitX":I
    :cond_f
    rsub-int/lit8 v0, v17, 0x2

    mul-int/2addr v0, v2

    goto/16 :goto_5

    .line 36833
    :cond_10
    const/4 v1, 0x2

    goto :goto_8

    .line 36834
    .end local v7
    .end local v9    # "subWidthC":I
    .end local v12    # "frameCropLeftOffset":I
    .end local v13    # "frameCropRightOffset":I
    .end local v17    # "frameCropTopOffset":I
    .end local p8
    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_12

    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "rEmuJ6sFB5gWWdCI0T7L47ZB03FBkEHD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kUZJy2qQtWdVgeJj0t3oDkGmETEmhFuj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto/16 :goto_6

    :cond_12
    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "DSl3hQKuabn38CmnzrECcwmRq5HwdYpG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "fA6X51zRtxq1lySt2ARPPLPLlCaXaXco"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    goto/16 :goto_6

    :cond_13
    sget-object v7, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "0FcrA39w8cpWUUBY0PhZdDl2WVIzmr3H"

    const/4 v0, 0x6

    aput-object v1, v7, v0

    const-string v1, "bEwoHyJue3o3gWd30VLAmFgh8fIWiG5R"

    const/4 v0, 0x1

    aput-object v1, v7, v0

    .end local v7
    .local v11, "picOrderCntLsbLength":I
    goto/16 :goto_4

    .line 36835
    .end local v11    # "picOrderCntLsbLength":I
    .restart local v7    # "pixelWidthHeightRatio":F
    :cond_14
    if-ne v9, v2, :cond_9

    .line 36836
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A0A()Z

    move-result p2

    .line 36837
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A03()I

    .line 36838
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A03()I

    .line 36839
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    move-result v0

    int-to-long v7, v0

    .line 36840
    .local v11, "numRefFramesInPicOrderCntCycle":J
    const/4 v10, 0x0

    .local v13, "i":I
    .end local v7    # "pixelWidthHeightRatio":F
    .local v17, "picOrderCntLsbLength":I
    :goto_9
    int-to-long v0, v10

    cmp-long v11, v0, v7

    if-gez v11, :cond_9

    .line 36841
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hd;->A04()I

    .line 36842
    add-int/lit8 v10, v10, 0x1

    goto :goto_9
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x41

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HY;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x5at
        0x57t
        0x6et
        0x55t
        0x52t
        0x4ft
        0x6et
        0x4ft
        0x52t
        0x57t
        0x11t
        0x2at
        0x21t
        0x3ct
        0x34t
        0x21t
        0x27t
        0x30t
        0x21t
        0x20t
        0x64t
        0x25t
        0x37t
        0x34t
        0x21t
        0x27t
        0x30t
        0x1bt
        0x36t
        0x25t
        0x30t
        0x2dt
        0x2bt
        0x1bt
        0x2dt
        0x20t
        0x27t
        0x64t
        0x32t
        0x25t
        0x28t
        0x31t
        0x21t
        0x7et
        0x64t
        0x1et
        0x1t
        0xct
        0xdt
        0x7t
        0x47t
        0x9t
        0x1et
        0xbt
        0x55t
        0x4at
        0x47t
        0x46t
        0x4ct
        0xct
        0x4bt
        0x46t
        0x55t
        0x40t
    .end array-data
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Hd;I)V
    .locals 6

    .line 36843
    const/16 v5, 0x8

    .line 36844
    .local v0, "lastScale":I
    const/16 v3, 0x8

    .line 36845
    .local v1, "nextScale":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v4, p1, :cond_3

    .line 36846
    if-eqz v3, :cond_0

    .line 36847
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hd;->A03()I

    move-result v0

    .line 36848
    .local v3, "deltaScale":I
    add-int/2addr v0, v5

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v3, v0, 0x100

    .line 36849
    .end local v3    # "deltaScale":I
    :cond_0
    if-nez v3, :cond_2

    :goto_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36850
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "KXMRoqtdhshm8G74asFo5uqDFob0Iegs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "VTZDrARlCd8p2vM8k7YrNOP12vylJmks"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 36851
    :cond_2
    move v5, v3

    goto :goto_1

    .line 36852
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public static A0A(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 36853
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 36854
    .local v0, "length":I
    const/4 v6, 0x0

    .line 36855
    .local v1, "consecutiveZeros":I
    const/4 v5, 0x0

    .line 36856
    .local v2, "offset":I
    :goto_0
    add-int/lit8 v0, v5, 0x1

    if-ge v0, v4, :cond_5

    .line 36857
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v3, v0, 0xff

    .line 36858
    .local v3, "value":I
    const/4 v0, 0x3

    if-ne v6, v0, :cond_1

    .line 36859
    const/4 v7, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "cLm552F16buuPP9xMufxVHaN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v3, v7, :cond_2

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    const/4 v0, 0x7

    if-ne v1, v0, :cond_2

    .line 36860
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 36861
    .local v4, "offsetData":Ljava/nio/ByteBuffer;
    add-int/lit8 v0, v5, -0x3

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36862
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 36863
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36864
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_4

    .line 36865
    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "6nmXEFQWU8IXvuDOHtOk9CPNFswxHRRs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "sRzFReGlCKeKmBP91kaLZyOllIcQLpOs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    .line 36866
    .end local v4    # "offsetData":Ljava/nio/ByteBuffer;
    :cond_1
    if-nez v3, :cond_2

    .line 36867
    add-int/lit8 v6, v6, 0x1

    .line 36868
    :cond_2
    if-eqz v3, :cond_3

    .line 36869
    const/4 v6, 0x0

    .line 36870
    .end local v3    # "value":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 36871
    goto :goto_0

    .line 36872
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/HY;->A02:[Ljava/lang/String;

    const-string v1, "MM5ABksrrLy98KCtfJajpuklss5i1OmF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "sCLzk23Fd4ag3qXWex39LdUh6FJSiknG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    .line 36873
    :cond_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 36874
    return-void
.end method

.method public static A0B([Z)V
    .locals 2

    .line 36875
    const/4 v1, 0x0

    aput-boolean v1, p0, v1

    .line 36876
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 36877
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 36878
    return-void
.end method

.method public static A0C(Ljava/lang/String;B)Z
    .locals 4

    .line 36879
    const/16 v2, 0x2e

    const/16 v1, 0x9

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HY;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x1f

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    .line 36880
    :cond_0
    const/16 v2, 0x37

    const/16 v1, 0xa

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HY;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v1, p1, 0x7e

    shr-int/2addr v1, v3

    const/16 v0, 0x27

    if-ne v1, v0, :cond_2

    .line 36881
    :cond_1
    :goto_0
    return v3

    .line 36882
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
