.class public final Lcom/facebook/ads/redexgen/X/UQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gx;


# static fields
.field public static A06:Z

.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/US;

.field public final A03:Lcom/facebook/ads/redexgen/X/H5;

.field public final A04:Ljava/io/File;

.field public final A05:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Gw;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 56820
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PZs3vIZtp1syVhF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iN5G7Jyo65HiG11v5U3JAI3rcjEJu9Fh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jWadhCo9gqYR1xuZ5eOebDdRLwIuwzoe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5aVgPmkb9WO9SFxkSTOlcah0CKuDVehn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Qok3N"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7mg38N8lomez8u4EtBpwlNJo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Crj8XVI7aaG6XCZYe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vguL8XPuWTEOQDWRTomV5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UQ;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UQ;->A06()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/UQ;->A09:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/US;)V
    .locals 2

    .line 56821
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/UQ;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/US;[BZ)V

    .line 56822
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/H5;)V
    .locals 4

    .line 56823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56824
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UQ;->A0D(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56825
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A04:Ljava/io/File;

    .line 56826
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UQ;->A02:Lcom/facebook/ads/redexgen/X/US;

    .line 56827
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    .line 56828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A05:Ljava/util/HashMap;

    .line 56829
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    .line 56830
    .local v0, "conditionVariable":Landroid/os/ConditionVariable;
    const/16 v2, 0x39

    const/16 v1, 0x18

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UQ;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/HA;

    invoke-direct {v0, p0, v1, v3}, Lcom/facebook/ads/redexgen/X/HA;-><init>(Lcom/facebook/ads/redexgen/X/UQ;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 56831
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->start()V

    .line 56832
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 56833
    return-void

    .line 56834
    .end local v0    # "conditionVariable":Landroid/os/ConditionVariable;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UQ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/US;[BZ)V
    .locals 1

    .line 56835
    new-instance v0, Lcom/facebook/ads/redexgen/X/H5;

    invoke-direct {v0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/H5;-><init>(Ljava/io/File;[BZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/UQ;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/H5;)V

    .line 56836
    return-void
.end method

.method private A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UP;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    .line 56837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H5;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v2

    .line 56838
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    if-nez v2, :cond_1

    .line 56839
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UP;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UP;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/UQ;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/UQ;->A08:[Ljava/lang/String;

    const-string v1, "R7TEvDOiyk4OKBf9PsOT39P5pIR22NMD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56840
    :cond_1
    :goto_0
    invoke-virtual {v2, p2, p3}, Lcom/facebook/ads/redexgen/X/H4;->A06(J)Lcom/facebook/ads/redexgen/X/UP;

    move-result-object v1

    .line 56841
    .local v1, "span":Lcom/facebook/ads/redexgen/X/UP;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/H1;->A05:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H1;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56842
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UQ;->A05()V

    .line 56843
    goto :goto_0

    .line 56844
    :cond_2
    return-object v1
.end method

.method private final declared-synchronized A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    monitor-enter p0

    .line 56845
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UQ;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UP;

    move-result-object v0

    .line 56846
    .local v0, "span":Lcom/facebook/ads/redexgen/X/UP;
    if-eqz v0, :cond_0

    goto :goto_1

    .line 56847
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56848
    :goto_1
    monitor-exit p0

    return-object v0

    .line 56849
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UP;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    monitor-enter p0

    .line 56850
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56851
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UQ;->A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UP;

    move-result-object v2

    .line 56852
    .local v0, "cacheSpan":Lcom/facebook/ads/redexgen/X/UP;
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/H1;->A05:Z

    if-eqz v0, :cond_1

    .line 56853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H5;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/H4;->A07(Lcom/facebook/ads/redexgen/X/UP;)Lcom/facebook/ads/redexgen/X/UP;

    move-result-object v0

    .line 56854
    .local v1, "newCacheSpan":Lcom/facebook/ads/redexgen/X/UP;
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/UQ;->A0C(Lcom/facebook/ads/redexgen/X/UP;Lcom/facebook/ads/redexgen/X/H1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56855
    monitor-exit p0

    return-object v0

    .line 56856
    .end local v1    # "newCacheSpan":Lcom/facebook/ads/redexgen/X/UP;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H5;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v1

    .line 56857
    .local v2, "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H4;->A0D()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56858
    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/H4;->A0B(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56859
    monitor-exit p0

    return-object v2

    .line 56860
    :cond_2
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 56861
    .end local v0    # "cacheSpan":Lcom/facebook/ads/redexgen/X/UP;
    .end local v2    # "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UQ;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 9

    .line 56862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 56864
    return-void

    .line 56865
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A0E()V

    .line 56866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 56867
    .local v0, "files":[Ljava/io/File;
    if-nez v8, :cond_1

    .line 56868
    return-void

    .line 56869
    :cond_1
    array-length v7, v8

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v5, v8, v6

    .line 56870
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6a

    const/16 v1, 0x18

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UQ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56871
    .end local v3    # "file":Ljava/io/File;
    .end local v4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 56872
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/UP;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/H5;)Lcom/facebook/ads/redexgen/X/UP;

    move-result-object v0

    .line 56873
    .local v4, "span":Lcom/facebook/ads/redexgen/X/UP;
    :goto_2
    if-eqz v0, :cond_4

    .line 56874
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/UQ;->A0A(Lcom/facebook/ads/redexgen/X/UP;)V

    goto :goto_1

    .line 56875
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 56876
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 56877
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A0F()V

    .line 56878
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A0G()V

    goto :goto_3
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Gv; {:try_start_0 .. :try_end_0} :catch_0

    .line 56879
    :catch_0
    move-exception v4

    .line 56880
    .local v1, "e":Lcom/facebook/ads/redexgen/X/Gv;
    const/16 v2, 0x2e

    const/16 v1, 0xb

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UQ;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x51

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UQ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56881
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/Gv;
    :goto_3
    return-void
.end method

.method private A05()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    .line 56882
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56883
    .local v0, "spansToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/cache/CacheSpan;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A0D()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H4;

    .line 56884
    .local v2, "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H4;->A08()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/H1;

    .line 56885
    .local v4, "span":Lcom/facebook/ads/redexgen/X/H1;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H1;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56886
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56887
    :cond_2
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 56888
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/H1;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/UQ;->A08(Lcom/facebook/ads/redexgen/X/H1;Z)V

    .line 56889
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56890
    .end local v1    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A0F()V

    .line 56891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A0G()V

    .line 56892
    return-void
.end method

.method public static A06()V
    .locals 4

    const/16 v3, 0x82

    sget-object v2, Lcom/facebook/ads/redexgen/X/UQ;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/UQ;->A08:[Ljava/lang/String;

    const-string v1, "N0vjWbyGqBS98Run3kOI6tTmnpu8bGoB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UQ;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x43t
        0x6ct
        0x6dt
        0x76t
        0x6at
        0x67t
        0x70t
        0x22t
        0x51t
        0x6bt
        0x6ft
        0x72t
        0x6et
        0x67t
        0x41t
        0x63t
        0x61t
        0x6at
        0x67t
        0x22t
        0x6bt
        0x6ct
        0x71t
        0x76t
        0x63t
        0x6ct
        0x61t
        0x67t
        0x22t
        0x77t
        0x71t
        0x67t
        0x71t
        0x22t
        0x76t
        0x6at
        0x67t
        0x22t
        0x64t
        0x6dt
        0x6et
        0x66t
        0x67t
        0x70t
        0x38t
        0x22t
        0x30t
        0xat
        0xet
        0x13t
        0xft
        0x6t
        0x20t
        0x2t
        0x0t
        0xbt
        0x6t
        0x79t
        0x43t
        0x47t
        0x5at
        0x46t
        0x4ft
        0x69t
        0x4bt
        0x49t
        0x42t
        0x4ft
        0x4t
        0x43t
        0x44t
        0x43t
        0x5et
        0x43t
        0x4bt
        0x46t
        0x43t
        0x50t
        0x4ft
        0x2t
        0x3t
        0x60t
        0x47t
        0x5ct
        0x41t
        0x5at
        0x5dt
        0x54t
        0x13t
        0x5at
        0x5dt
        0x57t
        0x56t
        0x4bt
        0x13t
        0x55t
        0x5at
        0x5ft
        0x56t
        0x13t
        0x55t
        0x52t
        0x5at
        0x5ft
        0x56t
        0x57t
        0x14t
        0x16t
        0x14t
        0x1ft
        0x12t
        0x13t
        0x28t
        0x14t
        0x18t
        0x19t
        0x3t
        0x12t
        0x19t
        0x3t
        0x28t
        0x1et
        0x19t
        0x13t
        0x12t
        0xft
        0x59t
        0x12t
        0xft
        0x1et
    .end array-data
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 3

    .line 56893
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H1;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 56894
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 56895
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 56896
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gw;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Gw;->ACd(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 56897
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 56898
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A02:Lcom/facebook/ads/redexgen/X/US;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Gw;->ACd(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 56899
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/H1;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    .line 56900
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H1;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H5;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v4

    .line 56901
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/H4;->A0E(Lcom/facebook/ads/redexgen/X/H1;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56902
    :cond_0
    return-void

    .line 56903
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/H1;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:J

    .line 56904
    if-eqz p2, :cond_2

    .line 56905
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/H4;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H5;->A0H(Ljava/lang/String;)V

    .line 56906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A0G()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56907
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UQ;->A07(Lcom/facebook/ads/redexgen/X/H1;)V

    .line 56908
    throw v0

    .line 56909
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UQ;->A07(Lcom/facebook/ads/redexgen/X/H1;)V

    .line 56910
    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/UQ;)V
    .locals 0

    .line 56911
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UQ;->A04()V

    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/UP;)V
    .locals 4

    .line 56912
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H1;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H5;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H4;->A09(Lcom/facebook/ads/redexgen/X/UP;)V

    .line 56913
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/H1;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:J

    .line 56914
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UQ;->A0B(Lcom/facebook/ads/redexgen/X/UP;)V

    .line 56915
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/UP;)V
    .locals 3

    .line 56916
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H1;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 56917
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 56918
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 56919
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gw;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Gw;->ACc(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 56920
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 56921
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A02:Lcom/facebook/ads/redexgen/X/US;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Gw;->ACc(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 56922
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/UP;Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 5

    .line 56923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H1;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 56924
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/thirdparty/upstream/cache/Cache$Listener;>;"
    if-eqz v3, :cond_1

    .line 56925
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/UQ;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/UQ;->A08:[Ljava/lang/String;

    const-string v1, "YjLi8Ea68WiaTq3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ACi8R"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 56926
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gw;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gw;->ACe(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 56927
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 56928
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A02:Lcom/facebook/ads/redexgen/X/US;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gw;->ACe(Lcom/facebook/ads/redexgen/X/Gx;Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/H1;)V

    .line 56929
    return-void
.end method

.method public static declared-synchronized A0D(Ljava/io/File;)Z
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/UQ;

    monitor-enter v2

    .line 56930
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/UQ;->A06:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56931
    const/4 v0, 0x1

    monitor-exit v2

    return v0

    .line 56932
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/UQ;->A09:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v0

    .line 56933
    .end local p0    # null:Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A3Q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/H9;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    monitor-enter p0

    .line 56934
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/H5;->A0I(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/H9;)V

    .line 56936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A0G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56937
    monitor-exit p0

    return-void

    .line 56938
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/H9;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A47(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    monitor-enter p0

    .line 56939
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    const/4 v7, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/UP;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/H5;)Lcom/facebook/ads/redexgen/X/UP;

    move-result-object v6

    .line 56941
    .local v0, "span":Lcom/facebook/ads/redexgen/X/UP;
    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56942
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/H1;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H5;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v5

    .line 56943
    .local v3, "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56944
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/H4;->A0D()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56945
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56946
    monitor-exit p0

    return-void

    .line 56947
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 56948
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56949
    monitor-exit p0

    return-void

    .line 56950
    .end local p2
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/H4;->A05()Lcom/facebook/ads/redexgen/X/H7;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H8;->A00(Lcom/facebook/ads/redexgen/X/H7;)J

    move-result-wide v4

    .line 56951
    .local v4, "length":J
    const-wide/16 v1, -0x1

    cmp-long v0, v4, v1

    if-eqz v0, :cond_4

    .line 56952
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/H1;->A02:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/H1;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    :goto_2
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56953
    :cond_4
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/UQ;->A0A(Lcom/facebook/ads/redexgen/X/UP;)V

    .line 56954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H5;->A0G()V

    .line 56955
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    .line 56956
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56957
    :goto_3
    monitor-exit p0

    return-void

    .line 56958
    .end local v0    # "span":Lcom/facebook/ads/redexgen/X/UP;
    .end local v3    # "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    .end local v4    # "length":J
    .end local p3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5y()J
    .locals 2

    monitor-enter p0

    .line 56959
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56960
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 56961
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A5z(Ljava/lang/String;JJ)J
    .locals 2

    monitor-enter p0

    .line 56962
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H5;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    .line 56964
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/H4;->A04(JJ)J

    move-result-wide v0

    goto :goto_1

    .end local p1    # null:Ljava/lang/String;
    :cond_1
    neg-long v0, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v0

    .line 56965
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    .end local p2    # null:J
    .end local p3
    .end local p5
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A60(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/facebook/ads/redexgen/X/H1;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 56966
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56967
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H5;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v1

    .line 56968
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H4;->A0C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56969
    .end local p1    # null:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    .line 56970
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H4;->A08()Ljava/util/TreeSet;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56971
    :goto_1
    monitor-exit p0

    return-object v1

    .line 56972
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6E(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    .line 56973
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/UQ;->A6F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H7;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/H8;->A00(Lcom/facebook/ads/redexgen/X/H7;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    .end local p1    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H7;
    .locals 1

    monitor-enter p0

    .line 56974
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H5;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H7;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56976
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    .end local p1    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AE8(Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 4

    monitor-enter p0

    .line 56977
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56978
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H1;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H5;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v2

    .line 56979
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56980
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/H4;->A0D()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56981
    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/H4;->A0B(Z)V

    .line 56982
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/H4;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H5;->A0H(Ljava/lang/String;)V

    .line 56983
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56984
    monitor-exit p0

    return-void

    .line 56985
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    .end local v3
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEF(Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    monitor-enter p0

    .line 56986
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56987
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/UQ;->A08(Lcom/facebook/ads/redexgen/X/H1;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56988
    monitor-exit p0

    return-void

    .line 56989
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/H1;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEs(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    monitor-enter p0

    .line 56990
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/H9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/H9;-><init>()V

    .line 56991
    .local v0, "mutations":Lcom/facebook/ads/redexgen/X/H9;
    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/H8;->A05(Lcom/facebook/ads/redexgen/X/H9;J)V

    .line 56992
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/UQ;->A3Q(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/H9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56993
    monitor-exit p0

    return-void

    .line 56994
    .end local v0    # "mutations":Lcom/facebook/ads/redexgen/X/H9;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFN(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    monitor-enter p0

    .line 56995
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A01:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A03:Lcom/facebook/ads/redexgen/X/H5;

    move-object v4, p1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/H5;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v1

    .line 56997
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HD;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56998
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H4;->A0D()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A04(Z)V

    .line 56999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UQ;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 57001
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UQ;->A05()V

    .line 57002
    .end local v8
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UQ;->A02:Lcom/facebook/ads/redexgen/X/US;

    move-object v3, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/US;->ACf(Lcom/facebook/ads/redexgen/X/Gx;Ljava/lang/String;JJ)V

    .line 57003
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UQ;->A04:Ljava/io/File;

    iget v4, v1, Lcom/facebook/ads/redexgen/X/H4;->A02:I

    .line 57004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 57005
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/UP;->A04(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57006
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/H4;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/UQ;
    .end local p1    # null:Ljava/lang/String;
    .end local p3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic AFP(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/H1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    .line 57007
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UQ;->A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UP;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AFQ(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/H1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gv;
        }
    .end annotation

    .line 57008
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/UQ;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/UP;

    move-result-object v0

    return-object v0
.end method
