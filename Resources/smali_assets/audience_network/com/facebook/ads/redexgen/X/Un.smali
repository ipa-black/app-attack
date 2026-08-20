.class public final Lcom/facebook/ads/redexgen/X/Un;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GP;


# static fields
.field public static A08:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[Lcom/facebook/ads/redexgen/X/GO;

.field public final A04:I

.field public final A05:Z

.field public final A06:[B

.field public final A07:[Lcom/facebook/ads/redexgen/X/GO;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Un;->A01()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .line 57710
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Un;-><init>(ZII)V

    .line 57711
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 6

    .line 57712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57713
    const/4 v1, 0x0

    const/4 v5, 0x1

    if-lez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 57714
    if-ltz p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 57715
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Un;->A05:Z

    .line 57716
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Un;->A04:I

    .line 57717
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    .line 57718
    add-int/lit8 v0, p3, 0x64

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/GO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    .line 57719
    if-lez p3, :cond_2

    .line 57720
    mul-int v0, p3, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A06:[B

    .line 57721
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v4, p3, :cond_3

    .line 57722
    mul-int v3, v4, p2

    .line 57723
    .local v2, "allocationOffset":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A06:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/GO;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/GO;-><init>([BI)V

    aput-object v0, v2, v4

    .line 57724
    .end local v2    # "allocationOffset":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57725
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57726
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A06:[B

    .line 57727
    :cond_3
    new-array v0, v5, [Lcom/facebook/ads/redexgen/X/GO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A07:[Lcom/facebook/ads/redexgen/X/GO;

    .line 57728
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Un;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

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
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Un;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x68t
        0x28t
        0x13t
        0x18t
        0x5t
        0xdt
        0x18t
        0x1et
        0x9t
        0x18t
        0x19t
        0x5dt
        0x1ct
        0x11t
        0x11t
        0x12t
        0x1et
        0x1ct
        0x9t
        0x14t
        0x12t
        0x13t
        0x47t
        0x5dt
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized A02()I
    .locals 2

    monitor-enter p0

    .line 57729
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A04:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v1, v0

    monitor-exit p0

    return v1

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Un;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A03()V
    .locals 1

    monitor-enter p0

    .line 57730
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A05:Z

    if-eqz v0, :cond_0

    .line 57731
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Un;->A04(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57732
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Un;
    :cond_0
    monitor-exit p0

    return-void

    .line 57733
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04(I)V
    .locals 1

    monitor-enter p0

    .line 57734
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A02:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57735
    .local v0, "targetBufferSizeReduced":Z
    :goto_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Un;->A02:I

    .line 57736
    if-eqz v0, :cond_1

    .line 57737
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Un;->AFd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57738
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Un;
    :cond_1
    monitor-exit p0

    return-void

    .line 57739
    .end local v0    # "targetBufferSizeReduced":Z
    .end local p1    # null:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A3M()Lcom/facebook/ads/redexgen/X/GO;
    .locals 4

    monitor-enter p0

    .line 57740
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:I

    .line 57741
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    if-lez v0, :cond_0

    .line 57742
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    aget-object v3, v1, v0

    .line 57743
    .local v0, "allocation":Lcom/facebook/ads/redexgen/X/GO;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    goto :goto_0

    .line 57744
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A04:I

    new-array v1, v0, [B

    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/GO;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/GO;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57745
    .restart local v0    # "allocation":Lcom/facebook/ads/redexgen/X/GO;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 57746
    .end local v0    # "allocation":Lcom/facebook/ads/redexgen/X/GO;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A6v()I
    .locals 1

    .line 57747
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A04:I

    return v0
.end method

.method public final declared-synchronized AE5(Lcom/facebook/ads/redexgen/X/GO;)V
    .locals 2

    monitor-enter p0

    .line 57748
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A07:[Lcom/facebook/ads/redexgen/X/GO;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    .line 57749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A07:[Lcom/facebook/ads/redexgen/X/GO;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Un;->AE6([Lcom/facebook/ads/redexgen/X/GO;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57750
    monitor-exit p0

    return-void

    .line 57751
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Un;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/GO;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AE6([Lcom/facebook/ads/redexgen/X/GO;)V
    .locals 6

    monitor-enter p0

    .line 57752
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    array-length v0, p1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    .line 57753
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    array-length v0, v0

    mul-int/lit8 v2, v0, 0x2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    array-length v0, p1

    add-int/2addr v1, v0

    .line 57754
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 57755
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/GO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    .line 57756
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Un;
    :cond_0
    array-length v5, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v4, p1, v3

    .line 57757
    .local v2, "allocation":Lcom/facebook/ads/redexgen/X/GO;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A06:[B

    if-eq v1, v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A04:I

    if-ne v1, v0, :cond_2

    .line 57758
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    aput-object v4, v2, v1

    .line 57759
    .end local v2    # "allocation":Lcom/facebook/ads/redexgen/X/GO;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57760
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x17

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Un;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    .line 57761
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Un;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A06:[B

    .line 57762
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Un;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Un;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A04:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57763
    :cond_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:I

    array-length v0, p1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:I

    .line 57764
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57765
    monitor-exit p0

    return-void

    .line 57766
    .end local p1    # null:[Lcom/facebook/ads/redexgen/X/GO;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFd()V
    .locals 8

    monitor-enter p0

    .line 57767
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A04:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hs;->A04(II)I

    move-result v2

    .line 57768
    .local v0, "targetAllocationCount":I
    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 57769
    .local v1, "targetAvailableCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    if-lt v3, v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57770
    monitor-exit p0

    return-void

    .line 57771
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A06:[B

    if-eqz v0, :cond_4

    .line 57772
    const/4 v7, 0x0

    .line 57773
    .local v2, "lowIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    add-int/lit8 v6, v0, -0x1

    .line 57774
    .local v3, "highIndex":I
    :goto_0
    if-gt v7, v6, :cond_3

    .line 57775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    aget-object v5, v0, v7

    .line 57776
    .local v4, "lowAllocation":Lcom/facebook/ads/redexgen/X/GO;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A06:[B

    if-ne v1, v0, :cond_1

    .line 57777
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 57778
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    aget-object v4, v0, v6

    .line 57779
    .local v5, "highAllocation":Lcom/facebook/ads/redexgen/X/GO;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/GO;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A06:[B

    if-eq v1, v0, :cond_2

    .line 57780
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 57781
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    add-int/lit8 v2, v7, 0x1

    .end local v2    # "lowIndex":I
    .local v7, "lowIndex":I
    aput-object v4, v0, v7

    .line 57782
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    add-int/lit8 v0, v6, -0x1

    .end local v3    # "highIndex":I
    .local v6, "highIndex":I
    aput-object v5, v1, v6

    move v6, v0

    move v7, v2

    goto :goto_0

    .line 57783
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Un;
    :cond_3
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 57784
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    if-lt v3, v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57785
    monitor-exit p0

    return-void

    .line 57786
    .end local v2
    .end local v3
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:[Lcom/facebook/ads/redexgen/X/GO;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I

    const/4 v0, 0x0

    invoke-static {v2, v3, v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 57787
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57788
    monitor-exit p0

    return-void

    .line 57789
    .end local v0    # "targetAllocationCount":I
    .end local v1    # "targetAvailableCount":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
