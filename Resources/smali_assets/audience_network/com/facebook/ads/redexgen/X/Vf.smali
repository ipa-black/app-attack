.class public final Lcom/facebook/ads/redexgen/X/Vf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ci;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/BY;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/BX;

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Ci;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/Hc;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ho;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59616
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pV6afMZIVEGTOqSkK4PJAxqV3cRTXe0d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IAHwWl6p9dkO64XBfZ0QYdoG1FARrH3l"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8O8qDLmpQAmlCV9yXa4a4pqjSYQFT4zH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zdF1gQZIlZar6BQddk1LhfG9pE3e2nBq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3CFwU8lFm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "v9T9Lg78nTaSAiVLG9Jw7rJGA2UCfL0z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6lAaLpwrnWkg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Pzi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vg;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vg;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A09:Lcom/facebook/ads/redexgen/X/BY;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59617
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ho;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ho;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vf;-><init>(Lcom/facebook/ads/redexgen/X/Ho;)V

    .line 59618
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ho;)V
    .locals 2

    .line 59619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59620
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Ho;

    .line 59621
    const/16 v1, 0x1000

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hc;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    .line 59622
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Landroid/util/SparseArray;

    .line 59623
    return-void
.end method


# virtual methods
.method public final A8V(Lcom/facebook/ads/redexgen/X/BX;)V
    .locals 3

    .line 59624
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:Lcom/facebook/ads/redexgen/X/BX;

    .line 59625
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/WU;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/WU;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BX;->AEd(Lcom/facebook/ads/redexgen/X/Be;)V

    .line 59626
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/redexgen/X/BW;Lcom/facebook/ads/redexgen/X/Bc;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v1, v4, v0, v5}, Lcom/facebook/ads/redexgen/X/BW;->ADQ([BIIZ)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 59628
    return v2

    .line 59629
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A08()I

    move-result v1

    .line 59631
    .local v0, "nextStartCode":I
    const/16 v0, 0x1b9

    if-ne v1, v0, :cond_1

    .line 59632
    return v2

    .line 59633
    :cond_1
    const/16 v0, 0x1ba

    if-ne v1, v0, :cond_2

    .line 59634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 59635
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 59637
    .local v1, "packStuffingLength":I
    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 59638
    return v4

    .line 59639
    .end local v1    # "packStuffingLength":I
    :cond_2
    const/16 v0, 0x1bb

    const/4 v3, 0x2

    if-ne v1, v0, :cond_3

    .line 59640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 59641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    .line 59643
    .local v1, "systemHeaderLength":I
    add-int/lit8 v3, v0, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const-string v1, "HKquBkRqV5bg6e7zOk5qC1bF2o25gd0c"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "faW9VDigV6ilhrF8PW3drZ4wwMfODA0N"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 59644
    return v4

    .line 59645
    .end local v1    # "systemHeaderLength":I
    :cond_3
    and-int/lit16 v0, v1, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v5, :cond_4

    .line 59646
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 59647
    return v4

    .line 59648
    :cond_4
    and-int/lit16 v7, v1, 0xff

    .line 59649
    .local v3, "streamId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ci;

    .line 59650
    .local v5, "payloadReader":Lcom/facebook/ads/redexgen/X/Ci;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:Z

    if-nez v0, :cond_7

    .line 59651
    if-nez v2, :cond_6

    .line 59652
    const/4 v6, 0x0

    .line 59653
    .local v6, "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/Cb;
    const/16 v0, 0xbd

    if-ne v7, v0, :cond_a

    .line 59654
    new-instance v6, Lcom/facebook/ads/redexgen/X/Vu;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/Vu;-><init>()V

    .line 59655
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Z

    .line 59656
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:J

    .line 59657
    :cond_5
    :goto_0
    if-eqz v6, :cond_6

    .line 59658
    const/16 v0, 0x100

    new-instance v1, Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Cp;-><init>(II)V

    .line 59659
    .local v7, "idGenerator":Lcom/facebook/ads/redexgen/X/Cp;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:Lcom/facebook/ads/redexgen/X/BX;

    invoke-interface {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/Cb;->A4Y(Lcom/facebook/ads/redexgen/X/BX;Lcom/facebook/ads/redexgen/X/Cp;)V

    .line 59660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Ho;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ci;

    invoke-direct {v2, v6, v0}, Lcom/facebook/ads/redexgen/X/Ci;-><init>(Lcom/facebook/ads/redexgen/X/Cb;Lcom/facebook/ads/redexgen/X/Ho;)V

    .line 59661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59662
    .end local v6    # "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/Cb;
    .end local v7    # "idGenerator":Lcom/facebook/ads/redexgen/X/Cp;
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Z

    if-eqz v0, :cond_9

    .line 59663
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:J

    const-wide/16 v6, 0x2000

    add-long/2addr v0, v6

    .line 59664
    .local v6, "maxSearchPosition":J
    :goto_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v7

    cmp-long v6, v7, v0

    if-lez v6, :cond_7

    .line 59665
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:Z

    .line 59666
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:Lcom/facebook/ads/redexgen/X/BX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_c

    sget-object v5, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const-string v1, "xdmI1xGjCkbROfx6HlMFi8Q1HtnAUXbK"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    invoke-interface {v6}, Lcom/facebook/ads/redexgen/X/BX;->A5G()V

    .line 59667
    .end local v6    # "maxSearchPosition":J
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 59668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59669
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0I()I

    move-result v0

    .line 59670
    .local v1, "payloadLength":I
    add-int/lit8 v1, v0, 0x6

    .line 59671
    .local v4, "pesLength":I
    if-nez v2, :cond_8

    .line 59672
    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/BW;->AFJ(I)V

    .line 59673
    :goto_2
    return v4

    .line 59674
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hc;->A0W(I)V

    .line 59675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hc;->A00:[B

    invoke-interface {p1, v0, v4, v1}, Lcom/facebook/ads/redexgen/X/BW;->readFully([BII)V

    .line 59676
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0Y(I)V

    .line 59677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ci;->A03(Lcom/facebook/ads/redexgen/X/Hc;)V

    .line 59678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Hc;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hc;->A05()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hc;->A0X(I)V

    goto :goto_2

    .line 59679
    :cond_9
    const-wide/32 v0, 0x100000

    goto :goto_1

    .line 59680
    :cond_a
    and-int/lit16 v1, v7, 0xe0

    const/16 v0, 0xc0

    if-ne v1, v0, :cond_b

    .line 59681
    new-instance v6, Lcom/facebook/ads/redexgen/X/Vi;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/Vi;-><init>()V

    .line 59682
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Z

    .line 59683
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:J

    goto/16 :goto_0

    .line 59684
    :cond_b
    and-int/lit16 v1, v7, 0xf0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_5

    .line 59685
    new-instance v6, Lcom/facebook/ads/redexgen/X/Vn;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/Vn;-><init>()V

    .line 59686
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Z

    .line 59687
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/BW;->A7P()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:J

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEc(JJ)V
    .locals 2

    .line 59688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Ho;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ho;->A08()V

    .line 59689
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 59690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ci;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ci;->A02()V

    .line 59691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59692
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final AFL(Lcom/facebook/ads/redexgen/X/BW;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59693
    const/16 v0, 0xe

    new-array v4, v0, [B

    .line 59694
    .local v1, "scratch":[B
    const/4 v3, 0x0

    invoke-interface {p1, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 59695
    aget-byte v0, v4, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    aget-byte v0, v4, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/4 v9, 0x2

    aget-byte v0, v4, v9

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0x8

    shl-int/2addr v0, v5

    or-int/2addr v1, v0

    const/4 v6, 0x3

    aget-byte v0, v4, v6

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    const/16 v0, 0x1ba

    if-eq v0, v1, :cond_0

    .line 59696
    return v3

    .line 59697
    :cond_0
    const/4 v8, 0x4

    aget-byte v0, v4, v8

    and-int/lit16 v1, v0, 0xc4

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    .line 59698
    return v3

    .line 59699
    :cond_1
    const/4 v0, 0x6

    aget-byte v0, v4, v0

    and-int/2addr v0, v8

    if-eq v0, v8, :cond_2

    .line 59700
    return v3

    .line 59701
    :cond_2
    aget-byte v7, v4, v5

    and-int/2addr v7, v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_4

    sget-object v5, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const-string v1, "Yb1F33WkxQfWiaSVh137"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    if-eq v7, v8, :cond_3

    .line 59702
    return v3

    .line 59703
    :cond_3
    const/16 v7, 0x9

    sget-object v5, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v5, v0

    const/4 v0, 0x0

    aget-object v5, v5, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v5, Lcom/facebook/ads/redexgen/X/Vf;->A08:[Ljava/lang/String;

    const-string v1, "0jRSG84WTzZndWahG37MGXBabYk0DmjV"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "QaZZpRdUVGXpS1N3yC2DPVE3W204sMee"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    aget-byte v0, v4, v7

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_6

    .line 59704
    return v3

    .line 59705
    :cond_6
    const/16 v0, 0xc

    aget-byte v0, v4, v0

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_7

    .line 59706
    return v3

    .line 59707
    :cond_7
    const/16 v0, 0xd

    aget-byte v0, v4, v0

    and-int/lit8 v0, v0, 0x7

    .line 59708
    .local v0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/BW;->A3L(I)V

    .line 59709
    invoke-interface {p1, v4, v3, v6}, Lcom/facebook/ads/redexgen/X/BW;->ADP([BII)V

    .line 59710
    aget-byte v0, v4, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    aget-byte v0, v4, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    aget-byte v0, v4, v9

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    if-ne v2, v0, :cond_8

    const/4 v3, 0x1

    :cond_8
    return v3
.end method
