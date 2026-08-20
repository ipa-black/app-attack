.class public final Lcom/facebook/ads/redexgen/X/Sc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Kd;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Li;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Lcom/facebook/ads/redexgen/X/Lh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Lcom/facebook/ads/redexgen/X/Sa;

.field public A08:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A09:Z

.field public A0A:Z

.field public A0B:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 52671
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yjxjfYdrUuNcQdEaAwocONv5EWPutnE0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dRlwVer0DvGhJUYrc6Uo0NmXUudA179W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0RnVmJRwwZudZEhL6bHsgo2zllxyZ4rb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "m0b7Xk04EuyV6HvP3aQ0qivYD5xsobzk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0t24jhYDd0ZYm7OB5Pi8K72QIL3VEz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lOzGJRW4wb6yqjR22F"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IF7HB2KmjMtnMILVYc8NomcIB26UEqSU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4w4SFr7wcyEc7Fy4rwfiYpUJCop0r4V7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sc;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sc;->A01()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Li;Lcom/facebook/ads/redexgen/X/Sa;)V
    .locals 1
    .param p6    # Lcom/facebook/ads/redexgen/X/Li;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A0B:Z

    .line 52674
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A0A:Z

    .line 52675
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A09:Z

    .line 52676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A08:Ljava/lang/Integer;

    .line 52677
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A06:Lcom/facebook/ads/redexgen/X/Lh;

    .line 52678
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A01:I

    .line 52679
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:I

    .line 52680
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Sc;->A02:I

    .line 52681
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Sc;->A05:Ljava/lang/String;

    .line 52682
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Sc;->A04:Ljava/lang/String;

    .line 52683
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    .line 52684
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Sc;->A07:Lcom/facebook/ads/redexgen/X/Sa;

    .line 52685
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sc;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2c

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
    .locals 4

    const/16 v0, 0xf

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sc;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sc;->A0D:[Ljava/lang/String;

    const-string v1, "4rqaLE5ZbqFcULNB9c87AdfXRmFVNOuy"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "UmGixQziu9kcJVx2wygXDh2bknYXJmsp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Sc;->A0C:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x45t
        -0x2dt
        -0x3bt
        -0x3dt
        -0x2dt
        -0x43t
        -0x12t
        0x2t
        0x1t
        -0x4t
        -0x10t
        -0x7t
        -0xat
        -0x10t
        -0x8t
    .end array-data
.end method

.method private declared-synchronized A02()V
    .locals 1

    monitor-enter p0

    .line 52686
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A09:Z

    if-eqz v0, :cond_0

    .line 52687
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sc;->A04()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52688
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sc;
    :cond_0
    monitor-exit p0

    return-void

    .line 52689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Sc;)V
    .locals 0

    .line 52690
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sc;->A02()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A04()V
    .locals 4

    monitor-enter p0

    .line 52691
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A0A:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52692
    monitor-exit p0

    return-void

    .line 52693
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A0A:Z

    .line 52694
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A01:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    if-eqz v0, :cond_2

    .line 52695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Li;->setProgressImage(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 52696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Li;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    .line 52697
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 52698
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A06:Lcom/facebook/ads/redexgen/X/Lh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lh;)V

    .line 52699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A08:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 52700
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A08:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    .line 52701
    .end local v3
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A07:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NM;->getColorInfo()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52702
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A07:Lcom/facebook/ads/redexgen/X/Sa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NM;->getColorInfo()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->A04(Lcom/facebook/ads/redexgen/X/1L;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52703
    :cond_2
    monitor-exit p0

    return-void

    .line 52704
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AAa()V
    .locals 4

    monitor-enter p0

    .line 52705
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A0A:Z

    if-nez v0, :cond_0

    .line 52706
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sc;->A07:Lcom/facebook/ads/redexgen/X/Sa;

    const/4 v2, 0x6

    const/16 v1, 0x9

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Sa;->A09(Ljava/lang/String;)V

    .line 52707
    .end local v2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sc;->A04()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52708
    monitor-exit p0

    return-void

    .line 52709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ACC(F)V
    .locals 6

    monitor-enter p0

    .line 52710
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A0A:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 52711
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A01:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_8

    .line 52712
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A0B:Z

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-nez v0, :cond_2

    .line 52713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Li;->getToolbarActionMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A08:Ljava/lang/Integer;

    .line 52714
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NE;-><init>(Lcom/facebook/ads/redexgen/X/Sc;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    .line 52715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Li;->getToolbarListener()Lcom/facebook/ads/redexgen/X/Lh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A06:Lcom/facebook/ads/redexgen/X/Lh;

    .line 52716
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sd;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sd;-><init>(Lcom/facebook/ads/redexgen/X/Sc;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lh;)V

    .line 52717
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Sc;->A0B:Z

    .line 52718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A08:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A08:Ljava/lang/Integer;

    .line 52719
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 52720
    .end local v5
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    .line 52721
    :cond_2
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A02:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_7

    .line 52722
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A09:Z

    if-nez v0, :cond_4

    .line 52723
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Sc;->A09:Z

    .line 52724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A08:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A08:Ljava/lang/Integer;

    .line 52725
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 52726
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    .line 52727
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sc;->A04:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sc;->A00(III)Ljava/lang/String;

    move-result-object v3

    float-to-double v0, p1

    .line 52728
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 52729
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 52730
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LT;->A0F:Lcom/facebook/ads/redexgen/X/LT;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setProgressImage(Lcom/facebook/ads/redexgen/X/LT;)V

    .line 52731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    goto :goto_1

    .line 52732
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMode(I)V

    goto :goto_0

    .line 52733
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A03:Lcom/facebook/ads/redexgen/X/Li;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Li;->setToolbarActionMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52734
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    .line 52735
    :cond_9
    :goto_3
    monitor-exit p0

    return-void

    .line 52736
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Sc;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
