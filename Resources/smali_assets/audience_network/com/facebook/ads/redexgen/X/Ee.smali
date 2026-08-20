.class public final Lcom/facebook/ads/redexgen/X/Ee;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ed;
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/ER;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:J

.field public final A03:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/Ed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 31936
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XHo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ubtbrXFiKU0aMD9WZdFFXMvL5SNCKhBD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "k9cdhOGQS1oEdCdR21VeueSE4nGT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BZNadIlHUT8LbNbZ8qdMYncW4fXCJJFh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "22DNreJXUwzG5I9t9ymbmjKefjfUTWMr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OkM0GcBH5aVjMNZagw1JqhxPR8ijdnHI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ik3Hzc9el9B7KCBCFVHKN4tCPL2D2JGF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0FgMGgJ2UsG2ZcXwt2m5OtQLezKmVI44"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ee;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 31937
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ee;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/ER;J)V

    .line 31938
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/ER;J)V
    .locals 0
    .param p3    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/ads/redexgen/X/Ed;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/ER;",
            "J)V"
        }
    .end annotation

    .line 31939
    .local p1, "listenerAndHandlers":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31940
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31941
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Ee;->A00:I

    .line 31942
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Lcom/facebook/ads/redexgen/X/ER;

    .line 31943
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Ee;->A02:J

    .line 31944
    return-void
.end method

.method private A00(J)J
    .locals 5

    .line 31945
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/99;->A01(J)J

    move-result-wide v3

    .line 31946
    .local v0, "mediaTimeMs":J
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v3, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A02:J

    add-long/2addr v0, v3

    goto :goto_0
.end method

.method private A01(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 31947
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_0

    .line 31948
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 31949
    :goto_0
    return-void

    .line 31950
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final A02(ILcom/facebook/ads/redexgen/X/ER;J)Lcom/facebook/ads/redexgen/X/Ee;
    .locals 6
    .param p2    # Lcom/facebook/ads/redexgen/X/ER;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 31951
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ee;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ee;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/facebook/ads/redexgen/X/ER;J)V

    return-object v0
.end method

.method public final A03()V
    .locals 4

    .line 31952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Lcom/facebook/ads/redexgen/X/ER;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 31953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ed;

    .line 31954
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    .line 31955
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Eh;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EU;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/EU;-><init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31956
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Eh;
    goto :goto_1

    .line 31957
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31958
    :cond_1
    return-void
.end method

.method public final A04()V
    .locals 4

    .line 31959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Lcom/facebook/ads/redexgen/X/ER;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ee;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31960
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ee;->A04:[Ljava/lang/String;

    const-string v1, "rYA4ryMG3XFm73cnSWA4HWNW3HUxv7KC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "1YJ2rSWw51hvYcz1kikUBhJeKIWd76IZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ed;

    .line 31961
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    .line 31962
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Eh;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EV;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/EV;-><init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31963
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Eh;
    goto :goto_1

    .line 31964
    :cond_2
    return-void
.end method

.method public final A05()V
    .locals 4

    .line 31965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Lcom/facebook/ads/redexgen/X/ER;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 31966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ed;

    .line 31967
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    .line 31968
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Eh;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ea;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Ea;-><init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31969
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Eh;
    goto :goto_1

    .line 31970
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31971
    :cond_1
    return-void
.end method

.method public final A06(ILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;J)V
    .locals 12
    .param p2    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31972
    new-instance v2, Lcom/facebook/ads/redexgen/X/Eg;

    .line 31973
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ee;->A00(J)J

    move-result-wide v8

    const/4 v3, 0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v11}, Lcom/facebook/ads/redexgen/X/Eg;-><init>(IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJ)V

    .line 31974
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A0C(Lcom/facebook/ads/redexgen/X/Eg;)V

    .line 31975
    return-void
.end method

.method public final A07(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Eh;)V
    .locals 2

    .line 31976
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A03(Z)V

    .line 31977
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ed;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ed;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Eh;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 31978
    return-void

    .line 31979
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V
    .locals 4

    .line 31980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ed;

    .line 31981
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    .line 31982
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Eh;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EY;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/EY;-><init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31983
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Eh;
    goto :goto_0

    .line 31984
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V
    .locals 4

    .line 31985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ed;

    .line 31986
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    .line 31987
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Eh;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EX;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/EX;-><init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31988
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Eh;
    goto :goto_0

    .line 31989
    :cond_0
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V
    .locals 4

    .line 31990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ed;

    .line 31991
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    .line 31992
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Eh;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/EW;-><init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31993
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Eh;
    goto :goto_0

    .line 31994
    :cond_0
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;Ljava/io/IOException;Z)V
    .locals 9

    .line 31995
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ed;

    .line 31996
    .local p0, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    .line 31997
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/Eh;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/EZ;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/EZ;-><init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;Ljava/io/IOException;Z)V

    invoke-direct {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31998
    .end local p0    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    .end local p1    # "listener":Lcom/facebook/ads/redexgen/X/Eh;
    goto :goto_0

    .line 31999
    :cond_0
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/Eg;)V
    .locals 4

    .line 32000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ed;

    .line 32001
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    .line 32002
    .local v2, "listener":Lcom/facebook/ads/redexgen/X/Eh;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ec;

    invoke-direct {v0, p0, v2, p1}, Lcom/facebook/ads/redexgen/X/Ec;-><init>(Lcom/facebook/ads/redexgen/X/Ee;Lcom/facebook/ads/redexgen/X/Eh;Lcom/facebook/ads/redexgen/X/Eg;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 32003
    .end local v1    # "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    .end local v2    # "listener":Lcom/facebook/ads/redexgen/X/Eh;
    goto :goto_0

    .line 32004
    :cond_0
    return-void
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/Eh;)V
    .locals 3

    .line 32005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ed;

    .line 32006
    .local v1, "listenerAndHandler":Lcom/facebook/ads/redexgen/X/Ed;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ed;->A01:Lcom/facebook/ads/redexgen/X/Eh;

    if-ne v0, p1, :cond_0

    .line 32007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A03:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32008
    :cond_1
    return-void
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/Gb;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJ)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32009
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/Ef;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v14, p1

    move-wide/from16 v15, p11

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/Ef;-><init>(Lcom/facebook/ads/redexgen/X/Gb;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Eg;

    .line 32010
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A00(J)J

    move-result-wide v9

    .line 32011
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A00(J)J

    move-result-wide v11

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Eg;-><init>(IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJ)V

    .line 32012
    invoke-virtual {v0, v13, v3}, Lcom/facebook/ads/redexgen/X/Ee;->A0A(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V

    .line 32013
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Gb;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJJJ)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32014
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/Ef;

    move-object/from16 v14, p1

    move-wide/from16 v19, p15

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/Ef;-><init>(Lcom/facebook/ads/redexgen/X/Gb;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Eg;

    .line 32015
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A00(J)J

    move-result-wide v9

    .line 32016
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A00(J)J

    move-result-wide v11

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Eg;-><init>(IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJ)V

    .line 32017
    invoke-virtual {v0, v13, v3}, Lcom/facebook/ads/redexgen/X/Ee;->A08(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V

    .line 32018
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Gb;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJJJ)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32019
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/Ef;

    move-object/from16 v14, p1

    move-wide/from16 v19, p15

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/Ef;-><init>(Lcom/facebook/ads/redexgen/X/Gb;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Eg;

    .line 32020
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A00(J)J

    move-result-wide v9

    .line 32021
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A00(J)J

    move-result-wide v11

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Eg;-><init>(IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJ)V

    .line 32022
    invoke-virtual {v0, v13, v3}, Lcom/facebook/ads/redexgen/X/Ee;->A09(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;)V

    .line 32023
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/Gb;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 21
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32024
    move-object/from16 v0, p0

    new-instance v13, Lcom/facebook/ads/redexgen/X/Ef;

    move-object/from16 v14, p1

    move-wide/from16 v19, p15

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    invoke-direct/range {v13 .. v20}, Lcom/facebook/ads/redexgen/X/Ef;-><init>(Lcom/facebook/ads/redexgen/X/Gb;JJJ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Eg;

    .line 32025
    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A00(J)J

    move-result-wide v9

    .line 32026
    move-wide/from16 v1, p9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ee;->A00(J)J

    move-result-wide v11

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Eg;-><init>(IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJ)V

    .line 32027
    move-object/from16 v2, p17

    move/from16 v1, p18

    invoke-virtual {v0, v13, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ee;->A0B(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/Eg;Ljava/io/IOException;Z)V

    .line 32028
    return-void
.end method
