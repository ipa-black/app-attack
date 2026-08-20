.class public Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;
.super Ljava/lang/Object;
.source "NetCall.java"

# interfaces
.implements Lcom/bytedance/sdk/component/cJ/Qhi/cJ;


# instance fields
.field Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

.field private ac:Ljava/util/concurrent/atomic/AtomicBoolean;

.field cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;Lcom/bytedance/sdk/component/cJ/Qhi/fl;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    .line 33
    iput-object p2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    return-void
.end method

.method private static Qhi(Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 183
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "client"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setRetryOnConnectionFailure"

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 76
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    if-nez v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    const-string v2, "POST"

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 82
    :cond_1
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    sget-object v2, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    if-eq v1, v2, :cond_2

    return v0

    .line 85
    :cond_2
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->fl:[B

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->fl:[B

    array-length p1, p1

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private ac()Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->CJ()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->CJ()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private cJ(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    if-nez v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    const-string v2, "POST"

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 98
    :cond_1
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    sget-object v2, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    if-eq v1, v2, :cond_2

    return v0

    .line 101
    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->CJ:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->iMK()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->pA()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Qhi()V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->CJ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Tgh;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->CJ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    .line 52
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->Qhi()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->CJ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;

    sget v1, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->Qhi:I

    const-string v2, "Maximum number of requests exceeded"

    iget-object v3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)V

    return-object v0

    .line 57
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi:Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Qhi:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$1;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/cJ/Qhi/hm;

    new-instance v2, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/ac;

    iget-object v3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    invoke-direct {v2, v0, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/ac;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/hm;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/hm$Qhi;)Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    move-result-object v0

    return-object v0

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    sget v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->Qhi:I

    const/4 v1, 0x0

    .line 112
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf;->Qhi()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->CJ()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->CJ()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 116
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->CJ()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 119
    const-string v6, "_disable_retry"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-static {v2}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    if-eqz v1, :cond_4

    .line 128
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->ac:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->ac:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    iget-wide v3, v3, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->cJ:J

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 131
    :cond_3
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->ac:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_4

    .line 132
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->fl:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    iget-wide v3, v3, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->CJ:J

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 135
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v1

    if-nez v1, :cond_5

    .line 136
    const-string v1, "GET"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->ac()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    if-eqz v1, :cond_6

    .line 139
    const-string v1, "Content-Type"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/WAv;->Qhi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 142
    const-string v1, "POST"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 143
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 145
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->fl:[B

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 146
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 147
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->CJ:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 149
    :cond_8
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 150
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_9
    :goto_2
    if-eqz p1, :cond_a

    .line 153
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    if-eqz v1, :cond_a

    .line 154
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->cJ()V

    .line 156
    :cond_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz p1, :cond_b

    .line 157
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    if-eqz v1, :cond_b

    .line 158
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->ac()V

    .line 160
    :cond_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eqz p1, :cond_c

    .line 161
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    if-eqz v1, :cond_c

    .line 162
    iget-object v1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->fl()V

    .line 164
    :cond_c
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->ac:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 165
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->CJ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 177
    const-string v1, "internal error"

    goto :goto_5

    .line 167
    :cond_d
    :try_start_2
    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;

    invoke-direct {v1, v2, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;-><init>(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    iget-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->CJ()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 171
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 173
    :catchall_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :goto_4
    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->CJ()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    :goto_5
    new-instance v2, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;

    invoke-direct {v2, v0, v1, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)V

    return-object v2

    .line 176
    :goto_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->CJ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw p1
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/ac;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->pA()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/fl;->cJ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;

    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->ROR()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Tgh()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$2;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;ILjava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/ac;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public cJ()Lcom/bytedance/sdk/component/cJ/Qhi/cJ;
    .locals 3

    .line 231
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/fl;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;Lcom/bytedance/sdk/component/cJ/Qhi/fl;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/cJ;

    move-result-object v0

    return-object v0
.end method
