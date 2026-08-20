.class public final Lcom/facebook/ads/redexgen/X/Df;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/facebook/ads/redexgen/X/VB;
.implements Lcom/facebook/ads/redexgen/X/GL;
.implements Lcom/facebook/ads/redexgen/X/ES;
.implements Lcom/facebook/ads/redexgen/X/9C;
.implements Lcom/facebook/ads/redexgen/X/9j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9N;,
        Lcom/facebook/ads/redexgen/X/9L;,
        Lcom/facebook/ads/redexgen/X/9M;,
        Lcom/facebook/ads/redexgen/X/9O;
    }
.end annotation


# static fields
.field public static A0V:[B

.field public static A0W:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/9O;

.field public A05:Lcom/facebook/ads/redexgen/X/9Z;

.field public A06:Lcom/facebook/ads/redexgen/X/9q;

.field public A07:Lcom/facebook/ads/redexgen/X/ET;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/Wu;

.field public final A0D:J

.field public final A0E:Landroid/os/Handler;

.field public final A0F:Landroid/os/HandlerThread;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Wx;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Wv;

.field public final A0I:Lcom/facebook/ads/redexgen/X/9N;

.field public final A0J:Lcom/facebook/ads/redexgen/X/9U;

.field public final A0K:Lcom/facebook/ads/redexgen/X/9X;

.field public final A0L:Lcom/facebook/ads/redexgen/X/9s;

.field public final A0M:Lcom/facebook/ads/redexgen/X/9t;

.field public final A0N:Lcom/facebook/ads/redexgen/X/GM;

.field public final A0O:Lcom/facebook/ads/redexgen/X/GN;

.field public final A0P:Lcom/facebook/ads/redexgen/X/HG;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/HQ;

.field public final A0R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/9M;",
            ">;"
        }
    .end annotation
.end field

.field public final A0S:Z

.field public final A0T:[Lcom/facebook/ads/redexgen/X/Wu;

.field public final A0U:[Lcom/facebook/ads/redexgen/X/9n;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 27718
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TSIQGmaqgvrUxo0yYDewkVNDuuioOpPV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LhstooR1wZsH8RVMZSyyF7FJZ5wrHutR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WZmkRBn8iXpnqDBIN644YOqcruHieEQJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OBm1ApV8rqkCiyt7FxArHXpNA0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RSLtmQKc5IgtmDXEpea3qKBmF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "cT5hSyxhu4oYAFMn61C1ja3cHbuAf9wl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QQz6Qig88n9IGtqyO"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pBG4ezF2k8D44jdvacVEPM0q7VNUtk0G"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Df;->A0K()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/GN;Lcom/facebook/ads/redexgen/X/9U;ZIZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/HG;)V
    .locals 10

    .line 27719
    move-object v2, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27720
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    .line 27721
    iput-object p2, v2, Lcom/facebook/ads/redexgen/X/Df;->A0N:Lcom/facebook/ads/redexgen/X/GM;

    .line 27722
    move-object v9, p3

    iput-object v9, v2, Lcom/facebook/ads/redexgen/X/Df;->A0O:Lcom/facebook/ads/redexgen/X/GN;

    .line 27723
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/Df;->A0J:Lcom/facebook/ads/redexgen/X/9U;

    .line 27724
    move v0, p5

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    .line 27725
    move/from16 v0, p6

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    .line 27726
    move/from16 v0, p7

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0B:Z

    .line 27727
    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0E:Landroid/os/Handler;

    .line 27728
    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0H:Lcom/facebook/ads/redexgen/X/Wv;

    .line 27729
    move-object/from16 v3, p10

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Df;->A0P:Lcom/facebook/ads/redexgen/X/HG;

    .line 27730
    new-instance v0, Lcom/facebook/ads/redexgen/X/9X;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9X;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    .line 27731
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/9U;->A5o()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0D:J

    .line 27732
    invoke-interface {p4}, Lcom/facebook/ads/redexgen/X/9U;->AEU()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0S:Z

    .line 27733
    sget-object v0, Lcom/facebook/ads/redexgen/X/9q;->A03:Lcom/facebook/ads/redexgen/X/9q;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/9q;

    .line 27734
    new-instance v4, Lcom/facebook/ads/redexgen/X/9Z;

    sget-object v5, Lcom/facebook/ads/redexgen/X/9u;->A01:Lcom/facebook/ads/redexgen/X/9u;

    sget-object v8, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v4

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;JLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 27735
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9N;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9N;-><init>(Lcom/facebook/ads/redexgen/X/9K;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    .line 27736
    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/9n;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0U:[Lcom/facebook/ads/redexgen/X/9n;

    .line 27737
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_0

    .line 27738
    aget-object v0, p1, v4

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/Wu;->AEw(I)V

    .line 27739
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Df;->A0U:[Lcom/facebook/ads/redexgen/X/9n;

    aget-object v0, p1, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A61()Lcom/facebook/ads/redexgen/X/9n;

    move-result-object v0

    aput-object v0, v1, v4

    .line 27740
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27741
    .end local v4    # "i":I
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wx;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Wx;-><init>(Lcom/facebook/ads/redexgen/X/9C;Lcom/facebook/ads/redexgen/X/HG;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    .line 27742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    .line 27743
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Wu;

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    .line 27744
    new-instance v0, Lcom/facebook/ads/redexgen/X/9t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9t;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0M:Lcom/facebook/ads/redexgen/X/9t;

    .line 27745
    new-instance v0, Lcom/facebook/ads/redexgen/X/9s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9s;-><init>()V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    .line 27746
    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/GM;->A00(Lcom/facebook/ads/redexgen/X/GL;)V

    .line 27747
    const/16 v5, -0x10

    const/16 v4, 0x15

    const/16 v1, 0x1d

    const/4 v0, 0x0

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0F:Landroid/os/HandlerThread;

    .line 27748
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27749
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/facebook/ads/redexgen/X/HG;->A4M(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/HQ;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    .line 27750
    return-void
.end method

.method private A00()I
    .locals 3

    .line 27751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    .line 27752
    .local v0, "timeline":Lcom/facebook/ads/redexgen/X/9u;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27753
    const/4 v0, 0x0

    .line 27754
    :goto_0
    return v0

    .line 27755
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0B:Z

    .line 27756
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9u;->A05(Z)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0M:Lcom/facebook/ads/redexgen/X/9t;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A0B(ILcom/facebook/ads/redexgen/X/9t;)Lcom/facebook/ads/redexgen/X/9t;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9t;->A00:I

    goto :goto_0
.end method

.method private A01(ILcom/facebook/ads/redexgen/X/9u;Lcom/facebook/ads/redexgen/X/9u;)I
    .locals 10

    .line 27757
    move v5, p1

    const/4 v1, -0x1

    .line 27758
    .local v0, "newPeriodIndex":I
    move-object v4, p2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/9u;->A00()I

    move-result v3

    .line 27759
    .local v1, "maxIterations":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 27760
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Df;->A0M:Lcom/facebook/ads/redexgen/X/9t;

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/Df;->A0B:Z

    .line 27761
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/9u;->A03(ILcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/redexgen/X/9t;IZ)I

    move-result v5

    .line 27762
    if-ne v5, v0, :cond_1

    .line 27763
    .end local v2    # "i":I
    :cond_0
    return v1

    .line 27764
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    .line 27765
    const/4 v0, 0x1

    invoke-virtual {v4, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/9u;->A04(Ljava/lang/Object;)I

    move-result v1

    .line 27766
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/ER;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 27767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    .line 27768
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0H()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    .line 27769
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Df;->A03(Lcom/facebook/ads/redexgen/X/ER;JZ)J

    move-result-wide v0

    return-wide v0

    .line 27770
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/ER;JZ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 27771
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0H()V

    .line 27772
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Df;->A09:Z

    .line 27773
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Df;->A0N(I)V

    .line 27774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v4

    .line 27775
    .local v2, "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    move-object v3, v4

    .line 27776
    .local v3, "newPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    :goto_0
    if-eqz v3, :cond_0

    .line 27777
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/facebook/ads/redexgen/X/Df;->A0t(Lcom/facebook/ads/redexgen/X/ER;JLcom/facebook/ads/redexgen/X/9V;)Z

    move-result v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "3g90ZjAQy8gphAPE4L2ghHg16cmQ019E"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v7, :cond_2

    .line 27778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9X;->A0S(Lcom/facebook/ads/redexgen/X/9V;)Z

    .line 27779
    :cond_0
    if-ne v4, v3, :cond_1

    if-eqz p4, :cond_4

    .line 27780
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v2, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v0, v4, v1

    .line 27781
    .local v7, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0b(Lcom/facebook/ads/redexgen/X/Wu;)V

    .line 27782
    .end local v7    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27783
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0C()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v3

    goto :goto_0

    .line 27784
    :cond_3
    new-array v0, v6, [Lcom/facebook/ads/redexgen/X/Wu;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    .line 27785
    const/4 v4, 0x0

    .line 27786
    :cond_4
    if-eqz v3, :cond_9

    .line 27787
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Df;->A0V(Lcom/facebook/ads/redexgen/X/9V;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 27788
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "JYav744H3005gGdd3wHQ67gij"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "FVGbgJ3f5rxs8oy2Mt1O3WpPvx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A05:Z

    if-eqz v0, :cond_8

    .line 27789
    :goto_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/VA;->AEg(J)J

    move-result-wide p2

    .line 27790
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0D:J

    sub-long v2, p2, v0

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Df;->A0S:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_7

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27791
    :cond_6
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A05:Z

    if-eqz v0, :cond_8

    goto :goto_2

    .line 27792
    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "LvYFslBjN8wEk55S4mS5Jlrj4VNptxmz"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    invoke-interface {v7, v2, v3, v6}, Lcom/facebook/ads/redexgen/X/VA;->A4s(JZ)V

    .line 27793
    :cond_8
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Df;->A0P(J)V

    .line 27794
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A09()V

    goto :goto_3

    .line 27795
    :cond_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9X;->A0O(Z)V

    .line 27796
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/Df;->A0P(J)V

    .line 27797
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/HQ;->AEi(I)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_5

    .line 27798
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "qbdkiXSPlbFYutVyIKxCWSr3uDHCS3n2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-wide p2
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/9O;Z)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9O;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    .line 27800
    .local v0, "timeline":Lcom/facebook/ads/redexgen/X/9u;
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/9O;->A02:Lcom/facebook/ads/redexgen/X/9u;

    .line 27801
    .local v1, "seekTimeline":Lcom/facebook/ads/redexgen/X/9u;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 27802
    return-object v5

    .line 27803
    :cond_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27804
    move-object v6, v4

    .line 27805
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Df;->A0M:Lcom/facebook/ads/redexgen/X/9t;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    iget v9, p1, Lcom/facebook/ads/redexgen/X/9O;->A00:I

    iget-wide v10, p1, Lcom/facebook/ads/redexgen/X/9O;->A01:J

    .line 27806
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9u;->A07(Lcom/facebook/ads/redexgen/X/9t;Lcom/facebook/ads/redexgen/X/9s;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 27807
    .local v2, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-ne v4, v6, :cond_2

    .line 27808
    return-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27809
    :cond_2
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 27810
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    const/4 v0, 0x1

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/9u;->A04(Ljava/lang/Object;)I

    move-result v0

    .line 27811
    .local v4, "periodIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 27812
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 27813
    :cond_3
    if-eqz p2, :cond_5

    .line 27814
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/Df;->A01(ILcom/facebook/ads/redexgen/X/9u;Lcom/facebook/ads/redexgen/X/9u;)I

    move-result v1

    .line 27815
    if-eq v1, v2, :cond_5

    .line 27816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    .line 27817
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 27818
    invoke-direct {p0, v4, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A05(Lcom/facebook/ads/redexgen/X/9u;IJ)Landroid/util/Pair;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "LZRu6qU1d7MAJxELkyp6D6bqJ9pCtQWv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "5OOlDtGsHYXmvjCA2lYHypc4I8JTMes9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27819
    :cond_5
    return-object v5

    .line 27820
    .end local v2    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v4    # "periodIndex":I
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_0
    iget v3, p1, Lcom/facebook/ads/redexgen/X/9O;->A00:I

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/9O;->A01:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/9T;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/9T;-><init>(Lcom/facebook/ads/redexgen/X/9u;IJ)V

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/9u;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9u;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27821
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0M:Lcom/facebook/ads/redexgen/X/9t;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9u;->A07(Lcom/facebook/ads/redexgen/X/9t;Lcom/facebook/ads/redexgen/X/9s;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0V:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A07()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 27822
    move-object v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A0P:Lcom/facebook/ads/redexgen/X/HG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HG;->AFm()J

    move-result-wide v2

    .line 27823
    .local v1, "operationStartTimeMs":J
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0I()V

    .line 27824
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0P()Z

    move-result v5

    const-wide/16 v0, 0xa

    if-nez v5, :cond_0

    .line 27825
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0B()V

    .line 27826
    invoke-direct {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0R(JJ)V

    .line 27827
    return-void

    .line 27828
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v12

    .line 27829
    .local v3, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    const/16 v5, 0x96

    const/16 v1, 0xa

    const/16 v0, 0x14

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hp;->A02(Ljava/lang/String;)V

    .line 27830
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0J()V

    .line 27831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v0, 0x3e8

    mul-long/2addr v5, v0

    .line 27832
    .local v6, "rendererPositionElapsedRealtimeUs":J
    iget-object v9, v12, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/Df;->A0D:J

    sub-long/2addr v0, v7

    iget-boolean v7, v4, Lcom/facebook/ads/redexgen/X/Df;->A0S:Z

    invoke-interface {v9, v0, v1, v7}, Lcom/facebook/ads/redexgen/X/VA;->A4s(JZ)V

    .line 27833
    const/4 v13, 0x1

    .line 27834
    .local v10, "renderersEnded":Z
    const/4 v11, 0x1

    .line 27835
    .local v11, "renderersReadyOrEnded":Z
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v9, v10

    const/4 v8, 0x0

    .end local v10    # "renderersEnded":Z
    .local p0, "renderersEnded":Z
    :goto_0
    if-ge v8, v9, :cond_6

    aget-object v7, v10, v8

    .line 27836
    .local v14, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    invoke-interface {v7, v0, v1, v5, v6}, Lcom/facebook/ads/redexgen/X/Wu;->AEH(JJ)V

    .line 27837
    const/4 v1, 0x1

    if-eqz v13, :cond_5

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/Wu;->A8h()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v13, 0x1

    .line 27838
    :goto_1
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/Wu;->A8r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/Wu;->A8h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {v4, v7}, Lcom/facebook/ads/redexgen/X/Df;->A0s(Lcom/facebook/ads/redexgen/X/Wu;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 27839
    .local v9, "rendererReadyOrEnded":Z
    :goto_2
    if-nez v0, :cond_2

    .line 27840
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/Wu;->A9m()V

    .line 27841
    :cond_2
    if-eqz v11, :cond_3

    if-eqz v0, :cond_3

    :goto_3
    move v11, v1

    .line 27842
    .end local v9    # "rendererReadyOrEnded":Z
    .end local v14    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 27843
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 27844
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 27845
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 27846
    :cond_6
    if-nez v11, :cond_7

    .line 27847
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0B()V

    .line 27848
    :cond_7
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/9W;->A01:J

    .line 27849
    .local v8, "playingPeriodDurationUs":J
    const/4 v7, 0x4

    const/4 v10, 0x3

    const/4 v6, 0x2

    if-eqz v13, :cond_a

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v13

    if-eqz v0, :cond_8

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    cmp-long v5, v8, v0

    if-gtz v5, :cond_a

    :cond_8
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A05:Z

    if-eqz v0, :cond_a

    .line 27850
    invoke-direct {v4, v7}, Lcom/facebook/ads/redexgen/X/Df;->A0N(I)V

    .line 27851
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0H()V

    .line 27852
    :cond_9
    :goto_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-ne v0, v6, :cond_e

    .line 27853
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v5, v8

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v5, :cond_e

    aget-object v0, v8, v1

    .line 27854
    .local p1, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A9m()V

    .line 27855
    .end local p1
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 27856
    :cond_a
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-ne v0, v6, :cond_b

    .line 27857
    invoke-direct {v4, v11}, Lcom/facebook/ads/redexgen/X/Df;->A0u(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27858
    invoke-direct {v4, v10}, Lcom/facebook/ads/redexgen/X/Df;->A0N(I)V

    .line 27859
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    if-eqz v0, :cond_9

    .line 27860
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0G()V

    goto :goto_4

    .line 27861
    :cond_b
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-ne v0, v10, :cond_9

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v8, v0

    sget-object v5, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14

    sget-object v5, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "Eggx5Ft4Lgnx6HVrotcHBkscR"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    const-string v1, "Urp4oA4mdP1paz0o5Y10JqXrCe"

    const/4 v0, 0x3

    aput-object v1, v5, v0

    if-nez v8, :cond_c

    .line 27862
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0q()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_c
    if-nez v11, :cond_9

    .line 27863
    :cond_d
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A09:Z

    .line 27864
    invoke-direct {v4, v6}, Lcom/facebook/ads/redexgen/X/Df;->A0N(I)V

    .line 27865
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0H()V

    goto :goto_4

    .line 27866
    :cond_e
    iget-boolean v8, v4, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    sget-object v5, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "rTELFOhgZqImPwKgVJI0nXuoysvpkaxO"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    if-eqz v8, :cond_10

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-eq v0, v10, :cond_11

    :cond_10
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-ne v0, v6, :cond_12

    .line 27867
    :cond_11
    const-wide/16 v0, 0xa

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0R(JJ)V

    .line 27868
    :goto_6
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hp;->A00()V

    .line 27869
    return-void

    .line 27870
    :cond_12
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v0

    if-eqz v0, :cond_13

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-eq v0, v7, :cond_13

    .line 27871
    const-wide/16 v0, 0x3e8

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0R(JJ)V

    goto :goto_6

    .line 27872
    :cond_13
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/HQ;->AEE(I)V

    goto :goto_6

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08()V
    .locals 2

    .line 27873
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0N(I)V

    .line 27874
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0o(ZZZ)V

    .line 27875
    return-void
.end method

.method private A09()V
    .locals 6

    .line 27876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0F()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v5

    .line 27877
    .local v0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9V;->A06()J

    move-result-wide v1

    .line 27878
    .local v1, "nextLoadPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 27879
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0k(Z)V

    .line 27880
    return-void

    .line 27881
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    .line 27882
    invoke-virtual {v5, v3, v4}, Lcom/facebook/ads/redexgen/X/9V;->A08(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 27883
    .local v3, "bufferedDurationUs":J
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A0J:Lcom/facebook/ads/redexgen/X/9U;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    .line 27884
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wx;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A01:F

    .line 27885
    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9U;->AFC(JF)Z

    move-result v0

    .line 27886
    .local v5, "continueLoading":Z
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0k(Z)V

    .line 27887
    if-eqz v0, :cond_1

    .line 27888
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    invoke-virtual {v5, v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A0F(J)V

    .line 27889
    :cond_1
    return-void
.end method

.method private A0A()V
    .locals 5

    .line 27890
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A06(Lcom/facebook/ads/redexgen/X/9Z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27891
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    .line 27892
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9N;->A00(Lcom/facebook/ads/redexgen/X/9N;)I

    move-result v2

    .line 27893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9N;->A02(Lcom/facebook/ads/redexgen/X/9N;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9N;->A01(Lcom/facebook/ads/redexgen/X/9N;)I

    move-result v1

    .line 27895
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 27896
    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 27897
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 27898
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A05(Lcom/facebook/ads/redexgen/X/9Z;)V

    .line 27899
    :cond_0
    return-void

    .line 27900
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private A0B()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0F()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v5

    .line 27902
    .local v0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0H()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v1

    .line 27903
    .local v1, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    if-eqz v5, :cond_4

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A06:Z

    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    if-ne v0, v5, :cond_4

    .line 27904
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "M2PhxJTgTMxoek0nGdRGZ8ED7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "JhH24KrsERDOvzAX41swXn1Uhz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v4, v1

    .line 27905
    .local v5, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wu;->A8H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27906
    return-void

    .line 27907
    .end local v5    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27908
    :cond_3
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VA;->A9k()V

    .line 27909
    :cond_4
    return-void
.end method

.method private A0C()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27910
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9X;->A0M(J)V

    .line 27911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27912
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9X;->A0I(JLcom/facebook/ads/redexgen/X/9Z;)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v10

    .line 27913
    .local v0, "info":Lcom/facebook/ads/redexgen/X/9W;
    if-nez v10, :cond_1

    .line 27914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/ET;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ET;->A9l()V

    .line 27915
    .end local v0    # "info":Lcom/facebook/ads/redexgen/X/9W;
    .end local v1
    .end local v2
    :cond_0
    :goto_0
    return-void

    .line 27916
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    .line 27917
    .local v1, "uid":Ljava/lang/Object;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Df;->A0U:[Lcom/facebook/ads/redexgen/X/9n;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Df;->A0N:Lcom/facebook/ads/redexgen/X/GM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0J:Lcom/facebook/ads/redexgen/X/9U;

    .line 27918
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->A5j()Lcom/facebook/ads/redexgen/X/GP;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/ET;

    .line 27919
    invoke-virtual/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/9X;->A0K([Lcom/facebook/ads/redexgen/X/9n;Lcom/facebook/ads/redexgen/X/GM;Lcom/facebook/ads/redexgen/X/GP;Lcom/facebook/ads/redexgen/X/ET;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/9W;)Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v2

    .line 27920
    .local v2, "mediaPeriod":Lcom/facebook/ads/redexgen/X/VA;
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/9W;->A03:J

    invoke-interface {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/VA;->ADY(Lcom/facebook/ads/redexgen/X/VB;J)V

    .line 27921
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Df;->A0k(Z)V

    goto :goto_0
.end method

.method private A0D()V
    .locals 2

    .line 27922
    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0o(ZZZ)V

    .line 27923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0J:Lcom/facebook/ads/redexgen/X/9U;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->ACJ()V

    .line 27924
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0N(I)V

    .line 27925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 27926
    monitor-enter p0

    .line 27927
    :try_start_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    .line 27928
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 27929
    monitor-exit p0

    .line 27930
    return-void

    .line 27931
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private A0E()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 27932
    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27933
    return-void

    .line 27934
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wx;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    iget v7, v0, Lcom/facebook/ads/redexgen/X/9a;->A01:F

    .line 27935
    .local v1, "playbackSpeed":F
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v6

    .line 27936
    .local v2, "periodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0H()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 27937
    .local v3, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "D9etX6yGBrwjRzOUEpEFU5ER5XUfrbIh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "v3YP09X53VrDeZJkDNiGeietvmwAimn0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v4, 0x1

    .line 27938
    .local v4, "selectionsChangedForReadPeriod":Z
    :goto_1
    if-eqz v6, :cond_2

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/9V;->A06:Z

    if-nez v0, :cond_3

    .line 27939
    .end local v4    # "selectionsChangedForReadPeriod":Z
    .restart local p4
    :cond_2
    return-void

    .line 27940
    :cond_3
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/9V;->A0I(F)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27941
    const/4 v7, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "qdzsaLeT6GVLLZLLIHWPE1kBVsafqqMr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_d

    .line 27942
    :goto_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v4

    .line 27943
    .local v7, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/9X;->A0S(Lcom/facebook/ads/redexgen/X/9V;)Z

    move-result v2

    .line 27944
    .local v8, "recreateStreams":Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v0

    new-array v5, v0, [Z

    .line 27945
    .local v9, "streamResetFlags":[Z
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    .line 27946
    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/9V;->A0B(JZ[Z)J

    move-result-wide v10

    .line 27947
    .local v10, "periodPositionUs":J
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9V;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0i(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 27948
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-eq v0, v7, :cond_4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    cmp-long v2, v10, v0

    if-eqz v2, :cond_4

    .line 27949
    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    .line 27950
    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 27951
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/9N;->A04(I)V

    .line 27952
    invoke-direct {v3, v10, v11}, Lcom/facebook/ads/redexgen/X/Df;->A0P(J)V

    .line 27953
    :cond_4
    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_9

    .line 27954
    .local v12, "enabledRendererCount":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "v6rigB8My08mC5ZvZtTcxONYTtnHkhiY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jJJ7EyTzSHhVUQBMBNjuu6IlWzfsi9o6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v0

    new-array v9, v0, [Z

    .line 27955
    .local v13, "rendererWasEnabledFlags":[Z
    const/4 v11, 0x0

    .local p0, "i":I
    :goto_3
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v1

    if-ge v11, v0, :cond_e

    .line 27956
    aget-object v10, v1, v11

    .line 27957
    .local v6, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/Wu;->A7i()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    aput-boolean v0, v9, v11

    .line 27958
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A0A:[Lcom/facebook/ads/redexgen/X/Eo;

    aget-object v1, v0, v11

    .line 27959
    .local p1, "sampleStream":Lcom/facebook/ads/redexgen/X/Eo;
    if-eqz v1, :cond_5

    .line 27960
    add-int/lit8 v6, v6, 0x1

    .line 27961
    :cond_5
    aget-boolean v0, v9, v11

    if-eqz v0, :cond_6

    .line 27962
    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/Wu;->A7n()Lcom/facebook/ads/redexgen/X/Eo;

    move-result-object v0

    if-eq v1, v0, :cond_7

    .line 27963
    invoke-direct {v3, v10}, Lcom/facebook/ads/redexgen/X/Df;->A0b(Lcom/facebook/ads/redexgen/X/Wu;)V

    .line 27964
    .end local v4
    .end local v6    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    .end local p1
    .restart local p4
    :cond_6
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 27965
    :cond_7
    aget-boolean v0, v5, v11

    if-eqz v0, :cond_6

    .line 27966
    .end local v4
    .local p4, "selectionsChangedForReadPeriod":Z
    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    sget-object v7, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v7, v7, v0

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v0, 0x77

    if-eq v7, v0, :cond_11

    sget-object v8, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v7, "kUW5tsmcM8CZIAjkj84TOGdyZAx2gWc6"

    const/4 v0, 0x7

    aput-object v7, v8, v0

    invoke-interface {v10, v1, v2}, Lcom/facebook/ads/redexgen/X/Wu;->AET(J)V

    goto :goto_5

    .line 27967
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 27968
    .local v12, "enabledRendererCount":I
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "5RhHFxqKf8KludlSzI9zDK8m295dvAFV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v0

    new-array v9, v0, [Z

    .line 27969
    .local v13, "rendererWasEnabledFlags":[Z
    const/4 v11, 0x0

    goto :goto_3

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "7WrBcNkU6uNk4nx5t1RXmqyIgKSjjx3l"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_d

    goto/16 :goto_2

    .line 27970
    .end local p4
    .local v4, "selectionsChangedForReadPeriod":Z
    .end local v4    # "selectionsChangedForReadPeriod":Z
    .restart local p4
    :cond_b
    if-ne v6, v5, :cond_c

    .line 27971
    const/4 v4, 0x0

    .line 27972
    .end local p4
    .restart local v4    # "selectionsChangedForReadPeriod":Z
    .end local p4
    .restart local v4    # "selectionsChangedForReadPeriod":Z
    :cond_c
    iget-object v6, v6, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    goto/16 :goto_1

    .line 27973
    .end local p4
    .restart local v4    # "selectionsChangedForReadPeriod":Z
    .end local v4    # "selectionsChangedForReadPeriod":Z
    .restart local p4
    :cond_d
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/9X;->A0S(Lcom/facebook/ads/redexgen/X/9V;)Z

    .line 27974
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/9V;->A06:Z

    if-eqz v0, :cond_f

    .line 27975
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/9W;->A03:J

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    .line 27976
    invoke-virtual {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A08(J)J

    move-result-wide v0

    .line 27977
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 27978
    .local v4, "loadingPeriodPositionUs":J
    const/4 v0, 0x0

    invoke-virtual {v6, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0A(JZ)J

    .line 27979
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/9V;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0i(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    goto :goto_6

    .line 27980
    .end local p4
    .restart local v4    # "loadingPeriodPositionUs":J
    .end local v4    # "loadingPeriodPositionUs":J
    .end local p0    # "i":I
    .restart local p4
    :cond_e
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9V;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    .line 27981
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 27982
    invoke-direct {v3, v9, v6}, Lcom/facebook/ads/redexgen/X/Df;->A0p([ZI)V

    .line 27983
    .end local v7    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .end local v8    # "recreateStreams":Z
    .end local v9    # "streamResetFlags":[Z
    .end local v10    # "periodPositionUs":J
    .end local v12    # "enabledRendererCount":I
    .end local v13    # "rendererWasEnabledFlags":[Z
    .end local v4
    :cond_f
    :goto_6
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    const/4 v4, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_10

    goto/16 :goto_0

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "GCKjwcvTJfMpQgG8NpKVbaI1H"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "kOcbaoLdOMGBVdRezVYeBIh2yM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v5, v4, :cond_13

    .line 27984
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A09()V

    .line 27985
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0J()V

    .line 27986
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_12

    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_12
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "0v8QL5oJXgBRdj6LoWxDDzyaCLbuPlQC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/HQ;->AEi(I)Z

    .line 27987
    :cond_13
    return-void
.end method

.method private A0F()V
    .locals 3

    .line 27988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 27989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9M;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0r(Lcom/facebook/ads/redexgen/X/9M;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9M;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9M;->A03:Lcom/facebook/ads/redexgen/X/9l;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A0A(Z)V

    .line 27991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27992
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 27993
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 27994
    return-void
.end method

.method private A0G()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 27995
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A09:Z

    .line 27996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wx;->A05()V

    .line 27997
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v1, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v0, v2, v3

    .line 27998
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wu;->start()V

    .line 27999
    .end local v3    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28000
    :cond_0
    return-void
.end method

.method private A0H()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wx;->A06()V

    .line 28002
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 28003
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0c(Lcom/facebook/ads/redexgen/X/Wu;)V

    .line 28004
    .end local v3    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28005
    :cond_0
    return-void
.end method

.method private A0I()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 28006
    move-object v1, p0

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/ET;

    if-nez v2, :cond_0

    .line 28007
    return-void

    .line 28008
    :cond_0
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    if-lez v0, :cond_1

    .line 28009
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/ET;->A9l()V

    .line 28010
    return-void

    .line 28011
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0C()V

    .line 28012
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0F()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v0

    .line 28013
    .local v1, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28014
    :cond_2
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Df;->A0k(Z)V

    .line 28015
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0P()Z

    move-result v0

    if-nez v0, :cond_5

    .line 28016
    return-void

    .line 28017
    :cond_4
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    if-nez v0, :cond_3

    .line 28018
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A09()V

    goto :goto_0

    .line 28019
    :cond_5
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v5

    .line 28020
    .local v3, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0H()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v4

    .line 28021
    .local v4, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    const/4 v8, 0x0

    .line 28022
    .local v5, "advancedPlayingPeriod":Z
    :goto_1
    iget-boolean v6, v1, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x11

    if-eq v2, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v2, "7VXwhx8w334qXwwhe6EPuoxrs"

    const/4 v0, 0x4

    aput-object v2, v3, v0

    const-string v2, "i8G0S3EG91lb4Tbi5TJ2bFfoM2"

    const/4 v0, 0x3

    aput-object v2, v3, v0

    if-eqz v6, :cond_a

    if-eq v5, v4, :cond_a

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/9V;->A00:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_a

    .line 28023
    if-eqz v8, :cond_7

    .line 28024
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0A()V

    .line 28025
    :cond_7
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-boolean v6, v0, Lcom/facebook/ads/redexgen/X/9W;->A06:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v2, "JHuaS3X828K0z1yeMtavkm7JkVnfol1Z"

    const/4 v0, 0x7

    aput-object v2, v3, v0

    if-eqz v6, :cond_9

    .line 28026
    :goto_2
    const/4 v2, 0x0

    .line 28027
    .local v6, "discontinuityReason":I
    :goto_3
    move-object v3, v5

    .line 28028
    .local v7, "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0C()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v5

    .line 28029
    invoke-direct {v1, v3}, Lcom/facebook/ads/redexgen/X/Df;->A0V(Lcom/facebook/ads/redexgen/X/9V;)V

    .line 28030
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/9W;->A03:J

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/9W;->A00:J

    .line 28031
    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28032
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9N;->A04(I)V

    .line 28033
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0J()V

    .line 28034
    const/4 v8, 0x1

    .line 28035
    .end local v6    # "discontinuityReason":I
    .end local v7    # "oldPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    goto :goto_1

    :cond_8
    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v2, "wtrsjVL1JaCAi24uhunV07R35PJNTCvI"

    const/4 v0, 0x5

    aput-object v2, v3, v0

    if-eqz v6, :cond_9

    goto :goto_2

    .line 28036
    :cond_9
    const/4 v2, 0x3

    goto :goto_3

    .line 28037
    :cond_a
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A05:Z

    if-eqz v0, :cond_d

    .line 28038
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v2

    if-ge v5, v0, :cond_c

    .line 28039
    aget-object v3, v2, v5

    .line 28040
    .local v6, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A0A:[Lcom/facebook/ads/redexgen/X/Eo;

    aget-object v2, v0, v5

    .line 28041
    .local v7, "sampleStream":Lcom/facebook/ads/redexgen/X/Eo;
    if-eqz v2, :cond_b

    .line 28042
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Wu;->A7n()Lcom/facebook/ads/redexgen/X/Eo;

    move-result-object v0

    if-ne v0, v2, :cond_b

    .line 28043
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Wu;->A8H()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28044
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Wu;->AEt()V

    .line 28045
    .end local v6    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    .end local v7    # "sampleStream":Lcom/facebook/ads/redexgen/X/Eo;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 28046
    .end local v2    # "i":I
    :cond_c
    return-void

    .line 28047
    :cond_d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A06:Z

    if-nez v0, :cond_f

    .line 28048
    .end local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .end local v3    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .restart local p4
    .restart local p5
    :cond_e
    return-void

    .line 28049
    :cond_f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v2

    if-ge v6, v0, :cond_13

    .line 28050
    aget-object v8, v2, v6

    .line 28051
    .local v7, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A0A:[Lcom/facebook/ads/redexgen/X/Eo;

    aget-object v7, v0, v6

    .line 28052
    .local v8, "sampleStream":Lcom/facebook/ads/redexgen/X/Eo;
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wu;->A7n()Lcom/facebook/ads/redexgen/X/Eo;

    move-result-object v5

    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_12

    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v2, "GzZd6F7lJVp08TeGQitpN19OrvCnG4PK"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    if-ne v5, v7, :cond_10

    :goto_6
    if-eqz v7, :cond_11

    .line 28053
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wu;->A8H()Z

    move-result v0

    if-nez v0, :cond_11

    .line 28054
    .restart local v7    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    .restart local v8    # "sampleStream":Lcom/facebook/ads/redexgen/X/Eo;
    :cond_10
    return-void

    .line 28055
    .end local v7    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    .end local v8    # "sampleStream":Lcom/facebook/ads/redexgen/X/Eo;
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_12
    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v2, "G5Kl7lcZBM87T4fNUwO1IYVdGnNcsgpo"

    const/4 v0, 0x5

    aput-object v2, v3, v0

    if-ne v5, v7, :cond_10

    goto :goto_6

    .line 28056
    .end local v6    # "i":I
    .end local v7
    .end local v8
    :cond_13
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    .line 28057
    .local v6, "oldTrackSelectorResult":Lcom/facebook/ads/redexgen/X/GN;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0D()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v6

    .line 28058
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    .line 28059
    .local v7, "newTrackSelectorResult":Lcom/facebook/ads/redexgen/X/GN;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/VA;

    .line 28060
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/VA;->ADt()J

    move-result-wide v8

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v2

    if-eqz v0, :cond_1a

    const/4 v10, 0x1

    .line 28061
    .local v8, "initialDiscontinuity":Z
    :goto_7
    const/4 v4, 0x0

    .local v9, "i":I
    :goto_8
    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v2, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_19

    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v2, "zgqvIFw9hHXttypZtkJx3efsgqUZ32NO"

    const/4 v0, 0x5

    aput-object v2, v3, v0

    array-length v0, v8

    if-ge v4, v0, :cond_1b

    .line 28062
    :goto_9
    aget-object v8, v8, v4

    .line 28063
    .local v10, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/GN;->A00(I)Z

    move-result v0

    .line 28064
    .local v11, "rendererWasEnabled":Z
    if-nez v0, :cond_15

    .line 28065
    .end local v1
    .end local v3
    .end local v10    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    .end local v11    # "rendererWasEnabled":Z
    .restart local p4
    .restart local p5
    :cond_14
    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-object v1, p0

    goto :goto_8

    .line 28066
    :cond_15
    if-eqz v10, :cond_16

    .line 28067
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wu;->AEt()V

    goto :goto_a

    .line 28068
    :cond_16
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wu;->A8e()Z

    move-result v0

    if-nez v0, :cond_14

    .line 28069
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/GN;->A01:Lcom/facebook/ads/redexgen/X/GK;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/GK;->A00(I)Lcom/facebook/ads/redexgen/X/GJ;

    move-result-object v9

    .line 28070
    .local p1, "newSelection":Lcom/facebook/ads/redexgen/X/GJ;
    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/GN;->A00(I)Z

    move-result v3

    .line 28071
    .local p2, "newRendererEnabled":Z
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A0U:[Lcom/facebook/ads/redexgen/X/9n;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9n;->A7u()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_17

    const/4 v2, 0x1

    .line 28072
    .local v2, "isNoSampleRenderer":Z
    :goto_b
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/GN;->A03:[Lcom/facebook/ads/redexgen/X/9o;

    aget-object v1, v0, v4

    .line 28073
    .local p3, "oldConfig":Lcom/facebook/ads/redexgen/X/9o;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/GN;->A03:[Lcom/facebook/ads/redexgen/X/9o;

    aget-object v0, v0, v4

    .line 28074
    .local p0, "newConfig":Lcom/facebook/ads/redexgen/X/9o;
    if-eqz v3, :cond_18

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez v2, :cond_18

    .line 28075
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Df;->A0v(Lcom/facebook/ads/redexgen/X/GJ;)[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    .line 28076
    .local v0, "formats":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .end local v1
    .local p4, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9V;->A0A:[Lcom/facebook/ads/redexgen/X/Eo;

    aget-object v2, v0, v4

    .line 28077
    .end local v2    # "isNoSampleRenderer":Z
    .end local v3
    .local p5, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .local p6, "isNoSampleRenderer":Z
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/9V;->A07()J

    move-result-wide v0

    .line 28078
    invoke-interface {v8, v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Wu;->AEJ([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Eo;J)V

    .line 28079
    .end local v0    # "formats":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    goto :goto_a

    .line 28080
    :cond_17
    const/4 v2, 0x0

    goto :goto_b

    .line 28081
    .end local p4
    .end local p5
    .end local p6
    .restart local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .restart local v2    # "isNoSampleRenderer":Z
    .restart local v3    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .end local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .end local v2    # "isNoSampleRenderer":Z
    .end local v3    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .restart local p4
    .restart local p5
    .restart local p6
    :cond_18
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/Wu;->AEt()V

    goto :goto_a

    :cond_19
    array-length v0, v8

    if-ge v4, v0, :cond_1b

    goto :goto_9

    .line 28082
    :cond_1a
    const/4 v10, 0x0

    goto :goto_7

    .line 28083
    .end local v9    # "i":I
    .end local p4
    .end local p5
    .restart local v1    # "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .restart local v3    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    :cond_1b
    return-void
.end method

.method private A0J()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28085
    return-void

    .line 28086
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v3

    .line 28087
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/VA;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "e9etinPRA8BQH2CZknXr4yAbSJ3blA39"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/VA;->ADt()J

    move-result-wide v6

    .line 28088
    .local v8, "periodPositionUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v1

    if-eqz v0, :cond_4

    .line 28089
    invoke-direct {p0, v6, v7}, Lcom/facebook/ads/redexgen/X/Df;->A0P(J)V

    .line 28090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    cmp-long v0, v6, v1

    if-eqz v0, :cond_2

    .line 28091
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    .line 28092
    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28093
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A04(I)V

    .line 28094
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 28096
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A01:J

    .line 28097
    :goto_1
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/9Z;->A09:J

    .line 28098
    return-void

    .line 28099
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0C(Z)J

    move-result-wide v0

    goto :goto_1

    .line 28100
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wx;->A04()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    .line 28101
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A08(J)J

    move-result-wide v4

    .line 28102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/Df;->A0Q(JJ)V

    .line 28103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iput-wide v4, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    goto :goto_0
.end method

.method public static A0K()V
    .locals 4

    const/16 v0, 0xa0

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "OuUcfGxYs8HKuxzYIQS3N8YCcqwYwO9D"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0V:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x44t
        0x79t
        0x6et
        0x51t
        0x6dt
        0x60t
        0x78t
        0x64t
        0x73t
        0x48t
        0x6ct
        0x71t
        0x6dt
        0x48t
        0x6ft
        0x75t
        0x64t
        0x73t
        0x6ft
        0x60t
        0x6dt
        0x6ft
        0x52t
        0x45t
        0x7at
        0x46t
        0x4bt
        0x53t
        0x4ft
        0x58t
        0x63t
        0x47t
        0x5at
        0x46t
        0x63t
        0x44t
        0x5et
        0x4ft
        0x58t
        0x44t
        0x4bt
        0x46t
        0x10t
        0x62t
        0x4bt
        0x44t
        0x4et
        0x46t
        0x4ft
        0x58t
        0x42t
        0x6ct
        0x65t
        0x64t
        0x79t
        0x62t
        0x65t
        0x6ct
        0x2bt
        0x66t
        0x6et
        0x78t
        0x78t
        0x6at
        0x6ct
        0x6et
        0x78t
        0x2bt
        0x78t
        0x6et
        0x65t
        0x7ft
        0x2bt
        0x6at
        0x6dt
        0x7ft
        0x6et
        0x79t
        0x2bt
        0x79t
        0x6et
        0x67t
        0x6et
        0x6at
        0x78t
        0x6et
        0x25t
        0x45t
        0x62t
        0x78t
        0x69t
        0x7et
        0x62t
        0x6dt
        0x60t
        0x2ct
        0x7et
        0x79t
        0x62t
        0x78t
        0x65t
        0x61t
        0x69t
        0x2ct
        0x69t
        0x7et
        0x7et
        0x63t
        0x7et
        0x22t
        0x18t
        0x24t
        0x29t
        0x31t
        0x2at
        0x29t
        0x2bt
        0x23t
        0x68t
        0x2dt
        0x3at
        0x3at
        0x27t
        0x3at
        0x66t
        0x4at
        0x76t
        0x6ct
        0x6bt
        0x7at
        0x7ct
        0x39t
        0x7ct
        0x6bt
        0x6bt
        0x76t
        0x6bt
        0x37t
        0x48t
        0x6ft
        0x74t
        0x6bt
        0x3bt
        0x7dt
        0x7at
        0x72t
        0x77t
        0x7et
        0x7ft
        0x35t
        0x5at
        0x51t
        0x6dt
        0x51t
        0x53t
        0x5bt
        0x69t
        0x51t
        0x4ct
        0x55t
    .end array-data
.end method

.method private A0L(F)V
    .locals 5

    .line 28104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0E()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v4

    .line 28105
    .local v0, "periodHolder":Lcom/facebook/ads/redexgen/X/9V;
    :goto_0
    if-eqz v4, :cond_3

    .line 28106
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "TmHCYSIZuHNmxK6kBnR58JopztOBcNrn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 28107
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GN;->A01:Lcom/facebook/ads/redexgen/X/GK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GK;->A01()[Lcom/facebook/ads/redexgen/X/GJ;

    move-result-object v3

    .line 28108
    .local v1, "trackSelections":[Lcom/facebook/ads/redexgen/X/GJ;
    array-length v2, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v0, v3, v1

    .line 28109
    .local v4, "trackSelection":Lcom/facebook/ads/redexgen/X/GJ;
    if-eqz v0, :cond_1

    .line 28110
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GJ;->AC2(F)V

    .line 28111
    .end local v4    # "trackSelection":Lcom/facebook/ads/redexgen/X/GJ;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28112
    .end local v1    # "trackSelections":[Lcom/facebook/ads/redexgen/X/GJ;
    :cond_2
    iget-object v4, v4, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    goto :goto_0

    .line 28113
    :cond_3
    return-void
.end method

.method private A0M(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28114
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:I

    .line 28115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9X;->A0R(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0j(Z)V

    .line 28117
    :cond_0
    return-void
.end method

.method private A0N(I)V
    .locals 4

    .line 28118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-eq v0, p1, :cond_1

    .line 28119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9Z;->A02(I)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "kM2qExU4ybhQ7HWfawBquzR2zjX0F4jA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28120
    :cond_1
    return-void
.end method

.method private A0O(IZI)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28121
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v3

    .line 28122
    .local v2, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    aget-object v5, v0, p1

    .line 28123
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    aput-object v5, v0, p3

    .line 28124
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/Wu;->A7i()I

    move-result v0

    if-nez v0, :cond_0

    .line 28125
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GN;->A03:[Lcom/facebook/ads/redexgen/X/9o;

    aget-object v6, v0, p1

    sget-object v4, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    .line 28126
    .local v13, "rendererConfiguration":Lcom/facebook/ads/redexgen/X/9o;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "NYdCxyfB4qBB5fQElsuicf6C6huVudSr"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/GN;->A01:Lcom/facebook/ads/redexgen/X/GK;

    .line 28127
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/GK;->A00(I)Lcom/facebook/ads/redexgen/X/GJ;

    move-result-object v0

    .line 28128
    .local p0, "newSelection":Lcom/facebook/ads/redexgen/X/GJ;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Df;->A0v(Lcom/facebook/ads/redexgen/X/GJ;)[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v7

    .line 28129
    .local p1, "formats":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    .line 28130
    .local p2, "playing":Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    const/4 v11, 0x1

    .line 28131
    .local v10, "joining":Z
    :goto_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A0A:[Lcom/facebook/ads/redexgen/X/Eo;

    aget-object v8, v0, p1

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    .line 28132
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9V;->A07()J

    move-result-wide v12

    .line 28133
    invoke-interface/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/Wu;->A5D(Lcom/facebook/ads/redexgen/X/9o;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Eo;JZJ)V

    .line 28134
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Wx;->A09(Lcom/facebook/ads/redexgen/X/Wu;)V

    .line 28135
    if-eqz v1, :cond_0

    .line 28136
    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/Wu;->start()V

    .line 28137
    .end local v10    # "joining":Z
    .end local v13    # "rendererConfiguration":Lcom/facebook/ads/redexgen/X/9o;
    .end local p0    # "newSelection":Lcom/facebook/ads/redexgen/X/GJ;
    .end local p1    # "formats":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .end local p2    # "playing":Z
    :cond_0
    return-void

    .line 28138
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 28139
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0P(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28141
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    .line 28142
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Wx;->A07(J)V

    .line 28143
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v5, v3

    .line 28144
    .local v3, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Wu;->AET(J)V

    .line 28145
    .end local v3    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 28146
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9V;->A09(J)J

    move-result-wide p1

    goto :goto_0

    .line 28147
    :cond_1
    return-void
.end method

.method private A0Q(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28149
    .end local v0
    .end local v1
    .end local v3
    :cond_0
    return-void

    .line 28150
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_2

    .line 28151
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 28152
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "iI9novLuZIFAEfCO4qiE3Y1J9OFTcxg5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    .line 28153
    .local v0, "currentPeriodIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    const/4 v6, 0x0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9M;

    .line 28154
    .local v1, "previousInfo":Lcom/facebook/ads/redexgen/X/9M;
    :goto_0
    if-eqz v0, :cond_7

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9M;->A00:I

    if-gt v1, v3, :cond_4

    iget v5, v0, Lcom/facebook/ads/redexgen/X/9M;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v2, v2, v1

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x38

    if-eq v2, v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v2, "hDlIvL5rLgyE5VG4VUIth4YrdDyvlxxs"

    const/4 v1, 0x2

    aput-object v2, v4, v1

    if-ne v5, v3, :cond_7

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9M;->A01:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_7

    .line 28155
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    .line 28156
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9M;

    goto :goto_0

    :cond_5
    move-object v0, v6

    goto :goto_0

    .line 28157
    :cond_6
    move-object v0, v6

    goto :goto_0

    .line 28158
    :cond_7
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 28159
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/9M;

    .line 28160
    .local v3, "nextInfo":Lcom/facebook/ads/redexgen/X/9M;
    :goto_1
    if-eqz v4, :cond_b

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9M;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget v0, v4, Lcom/facebook/ads/redexgen/X/9M;->A00:I

    if-lt v0, v3, :cond_8

    iget v0, v4, Lcom/facebook/ads/redexgen/X/9M;->A00:I

    if-ne v0, v3, :cond_b

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/9M;->A01:J

    cmp-long v2, v0, p1

    if-gtz v2, :cond_b

    .line 28161
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    .line 28162
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 28163
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/9M;

    goto :goto_1

    .line 28164
    :cond_9
    move-object v4, v6

    goto :goto_1

    .line 28165
    :cond_a
    move-object v4, v6

    goto :goto_1

    .line 28166
    :cond_b
    :goto_2
    if-eqz v4, :cond_10

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9M;->A02:Ljava/lang/Object;

    if-eqz v0, :cond_10

    iget v0, v4, Lcom/facebook/ads/redexgen/X/9M;->A00:I

    if-ne v0, v3, :cond_10

    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/9M;->A01:J

    cmp-long v0, v1, p1

    if-lez v0, :cond_10

    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/9M;->A01:J

    cmp-long v0, v1, p3

    if-gtz v0, :cond_10

    .line 28167
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9M;->A03:Lcom/facebook/ads/redexgen/X/9l;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0Z(Lcom/facebook/ads/redexgen/X/9l;)V

    .line 28168
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9M;->A03:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A0B()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9M;->A03:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A0D()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 28169
    :cond_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 28170
    :goto_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 28171
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_f

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "2inRqgHKNmW90mXz8"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/9M;

    goto :goto_2

    .line 28172
    :cond_d
    move-object v4, v6

    goto :goto_2

    .line 28173
    :cond_e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    goto :goto_3

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28174
    :cond_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0R(JJ)V
    .locals 2

    .line 28175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HQ;->AEE(I)V

    .line 28176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/HQ;->AEj(IJ)Z

    .line 28177
    return-void
.end method

.method private A0S(Lcom/facebook/ads/redexgen/X/9L;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28178
    move-object v0, p0

    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/9L;->A01:Lcom/facebook/ads/redexgen/X/ET;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/ET;

    if-eq v2, v1, :cond_0

    .line 28179
    return-void

    .line 28180
    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    .line 28181
    .local v2, "oldTimeline":Lcom/facebook/ads/redexgen/X/9u;
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/9L;->A00:Lcom/facebook/ads/redexgen/X/9u;

    .line 28182
    .local v3, "timeline":Lcom/facebook/ads/redexgen/X/9u;
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/9L;->A02:Ljava/lang/Object;

    .line 28183
    .local v4, "manifest":Ljava/lang/Object;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/9X;->A0N(Lcom/facebook/ads/redexgen/X/9u;)V

    .line 28184
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-virtual {v1, v3, v2}, Lcom/facebook/ads/redexgen/X/9Z;->A03(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28185
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0F()V

    .line 28186
    iget v6, v0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-lez v6, :cond_7

    .line 28187
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/9N;->A03(I)V

    .line 28188
    iput v5, v0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 28189
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/9O;

    if-eqz v4, :cond_4

    .line 28190
    invoke-direct {v0, v4, v7}, Lcom/facebook/ads/redexgen/X/Df;->A04(Lcom/facebook/ads/redexgen/X/9O;Z)Landroid/util/Pair;

    move-result-object v3

    .line 28191
    .local v5, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/9O;

    .line 28192
    if-nez v3, :cond_2

    .line 28193
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A08()V

    .line 28194
    :cond_1
    :goto_0
    return-void

    .line 28195
    :cond_2
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 28196
    .local v6, "periodIndex":I
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 28197
    .local v7, "positionUs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/9X;->A0L(IJ)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v3

    .line 28198
    .local v9, "periodId":Lcom/facebook/ads/redexgen/X/ER;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28199
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v4, 0x0

    .line 28200
    :goto_1
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    goto :goto_0

    .line 28201
    :cond_3
    move-wide v4, v6

    goto :goto_1

    .line 28202
    .end local v5    # "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v6    # "periodIndex":I
    .end local v7    # "positionUs":J
    .end local v9    # "periodId":Lcom/facebook/ads/redexgen/X/ER;
    :cond_4
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    cmp-long v4, v5, v1

    if-nez v4, :cond_1

    .line 28203
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 28204
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A08()V

    goto :goto_0

    .line 28205
    :cond_5
    iget-boolean v4, v0, Lcom/facebook/ads/redexgen/X/Df;->A0B:Z

    .line 28206
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/9u;->A05(Z)I

    move-result v4

    .line 28207
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Df;->A05(Lcom/facebook/ads/redexgen/X/9u;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 28208
    .local v5, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 28209
    .restart local v6    # "periodIndex":I
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 28210
    .local v7, "startPositionUs":J
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v1, v2, v6, v7}, Lcom/facebook/ads/redexgen/X/9X;->A0L(IJ)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v3

    .line 28211
    .restart local v9    # "periodId":Lcom/facebook/ads/redexgen/X/ER;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28212
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v4, 0x0

    .line 28213
    :goto_2
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    goto :goto_0

    .line 28214
    :cond_6
    move-wide v4, v6

    goto :goto_2

    .line 28215
    :cond_7
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v4, v4, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v10, v4, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    .line 28216
    .local v5, "playingPeriodIndex":I
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v11, v4, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    .line 28217
    .local p0, "contentPositionUs":J
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 28218
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/9u;->A0E()Z

    move-result v1

    if-nez v1, :cond_8

    .line 28219
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    .line 28220
    invoke-virtual {v1, v10, v11, v12}, Lcom/facebook/ads/redexgen/X/9X;->A0L(IJ)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v8

    .line 28221
    .local v6, "periodId":Lcom/facebook/ads/redexgen/X/ER;
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28222
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v1

    if-eqz v1, :cond_9

    const-wide/16 v9, 0x0

    .line 28223
    .end local p0    # "contentPositionUs":J
    .local v7, "contentPositionUs":J
    :goto_3
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28224
    .end local p0
    .restart local v7    # "contentPositionUs":J
    :cond_8
    return-void

    .line 28225
    :cond_9
    move-wide v9, v11

    goto :goto_3

    .line 28226
    .end local v7    # "contentPositionUs":J
    .restart local p0    # "contentPositionUs":J
    :cond_a
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/9X;->A0E()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v4

    .line 28227
    .local v12, "periodHolder":Lcom/facebook/ads/redexgen/X/9V;
    if-nez v4, :cond_b

    .line 28228
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v8, v10, v6, v7}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v6

    iget-object v6, v6, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    .line 28229
    .local v13, "playingPeriodUid":Ljava/lang/Object;
    :goto_4
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/9u;->A04(Ljava/lang/Object;)I

    move-result v6

    .line 28230
    .local v10, "periodIndex":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_13

    .line 28231
    invoke-direct {v0, v10, v8, v3}, Lcom/facebook/ads/redexgen/X/Df;->A01(ILcom/facebook/ads/redexgen/X/9u;Lcom/facebook/ads/redexgen/X/9u;)I

    move-result v10

    sget-object v6, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v6, v6, v5

    const/16 v5, 0xc

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v5, 0x4e

    if-eq v6, v5, :cond_12

    .line 28232
    .local v6, "newPeriodIndex":I
    sget-object v8, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v6, "W6zkXP9eIZkyJx4uPbHf9NTX6"

    const/4 v5, 0x4

    aput-object v6, v8, v5

    const-string v6, "m3yrwIeXeqUIkhQgLJp1WNCsrl"

    const/4 v5, 0x3

    aput-object v6, v8, v5

    if-ne v10, v9, :cond_c

    .line 28233
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A08()V

    .line 28234
    return-void

    .line 28235
    :cond_b
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/9V;->A09:Ljava/lang/Object;

    goto :goto_4

    .line 28236
    :cond_c
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    .line 28237
    invoke-virtual {v3, v10, v5}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v5

    iget v5, v5, Lcom/facebook/ads/redexgen/X/9s;->A00:I

    .line 28238
    invoke-direct {v0, v3, v5, v1, v2}, Lcom/facebook/ads/redexgen/X/Df;->A05(Lcom/facebook/ads/redexgen/X/9u;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 28239
    .local v8, "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 28240
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 28241
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v1, v6, v12, v13}, Lcom/facebook/ads/redexgen/X/9X;->A0L(IJ)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v9

    .line 28242
    .restart local v9    # "periodId":Lcom/facebook/ads/redexgen/X/ER;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v3, v6, v1, v7}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    .line 28243
    if-eqz v4, :cond_f

    .line 28244
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    .line 28245
    .local v7, "newPeriodUid":Ljava/lang/Object;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/9W;->A00(I)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v1

    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    .line 28246
    :goto_5
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v1, :cond_f

    .line 28247
    iget-object v4, v4, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    .line 28248
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/9V;->A09:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 28249
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v2, v2, v1

    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x4e

    if-eq v2, v1, :cond_e

    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v2, "ODoCru5Men7rnsumvsVlRJsOWyiHNrdt"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    invoke-virtual {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/9X;->A0J(Lcom/facebook/ads/redexgen/X/9W;I)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v1

    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    goto :goto_5

    .line 28250
    :cond_d
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/9W;->A00(I)Lcom/facebook/ads/redexgen/X/9W;

    move-result-object v1

    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28251
    .end local v7    # "newPeriodUid":Ljava/lang/Object;
    :cond_f
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x11

    if-eq v2, v1, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_10
    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v2, "hRbRvIJE18IQkSZp4h0fxN12mLMfZDhd"

    const/4 v1, 0x7

    aput-object v2, v3, v1

    if-eqz v4, :cond_11

    const-wide/16 v1, 0x0

    .end local v2    # "oldTimeline":Lcom/facebook/ads/redexgen/X/9u;
    .local v7, "oldTimeline":Lcom/facebook/ads/redexgen/X/9u;
    :goto_6
    invoke-direct {v0, v9, v1, v2}, Lcom/facebook/ads/redexgen/X/Df;->A02(Lcom/facebook/ads/redexgen/X/ER;J)J

    move-result-wide v10

    .line 28252
    .local v1, "seekPositionUs":J
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28253
    return-void

    .line 28254
    :cond_11
    move-wide v1, v12

    goto :goto_6

    .line 28255
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28256
    .end local v1    # "seekPositionUs":J
    .end local v6    # "newPeriodIndex":I
    .end local v7    # "oldTimeline":Lcom/facebook/ads/redexgen/X/9u;
    .end local v8    # "defaultPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v9    # "periodId":Lcom/facebook/ads/redexgen/X/ER;
    .restart local v2    # "oldTimeline":Lcom/facebook/ads/redexgen/X/9u;
    .end local v2    # "oldTimeline":Lcom/facebook/ads/redexgen/X/9u;
    .restart local v7    # "oldTimeline":Lcom/facebook/ads/redexgen/X/9u;
    :cond_13
    if-eq v6, v10, :cond_14

    .line 28257
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/9Z;->A01(I)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28258
    :cond_14
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 28259
    .local v1, "playingPeriodId":Lcom/facebook/ads/redexgen/X/ER;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 28260
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v1, v6, v11, v12}, Lcom/facebook/ads/redexgen/X/9X;->A0L(IJ)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v8

    .line 28261
    .local v2, "periodId":Lcom/facebook/ads/redexgen/X/ER;
    invoke-virtual {v8, v4}, Lcom/facebook/ads/redexgen/X/ER;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 28262
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x0

    :goto_7
    invoke-direct {v0, v8, v1, v2}, Lcom/facebook/ads/redexgen/X/Df;->A02(Lcom/facebook/ads/redexgen/X/ER;J)J

    move-result-wide v9

    .line 28263
    .local v8, "seekPositionUs":J
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .end local v13    # "playingPeriodUid":Ljava/lang/Object;
    .local v11, "playingPeriodUid":Ljava/lang/Object;
    .end local p0    # "contentPositionUs":J
    .local p5, "contentPositionUs":J
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28264
    return-void

    .line 28265
    :cond_15
    move-wide v1, v11

    goto :goto_7

    .line 28266
    .end local v13
    .end local p0
    .restart local v11    # "playingPeriodUid":Ljava/lang/Object;
    .restart local p5
    :cond_16
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    invoke-virtual {v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/9X;->A0U(Lcom/facebook/ads/redexgen/X/ER;J)Z

    move-result v1

    if-nez v1, :cond_17

    .line 28267
    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/Df;->A0j(Z)V

    .line 28268
    :cond_17
    return-void
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/9O;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28269
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/9N;->A03(I)V

    .line 28270
    move-object/from16 v9, p1

    invoke-direct {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/Df;->A04(Lcom/facebook/ads/redexgen/X/9O;Z)Landroid/util/Pair;

    move-result-object v4

    .line 28271
    .local v4, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 28272
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Df;->A00()I

    move-result v0

    new-instance v14, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct {v14, v0}, Lcom/facebook/ads/redexgen/X/ER;-><init>(I)V

    .line 28273
    .local v7, "periodId":Lcom/facebook/ads/redexgen/X/ER;
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 28274
    .local v8, "periodPositionUs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28275
    .local v10, "contentPositionUs":J
    const/4 v12, 0x1

    .line 28276
    .local v12, "seekPositionAdjusted":Z
    .local v7, "seekPositionAdjusted":Z
    :goto_0
    const/4 v6, 0x2

    goto :goto_1

    .line 28277
    .end local v7    # "seekPositionAdjusted":Z
    .end local v8    # "periodPositionUs":J
    .end local v10    # "contentPositionUs":J
    .end local v12    # "seekPositionAdjusted":Z
    :cond_0
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 28278
    .local v7, "periodIndex":I
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 28279
    .restart local v10    # "contentPositionUs":J
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/9X;->A0L(IJ)Lcom/facebook/ads/redexgen/X/ER;

    move-result-object v14

    .line 28280
    .local v8, "periodId":Lcom/facebook/ads/redexgen/X/ER;
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28281
    const-wide/16 v15, 0x0

    .line 28282
    .local v12, "periodPositionUs":J
    const/4 v12, 0x1

    .local v9, "seekPositionAdjusted":Z
    goto :goto_0

    .line 28283
    .end local v9    # "seekPositionAdjusted":Z
    .end local v12    # "periodPositionUs":J
    :cond_1
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 28284
    .restart local v12    # "periodPositionUs":J
    iget-wide v2, v9, Lcom/facebook/ads/redexgen/X/9O;->A01:J

    cmp-long v4, v2, v10

    if-nez v4, :cond_2

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 28285
    :goto_1
    :try_start_0
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/ET;

    if-eqz v2, :cond_a

    iget v2, v7, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    if-lez v2, :cond_3

    goto/16 :goto_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28286
    :cond_3
    cmp-long v9, v15, v10

    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v3, v3, v2

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x77

    if-eq v3, v2, :cond_9

    sget-object v4, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v3, "YfoxJXVxtggAgJ3C0qUN5WGXkfVCteCk"

    const/4 v2, 0x5

    aput-object v3, v4, v2

    if-nez v9, :cond_4

    .line 28287
    const/4 v2, 0x4

    :try_start_1
    invoke-direct {v7, v2}, Lcom/facebook/ads/redexgen/X/Df;->A0N(I)V

    .line 28288
    invoke-direct {v7, v5, v8, v5}, Lcom/facebook/ads/redexgen/X/Df;->A0o(ZZZ)V

    goto :goto_5

    .line 28289
    :cond_4
    move-wide v4, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28290
    .local v5, "newPeriodPositionUs":J
    :try_start_2
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    invoke-virtual {v14, v2}, Lcom/facebook/ads/redexgen/X/ER;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 28291
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v3

    .line 28292
    .local v15, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    if-eqz v3, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-eqz v2, :cond_5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28293
    :try_start_3
    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/9V;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/9q;

    .line 28294
    invoke-interface {v3, v4, v5, v2}, Lcom/facebook/ads/redexgen/X/VA;->A5g(JLcom/facebook/ads/redexgen/X/9q;)J

    move-result-wide v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 28295
    :cond_5
    :try_start_4
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/99;->A01(J)J

    move-result-wide v10

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p1, "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :try_start_5
    iget-wide v2, v2, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/99;->A01(J)J

    move-result-wide v8

    cmp-long v2, v10, v8

    if-nez v2, :cond_7

    .line 28296
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v15, v2, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 28297
    .end local v12    # "periodPositionUs":J
    .local v16, "periodPositionUs":J
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .end local v15    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28298
    if-eqz v12, :cond_6

    .line 28299
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/9N;->A04(I)V

    .line 28300
    :cond_6
    return-void

    .line 28301
    .end local v4
    .restart local p1    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_7
    :try_start_6
    invoke-direct {v7, v14, v4, v5}, Lcom/facebook/ads/redexgen/X/Df;->A02(Lcom/facebook/ads/redexgen/X/ER;J)J

    move-result-wide v8

    .line 28302
    .end local v5    # "newPeriodPositionUs":J
    .local v3, "newPeriodPositionUs":J
    cmp-long v2, v15, v8

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :goto_2
    const/4 v2, 0x1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    or-int/2addr v12, v2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x11

    if-eq v3, v2, :cond_b

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28303
    .end local v4
    .restart local p1    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_a
    :goto_4
    :try_start_7
    iput-object v9, v7, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/9O;

    goto :goto_5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 28304
    :cond_b
    sget-object v4, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v3, "LtwUHLpv08wEzos7LWvR75PA6MqqEvuh"

    const/4 v2, 0x7

    aput-object v3, v4, v2

    move-wide v15, v8

    .line 28305
    :goto_5
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28306
    if-eqz v12, :cond_c

    .line 28307
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "NnvGpWmx2ly54VvtA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/9N;->A04(I)V

    .line 28308
    :cond_c
    :goto_6
    return-void

    :cond_d
    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/9N;->A04(I)V

    goto :goto_6

    .line 28309
    :catchall_0
    move-exception v2

    goto :goto_7

    .end local p1    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_1
    move-exception v2

    goto :goto_7

    :catchall_2
    move-exception v2

    .end local v4    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .restart local p1    # "resolvedSeekPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :goto_7
    iget-object v13, v7, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    move-wide/from16 v17, v0

    invoke-virtual/range {v13 .. v18}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, v7, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28310
    if-eqz v12, :cond_e

    .line 28311
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/9N;->A04(I)V

    .line 28312
    :cond_e
    throw v2
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/Df;Lcom/facebook/ads/redexgen/X/9l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28313
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Df;->A0X(Lcom/facebook/ads/redexgen/X/9l;)V

    return-void
.end method

.method private A0V(Lcom/facebook/ads/redexgen/X/9V;)V
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/9V;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v5

    .line 28315
    .local v0, "newPlayingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    if-eqz v5, :cond_0

    if-ne p1, v5, :cond_1

    .line 28316
    .end local v1
    .end local v2
    :cond_0
    return-void

    .line 28317
    :cond_1
    const/4 v4, 0x0

    .line 28318
    .local v1, "enabledRendererCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v0

    new-array v3, v0, [Z

    .line 28319
    .local v2, "rendererWasEnabledFlags":[Z
    const/4 v6, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v1

    if-ge v6, v0, :cond_6

    .line 28320
    aget-object v2, v1, v6

    .line 28321
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Wu;->A7i()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v3, v6

    .line 28322
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/GN;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28323
    add-int/lit8 v4, v4, 0x1

    .line 28324
    :cond_2
    aget-boolean v0, v3, v6

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    .line 28325
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/GN;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28326
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Wu;->A8e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28327
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Wu;->A7n()Lcom/facebook/ads/redexgen/X/Eo;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9V;->A0A:[Lcom/facebook/ads/redexgen/X/Eo;

    aget-object v0, v0, v6

    if-ne v1, v0, :cond_4

    .line 28328
    :cond_3
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Df;->A0b(Lcom/facebook/ads/redexgen/X/Wu;)V

    .line 28329
    .end local v4    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 28330
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 28331
    .end local v3    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/9V;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    .line 28332
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28333
    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Df;->A0p([ZI)V

    .line 28334
    return-void
.end method

.method private A0W(Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 1

    .line 28335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Wx;->AF4(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/9a;

    .line 28336
    return-void
.end method

.method private A0X(Lcom/facebook/ads/redexgen/X/9l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28337
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9l;->A0D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28338
    return-void

    .line 28339
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9l;->A04()Lcom/facebook/ads/redexgen/X/9k;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9l;->A00()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9l;->A09()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9k;->A8C(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28340
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/9l;->A0A(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 28341
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "j7cBoz179DrNpy3qD7RptXNd9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "0iwSWX3dM4PAnuiRq1LulMUFPW"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28342
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/9l;->A0A(Z)V

    .line 28343
    throw v0
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/9l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28344
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9l;->A02()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 28345
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Df;->A0Z(Lcom/facebook/ads/redexgen/X/9l;)V

    .line 28346
    :goto_0
    return-void

    .line 28347
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/ET;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    if-lez v0, :cond_2

    .line 28348
    .end local v0
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9M;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/9M;-><init>(Lcom/facebook/ads/redexgen/X/9l;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28349
    :cond_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/9M;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/9M;-><init>(Lcom/facebook/ads/redexgen/X/9l;)V

    .line 28350
    .local v0, "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/9M;
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0r(Lcom/facebook/ads/redexgen/X/9M;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 28353
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A0A(Z)V

    goto :goto_0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/9l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28354
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9l;->A03()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A72()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 28355
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Df;->A0X(Lcom/facebook/ads/redexgen/X/9l;)V

    .line 28356
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "cBEQE15IFXZqMCE104UHZMDgeC8qTiqN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v2, v3, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq v2, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-ne v0, v1, :cond_3

    .line 28357
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HQ;->AEi(I)Z

    goto :goto_0

    .line 28358
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    const/16 v0, 0xf

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/HQ;->A9y(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28359
    :cond_3
    :goto_0
    return-void
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/9l;)V
    .locals 2

    .line 28360
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9l;->A03()Landroid/os/Handler;

    move-result-object v1

    .line 28361
    .local v0, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/facebook/ads/redexgen/X/9K;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/9K;-><init>(Lcom/facebook/ads/redexgen/X/Df;Lcom/facebook/ads/redexgen/X/9l;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28362
    return-void
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/Wu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Wx;->A08(Lcom/facebook/ads/redexgen/X/Wu;)V

    .line 28364
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Df;->A0c(Lcom/facebook/ads/redexgen/X/Wu;)V

    .line 28365
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wu;->A4q()V

    .line 28366
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/Wu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28367
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wu;->A7i()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 28368
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wu;->stop()V

    .line 28369
    :cond_0
    return-void
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/9q;)V
    .locals 0

    .line 28370
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A06:Lcom/facebook/ads/redexgen/X/9q;

    .line 28371
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 3

    .line 28372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9X;->A0T(Lcom/facebook/ads/redexgen/X/VA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28373
    return-void

    .line 28374
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9X;->A0M(J)V

    .line 28375
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A09()V

    .line 28376
    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9X;->A0T(Lcom/facebook/ads/redexgen/X/VA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28378
    return-void

    .line 28379
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0F()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v2

    .line 28380
    .local v0, "loadingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wx;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9a;->A01:F

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0E(F)V

    .line 28381
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/9V;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0i(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    .line 28382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0C()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v0

    .line 28384
    .local v1, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A03:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0P(J)V

    .line 28385
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0V(Lcom/facebook/ads/redexgen/X/9V;)V

    .line 28386
    .end local v1    # "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A09()V

    .line 28387
    return-void
.end method

.method private final A0g(Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 2

    .line 28388
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    const/16 v0, 0xa

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/HQ;->A9y(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28389
    return-void
.end method

.method private A0h(Lcom/facebook/ads/redexgen/X/ET;ZZ)V
    .locals 3

    .line 28390
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 28391
    invoke-direct {p0, v2, p2, p3}, Lcom/facebook/ads/redexgen/X/Df;->A0o(ZZZ)V

    .line 28392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0J:Lcom/facebook/ads/redexgen/X/9U;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->onPrepared()V

    .line 28393
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/ET;

    .line 28394
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0N(I)V

    .line 28395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0H:Lcom/facebook/ads/redexgen/X/Wv;

    invoke-interface {p1, v0, v2, p0}, Lcom/facebook/ads/redexgen/X/ET;->ADb(Lcom/facebook/ads/redexgen/X/Wv;ZLcom/facebook/ads/redexgen/X/ES;)V

    .line 28396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HQ;->AEi(I)Z

    .line 28397
    return-void
.end method

.method private A0i(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V
    .locals 3

    .line 28398
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0J:Lcom/facebook/ads/redexgen/X/9U;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/GN;->A01:Lcom/facebook/ads/redexgen/X/GK;

    invoke-interface {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/9U;->ACo([Lcom/facebook/ads/redexgen/X/Wu;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GK;)V

    .line 28399
    return-void
.end method

.method private A0j(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 28401
    .local v0, "periodId":Lcom/facebook/ads/redexgen/X/ER;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    .line 28402
    const/4 v0, 0x1

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Df;->A03(Lcom/facebook/ads/redexgen/X/ER;JZ)J

    move-result-wide v4

    .line 28403
    .local v7, "newPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_0

    .line 28404
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    .line 28405
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9Z;->A04(Lcom/facebook/ads/redexgen/X/ER;JJ)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28406
    if-eqz p1, :cond_0

    .line 28407
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A04(I)V

    .line 28408
    :cond_0
    return-void
.end method

.method private A0k(Z)V
    .locals 1

    .line 28409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    if-eq v0, p1, :cond_0

    .line 28410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9Z;->A06(Z)Lcom/facebook/ads/redexgen/X/9Z;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28411
    :cond_0
    return-void
.end method

.method private A0l(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A09:Z

    .line 28413
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A08:Z

    .line 28414
    if-nez p1, :cond_1

    .line 28415
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0H()V

    .line 28416
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0J()V

    .line 28417
    :cond_0
    :goto_0
    return-void

    .line 28418
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne v2, v0, :cond_2

    .line 28419
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0G()V

    .line 28420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HQ;->AEi(I)Z

    goto :goto_0

    .line 28421
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    if-ne v0, v1, :cond_0

    .line 28422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HQ;->AEi(I)Z

    goto :goto_0
.end method

.method private A0m(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28423
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0B:Z

    .line 28424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9X;->A0V(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28425
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0j(Z)V

    .line 28426
    :cond_0
    return-void
.end method

.method private A0n(ZZ)V
    .locals 3

    .line 28427
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, p1}, Lcom/facebook/ads/redexgen/X/Df;->A0o(ZZZ)V

    .line 28428
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0I:Lcom/facebook/ads/redexgen/X/9N;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 28429
    add-int/2addr v0, p2

    .line 28430
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9N;->A03(I)V

    .line 28431
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:I

    .line 28432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0J:Lcom/facebook/ads/redexgen/X/9U;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9U;->ACg()V

    .line 28433
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Df;->A0N(I)V

    .line 28434
    return-void
.end method

.method private A0o(ZZZ)V
    .locals 15

    .line 28435
    move-object v0, p0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Lcom/facebook/ads/redexgen/X/HQ;->AEE(I)V

    .line 28436
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/facebook/ads/redexgen/X/Df;->A09:Z

    .line 28437
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Wx;->A06()V

    .line 28438
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    .line 28439
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v8, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v9, v7

    .line 28440
    .local v6, "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    :try_start_0
    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Df;->A0b(Lcom/facebook/ads/redexgen/X/Wu;)V

    goto :goto_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9F; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28441
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 28442
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    const/16 v2, 0x15

    const/16 v1, 0x2b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x8a

    const/16 v2, 0xc

    const/16 v1, 0x31

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28443
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "renderer":Lcom/facebook/ads/redexgen/X/Wu;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 28444
    :cond_0
    new-array v1, v4, [Lcom/facebook/ads/redexgen/X/Wu;

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    .line 28445
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/9X;->A0O(Z)V

    .line 28446
    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Df;->A0k(Z)V

    .line 28447
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 28448
    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A04:Lcom/facebook/ads/redexgen/X/9O;

    .line 28449
    :cond_1
    if-eqz p3, :cond_3

    .line 28450
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9u;->A01:Lcom/facebook/ads/redexgen/X/9u;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9X;->A0N(Lcom/facebook/ads/redexgen/X/9u;)V

    .line 28451
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/9M;

    .line 28452
    .local v4, "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/9M;
    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/9M;->A03:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/9l;->A0A(Z)V

    .line 28453
    .end local v4    # "pendingMessageInfo":Lcom/facebook/ads/redexgen/X/9M;
    goto :goto_3

    .line 28454
    :cond_2
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A0R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 28455
    iput v4, v0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    .line 28456
    :cond_3
    new-instance v3, Lcom/facebook/ads/redexgen/X/9Z;

    .line 28457
    if-eqz p3, :cond_b

    sget-object v4, Lcom/facebook/ads/redexgen/X/9u;->A01:Lcom/facebook/ads/redexgen/X/9u;

    .line 28458
    :goto_4
    if-eqz p3, :cond_a

    move-object v5, v1

    .line 28459
    :goto_5
    if-eqz p2, :cond_9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A00()I

    move-result v2

    new-instance v6, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct {v6, v2}, Lcom/facebook/ads/redexgen/X/ER;-><init>(I)V

    .line 28460
    :goto_6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_8

    move-wide v7, v9

    .line 28461
    :goto_7
    if-eqz p2, :cond_7

    :goto_8
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget v11, v2, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    const/4 v12, 0x0

    .line 28462
    if-eqz p3, :cond_6

    sget-object v13, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A04:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    .line 28463
    :goto_9
    if-eqz p3, :cond_5

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/Df;->A0O:Lcom/facebook/ads/redexgen/X/GN;

    :goto_a
    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/9Z;-><init>(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/ER;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GN;)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    .line 28464
    if-eqz p1, :cond_4

    .line 28465
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/ET;

    if-eqz v2, :cond_4

    .line 28466
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/ET;->AEB(Lcom/facebook/ads/redexgen/X/ES;)V

    .line 28467
    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Df;->A07:Lcom/facebook/ads/redexgen/X/ET;

    .line 28468
    :cond_4
    return-void

    .line 28469
    :cond_5
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/GN;

    goto :goto_a

    .line 28470
    :cond_6
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    goto :goto_9

    .line 28471
    :cond_7
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/9Z;->A01:J

    goto :goto_8

    .line 28472
    :cond_8
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v7, v2, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    goto :goto_7

    .line 28473
    :cond_9
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/9Z;->A04:Lcom/facebook/ads/redexgen/X/ER;

    goto :goto_6

    .line 28474
    :cond_a
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/9Z;->A07:Ljava/lang/Object;

    goto :goto_5

    .line 28475
    :cond_b
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    goto :goto_4
.end method

.method private A0p([ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9F;
        }
    .end annotation

    .line 28476
    new-array v0, p2, [Lcom/facebook/ads/redexgen/X/Wu;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    .line 28477
    const/4 v4, 0x0

    .line 28478
    .local v0, "enabledRendererCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v3

    .line 28479
    .local v1, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0T:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 28480
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9V;->A04:Lcom/facebook/ads/redexgen/X/GN;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/GN;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28481
    aget-boolean v1, p1, v2

    add-int/lit8 v0, v4, 0x1

    .end local v0    # "enabledRendererCount":I
    .local v4, "enabledRendererCount":I
    invoke-direct {p0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/Df;->A0O(IZI)V

    move v4, v0

    .line 28482
    .end local v4    # "enabledRendererCount":I
    .restart local v0    # "enabledRendererCount":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28483
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private A0q()Z
    .locals 7

    .line 28484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0G()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v4

    .line 28485
    .local v0, "playingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/9W;->A01:J

    .line 28486
    .local v1, "playingPeriodDurationUs":J
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:J

    cmp-long v0, v1, v5

    if-ltz v0, :cond_1

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "YaIhV2LltIG4HuclCS5WOO9hjwkCXeMt"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "X0pypN8zwLPsNLuJVHuHfetSc0yM8k9B"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A06:Z

    if-nez v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    .line 28487
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ER;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 28488
    :goto_0
    return v0

    .line 28489
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0r(Lcom/facebook/ads/redexgen/X/9M;)Z
    .locals 9

    .line 28490
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9M;->A02:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 28491
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9M;->A03:Lcom/facebook/ads/redexgen/X/9l;

    .line 28492
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A08()Lcom/facebook/ads/redexgen/X/9u;

    move-result-object v5

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9M;->A03:Lcom/facebook/ads/redexgen/X/9l;

    .line 28493
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A01()I

    move-result v3

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9M;->A03:Lcom/facebook/ads/redexgen/X/9l;

    .line 28494
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9l;->A02()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/99;->A00(J)J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9O;

    invoke-direct {v0, v5, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/9O;-><init>(Lcom/facebook/ads/redexgen/X/9u;IJ)V

    .line 28495
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Df;->A04(Lcom/facebook/ads/redexgen/X/9O;Z)Landroid/util/Pair;

    move-result-object v3

    .line 28496
    .local v0, "periodPosition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez v3, :cond_2

    .line 28497
    return v4

    .line 28498
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9M;->A02:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A04(Ljava/lang/Object;)I

    move-result v1

    .line 28499
    .local v0, "index":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 28500
    return v4

    .line 28501
    :cond_1
    iput v1, p1, Lcom/facebook/ads/redexgen/X/9M;->A00:I

    goto :goto_0

    .line 28502
    :cond_2
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 28503
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 28504
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    sget-object v4, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v3, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_3

    .line 28505
    sget-object v4, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v3, "Qe4SjxIsSBa3x6HAW"

    const/4 v0, 0x6

    aput-object v3, v4, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v7, v3, v0, v6}, Lcom/facebook/ads/redexgen/X/9u;->A0A(ILcom/facebook/ads/redexgen/X/9s;Z)Lcom/facebook/ads/redexgen/X/9s;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9s;->A03:Ljava/lang/Object;

    .line 28506
    invoke-virtual {p1, v5, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9M;->A01(IJLjava/lang/Object;)V

    .line 28507
    .end local v0    # "index":I
    .end local v0
    :goto_0
    return v6

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0s(Lcom/facebook/ads/redexgen/X/Wu;)Z
    .locals 2

    .line 28508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0H()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v1

    .line 28509
    .local v0, "readingPeriodHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9V;->A01:Lcom/facebook/ads/redexgen/X/9V;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9V;->A06:Z

    if-eqz v0, :cond_0

    .line 28510
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Wu;->A8H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 28511
    :goto_0
    return v0

    .line 28512
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0t(Lcom/facebook/ads/redexgen/X/ER;JLcom/facebook/ads/redexgen/X/9V;)Z
    .locals 5

    .line 28513
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/ER;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/9V;->A06:Z

    if-eqz v0, :cond_1

    .line 28514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9Z;->A03:Lcom/facebook/ads/redexgen/X/9u;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A04:Lcom/facebook/ads/redexgen/X/ER;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/ER;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->A09(ILcom/facebook/ads/redexgen/X/9s;)Lcom/facebook/ads/redexgen/X/9s;

    .line 28515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/9s;->A04(J)I

    move-result v1

    .line 28516
    .local v0, "nextAdGroupIndex":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0L:Lcom/facebook/ads/redexgen/X/9s;

    .line 28517
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9s;->A09(I)J

    move-result-wide v3

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9W;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 28518
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 28519
    .end local v0    # "nextAdGroupIndex":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private A0u(Z)Z
    .locals 8

    .line 28520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0C:[Lcom/facebook/ads/redexgen/X/Wu;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 28521
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0q()Z

    move-result v0

    return v0

    .line 28522
    :cond_0
    const/4 v7, 0x0

    if-nez p1, :cond_1

    .line 28523
    return v7

    .line 28524
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A05:Lcom/facebook/ads/redexgen/X/9Z;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 28525
    return v1

    .line 28526
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0K:Lcom/facebook/ads/redexgen/X/9X;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9X;->A0F()Lcom/facebook/ads/redexgen/X/9V;

    move-result-object v6

    .line 28527
    .local v1, "loadingHolder":Lcom/facebook/ads/redexgen/X/9V;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9V;->A02:Lcom/facebook/ads/redexgen/X/9W;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9W;->A05:Z

    xor-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0C(Z)J

    move-result-wide v2

    .line 28528
    .local v3, "bufferedPositionUs":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Df;->A0J:Lcom/facebook/ads/redexgen/X/9U;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    .line 28529
    invoke-virtual {v6, v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A08(J)J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0G:Lcom/facebook/ads/redexgen/X/Wx;

    .line 28530
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wx;->A7O()Lcom/facebook/ads/redexgen/X/9a;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9a;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A09:Z

    .line 28531
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/9U;->AFF(JFZ)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v7, 0x1

    .line 28532
    :cond_4
    return v7
.end method

.method public static A0v(Lcom/facebook/ads/redexgen/X/GJ;)[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28533
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/GJ;->length()I

    move-result v4

    .line 28534
    .local v0, "length":I
    :goto_0
    new-array v3, v4, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 28535
    .local v1, "formats":[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A0W:[Ljava/lang/String;

    const-string v1, "X04sVE4WijYjotgv6w3bASzS6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "U1jCIvxI6fY8JZE6Ili1DHAvIg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 28536
    invoke-interface {p0, v1}, Lcom/facebook/ads/redexgen/X/GJ;->A6o(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    aput-object v0, v3, v1

    .line 28537
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28538
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 28539
    .end local v2    # "i":I
    :cond_1
    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0w()Landroid/os/Looper;
    .locals 1

    .line 28540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A0x()V
    .locals 2

    monitor-enter p0

    .line 28541
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28542
    monitor-exit p0

    return-void

    .line 28543
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    const/4 v0, 0x7

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->AEi(I)Z

    .line 28544
    const/4 v1, 0x0

    .line 28545
    .local v0, "wasInterrupted":Z
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    if-nez v0, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28546
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28547
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Df;
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_0
    const/4 v1, 0x1

    .line 28548
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 28549
    :cond_1
    if-eqz v1, :cond_2

    .line 28550
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28551
    :cond_2
    monitor-exit p0

    return-void

    .line 28552
    .end local v0    # "wasInterrupted":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0y(Lcom/facebook/ads/redexgen/X/9u;IJ)V
    .locals 3

    .line 28553
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/9O;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/9O;-><init>(Lcom/facebook/ads/redexgen/X/9u;IJ)V

    .line 28554
    const/4 v0, 0x3

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/HQ;->A9y(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28555
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28556
    return-void
.end method

.method public final A0z(Lcom/facebook/ads/redexgen/X/ET;ZZ)V
    .locals 2

    .line 28557
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    .line 28558
    const/4 v0, 0x0

    invoke-interface {v1, v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/HQ;->A9x(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28559
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28560
    return-void
.end method

.method public final A10(Z)V
    .locals 3

    .line 28561
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/HQ;->A9w(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28562
    return-void
.end method

.method public final A11(Z)V
    .locals 3

    .line 28563
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-interface {v2, v0, p1, v1}, Lcom/facebook/ads/redexgen/X/HQ;->A9w(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28564
    return-void
.end method

.method public final bridge synthetic AAc(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 28565
    check-cast p1, Lcom/facebook/ads/redexgen/X/VA;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Df;->A0g(Lcom/facebook/ads/redexgen/X/VA;)V

    return-void
.end method

.method public final AC1(Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 2

    .line 28566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28567
    iget v0, p1, Lcom/facebook/ads/redexgen/X/9a;->A01:F

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0L(F)V

    .line 28568
    return-void
.end method

.method public final AC9(Lcom/facebook/ads/redexgen/X/VA;)V
    .locals 2

    .line 28569
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    const/16 v0, 0x9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/HQ;->A9y(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28570
    return-void
.end method

.method public final ACb(Lcom/facebook/ads/redexgen/X/ET;Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;)V
    .locals 3

    .line 28571
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/9L;

    invoke-direct {v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9L;-><init>(Lcom/facebook/ads/redexgen/X/ET;Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;)V

    .line 28572
    const/16 v0, 0x8

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/HQ;->A9y(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28573
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28574
    return-void
.end method

.method public final declared-synchronized AEk(Lcom/facebook/ads/redexgen/X/9l;)V
    .locals 4

    monitor-enter p0

    .line 28575
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0A:Z

    if-eqz v0, :cond_0

    .line 28576
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0x25

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28577
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/9l;->A0A(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28578
    monitor-exit p0

    return-void

    .line 28579
    .end local v2
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0Q:Lcom/facebook/ads/redexgen/X/HQ;

    const/16 v0, 0xe

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/HQ;->A9y(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28580
    monitor-exit p0

    return-void

    .line 28581
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 28582
    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 28583
    return v6

    .line 28584
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/ads/redexgen/X/ET;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0h(Lcom/facebook/ads/redexgen/X/ET;ZZ)V

    goto :goto_5

    .line 28585
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0l(Z)V

    goto :goto_5

    .line 28586
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A07()V

    goto :goto_5

    .line 28587
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9O;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0T(Lcom/facebook/ads/redexgen/X/9O;)V

    goto :goto_5

    .line 28588
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9a;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0W(Lcom/facebook/ads/redexgen/X/9a;)V

    goto :goto_5

    .line 28589
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0d(Lcom/facebook/ads/redexgen/X/9q;)V

    goto :goto_5

    .line 28590
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Df;->A0n(ZZ)V

    goto :goto_5

    .line 28591
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0D()V

    .line 28592
    return v4

    .line 28593
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9L;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0S(Lcom/facebook/ads/redexgen/X/9L;)V

    goto :goto_5

    .line 28594
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/VA;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0f(Lcom/facebook/ads/redexgen/X/VA;)V

    goto :goto_5

    .line 28595
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/VA;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0e(Lcom/facebook/ads/redexgen/X/VA;)V

    goto :goto_5

    .line 28596
    :pswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0E()V

    goto :goto_5

    .line 28597
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0M(I)V

    goto :goto_5

    .line 28598
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0m(Z)V

    goto :goto_5

    .line 28599
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9l;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0Y(Lcom/facebook/ads/redexgen/X/9l;)V

    goto :goto_5

    .line 28600
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/9l;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Df;->A0a(Lcom/facebook/ads/redexgen/X/9l;)V

    .line 28601
    :goto_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0A()V

    goto :goto_6
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9F; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 28602
    .end local v4
    :catch_0
    move-exception v3

    .line 28603
    .local v4, "e":Ljava/io/IOException;
    const/16 v2, 0x7d

    const/16 v1, 0xd

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28604
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/Df;->A0n(ZZ)V

    .line 28605
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Landroid/os/Handler;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9F;->A00(Ljava/io/IOException;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28606
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0A()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 28607
    :catch_1
    move-exception v3

    .line 28608
    .local v4, "e":Lcom/facebook/ads/redexgen/X/9F;
    const/16 v2, 0x6e

    const/16 v1, 0xf

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28609
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/Df;->A0n(ZZ)V

    .line 28610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Landroid/os/Handler;

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28611
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0A()V

    goto :goto_6

    .line 28612
    :catch_2
    move-exception v3

    .line 28613
    .local v4, "e":Ljava/lang/RuntimeException;
    const/16 v2, 0x57

    const/16 v1, 0x17

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28614
    invoke-direct {p0, v6, v6}, Lcom/facebook/ads/redexgen/X/Df;->A0n(ZZ)V

    .line 28615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Df;->A0E:Landroid/os/Handler;

    .line 28616
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/9F;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28617
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28618
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0A()V

    .line 28619
    :goto_6
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
