.class public abstract Lcom/facebook/ads/redexgen/X/VH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ET;


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wv;

.field public A01:Lcom/facebook/ads/redexgen/X/9u;

.field public A02:Ljava/lang/Object;

.field public final A03:Lcom/facebook/ads/redexgen/X/Ee;

.field public final A04:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/ES;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58606
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "A1R5XmGNdue"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Xf2fF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2MZr802CwBgh98iwI2LX9r8AFH0stAP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PWtCslqWMOhLlWMecFeGOSMcL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Nab9jbcw8W2RSLeSFi8qaY40Uhnm56i"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UlYKNWRAV2IAyBS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QHLbHyQnMMy3J3Z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VH;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58608
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A04:Ljava/util/ArrayList;

    .line 58609
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ee;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ee;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A03:Lcom/facebook/ads/redexgen/X/Ee;

    .line 58610
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/ER;)Lcom/facebook/ads/redexgen/X/Ee;
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58611
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VH;->A03:Lcom/facebook/ads/redexgen/X/Ee;

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Ee;->A02(ILcom/facebook/ads/redexgen/X/ER;J)Lcom/facebook/ads/redexgen/X/Ee;

    move-result-object v0

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58612
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VH;->A01:Lcom/facebook/ads/redexgen/X/9u;

    .line 58613
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VH;->A02:Ljava/lang/Object;

    .line 58614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ES;

    .line 58615
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/ES;
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ES;->ACb(Lcom/facebook/ads/redexgen/X/ET;Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;)V

    .line 58616
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/ES;
    goto :goto_0

    .line 58617
    :cond_0
    return-void
.end method

.method public abstract A02()V
.end method

.method public abstract A03(Lcom/facebook/ads/redexgen/X/Wv;Z)V
.end method

.method public final A3D(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Eh;)V
    .locals 1

    .line 58618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A03:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ee;->A07(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Eh;)V

    .line 58619
    return-void
.end method

.method public final ADb(Lcom/facebook/ads/redexgen/X/Wv;ZLcom/facebook/ads/redexgen/X/ES;)V
    .locals 2

    .line 58620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:Lcom/facebook/ads/redexgen/X/Wv;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 58621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:Lcom/facebook/ads/redexgen/X/Wv;

    if-nez v0, :cond_2

    .line 58623
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:Lcom/facebook/ads/redexgen/X/Wv;

    .line 58624
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/VH;->A03(Lcom/facebook/ads/redexgen/X/Wv;Z)V

    .line 58625
    :cond_1
    :goto_1
    return-void

    .line 58626
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VH;->A01:Lcom/facebook/ads/redexgen/X/9u;

    if-eqz v1, :cond_1

    .line 58627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A02:Ljava/lang/Object;

    invoke-interface {p3, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ES;->ACb(Lcom/facebook/ads/redexgen/X/ET;Lcom/facebook/ads/redexgen/X/9u;Ljava/lang/Object;)V

    goto :goto_1

    .line 58628
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AEB(Lcom/facebook/ads/redexgen/X/ES;)V
    .locals 4

    .line 58629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58631
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:Lcom/facebook/ads/redexgen/X/Wv;

    .line 58632
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VH;->A01:Lcom/facebook/ads/redexgen/X/9u;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_1

    .line 58633
    sget-object v2, Lcom/facebook/ads/redexgen/X/VH;->A05:[Ljava/lang/String;

    const-string v1, "TEgrTEJPhaeJK53iaQZF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VH;->A02:Ljava/lang/Object;

    .line 58634
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/VH;->A02()V

    .line 58635
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AED(Lcom/facebook/ads/redexgen/X/Eh;)V
    .locals 1

    .line 58636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A03:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ee;->A0D(Lcom/facebook/ads/redexgen/X/Eh;)V

    .line 58637
    return-void
.end method
