.class public final Lcom/facebook/ads/redexgen/X/Jx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PL;


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/RA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/redexgen/X/PO;

.field public final A07:Lcom/facebook/ads/redexgen/X/NY;

.field public final A08:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A09:Lcom/facebook/ads/redexgen/X/M8;

.field public final A0A:Lcom/facebook/ads/redexgen/X/LE;

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 40916
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ua4Z1F3Vn1tdURaP0tTj5Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VlqKJtfjGqtNso0qX2A6lmnvOZsZ2xTE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1pb0xsuTqC4ySw1JjiCpjHk6a0KK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HW9a8amQa56v9usqS4J3KzzxMBRp7oUY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lzg290ZQq0ECc78zj7A2Pt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9JBQniCNh78hbF6UnJo6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DIRAqcjzgSQz4x9q8OrEXdtc6Zce0V5V"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FPN1H6gS7aT4O5CCkRk249I"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jx;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 40917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40918
    new-instance v0, Lcom/facebook/ads/redexgen/X/6x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Lcom/facebook/ads/redexgen/X/Jx;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Lcom/facebook/ads/redexgen/X/NY;

    .line 40919
    new-instance v0, Lcom/facebook/ads/redexgen/X/6w;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6w;-><init>(Lcom/facebook/ads/redexgen/X/Jx;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Lcom/facebook/ads/redexgen/X/PO;

    .line 40920
    new-instance v0, Lcom/facebook/ads/redexgen/X/6v;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6v;-><init>(Lcom/facebook/ads/redexgen/X/Jx;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/Mt;

    .line 40921
    new-instance v0, Lcom/facebook/ads/redexgen/X/6u;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6u;-><init>(Lcom/facebook/ads/redexgen/X/Jx;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A09:Lcom/facebook/ads/redexgen/X/M8;

    .line 40922
    new-instance v0, Lcom/facebook/ads/redexgen/X/6t;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6t;-><init>(Lcom/facebook/ads/redexgen/X/Jx;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0A:Lcom/facebook/ads/redexgen/X/LE;

    .line 40923
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/os/Handler;

    .line 40924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Ljava/util/List;

    .line 40925
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A00:I

    .line 40926
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    .line 40927
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jx;)I
    .locals 0

    .line 40928
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Jx;)Landroid/os/Handler;
    .locals 0

    .line 40929
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Jx;)Lcom/facebook/ads/redexgen/X/RA;
    .locals 0

    .line 40930
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:Lcom/facebook/ads/redexgen/X/RA;

    return-object p0
.end method

.method private A03()V
    .locals 5

    .line 40931
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jx;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jx;->A0C:[Ljava/lang/String;

    const-string v1, "SzC94btdcN1119JNHgRanzsWdfoutew0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ph;

    .line 40933
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/Ph;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ph;->cancel()V

    .line 40934
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/Ph;
    goto :goto_0

    .line 40935
    :cond_1
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Jx;)V
    .locals 0

    .line 40936
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jx;->A03()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Jx;ZZ)V
    .locals 0

    .line 40937
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Jx;->A06(ZZ)V

    return-void
.end method

.method private A06(ZZ)V
    .locals 5

    .line 40938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ph;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jx;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 40939
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/Ph;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jx;->A0C:[Ljava/lang/String;

    const-string v1, "qWrr7wKcnD6M25Nm7U3j0NNRElcnIA4d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/Ph;->A3N(ZZ)V

    .line 40940
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/Ph;
    goto :goto_0

    .line 40941
    :cond_1
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Jx;)Z
    .locals 0

    .line 40942
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A03:Z

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Jx;)Z
    .locals 0

    .line 40943
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Jx;)Z
    .locals 0

    .line 40944
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Jx;Lcom/facebook/ads/redexgen/X/Pg;)Z
    .locals 0

    .line 40945
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jx;->A0D(Lcom/facebook/ads/redexgen/X/Pg;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Jx;Z)Z
    .locals 0

    .line 40946
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A03:Z

    return p1
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Jx;Z)Z
    .locals 0

    .line 40947
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Z

    return p1
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Pg;)Z
    .locals 2

    .line 40948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ph;

    .line 40949
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/Ph;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ph;->A7j()Lcom/facebook/ads/redexgen/X/Pg;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 40950
    const/4 v0, 0x0

    return v0

    .line 40951
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0E()V
    .locals 1

    .line 40952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40953
    return-void
.end method

.method public final A0F()V
    .locals 2

    .line 40954
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    if-eqz v0, :cond_0

    .line 40955
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A05:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    .line 40957
    :cond_0
    return-void
.end method

.method public final A0G()V
    .locals 1

    .line 40958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A04:Z

    .line 40959
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A03:Z

    .line 40960
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/Jx;->A06(ZZ)V

    .line 40961
    return-void
.end method

.method public final A0H(I)V
    .locals 0

    .line 40962
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A00:I

    .line 40963
    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/Ph;)V
    .locals 1

    .line 40964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40965
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 40966
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A02:Z

    return v0
.end method

.method public final A93(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 4

    .line 40967
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:Lcom/facebook/ads/redexgen/X/RA;

    .line 40968
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Lcom/facebook/ads/redexgen/X/NY;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0A:Lcom/facebook/ads/redexgen/X/LE;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/Mt;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A09:Lcom/facebook/ads/redexgen/X/M8;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Lcom/facebook/ads/redexgen/X/PO;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 40969
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A03([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 40970
    return-void
.end method

.method public final AFf(Lcom/facebook/ads/redexgen/X/RA;)V
    .locals 4

    .line 40971
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jx;->A03()V

    .line 40972
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RA;->getEventBus()Lcom/facebook/ads/redexgen/X/8U;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8V;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A06:Lcom/facebook/ads/redexgen/X/PO;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A0A:Lcom/facebook/ads/redexgen/X/LE;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A08:Lcom/facebook/ads/redexgen/X/Mt;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A09:Lcom/facebook/ads/redexgen/X/M8;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jx;->A07:Lcom/facebook/ads/redexgen/X/NY;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 40973
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8U;->A04([Lcom/facebook/ads/redexgen/X/8V;)V

    .line 40974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jx;->A01:Lcom/facebook/ads/redexgen/X/RA;

    .line 40975
    return-void
.end method
