.class public Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;
.super Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;
.source "NetResponse.java"


# static fields
.field public static Qhi:I = -0x1


# instance fields
.field CJ:I

.field ac:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

.field cJ:Ljava/net/HttpURLConnection;

.field fl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->fl:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    .line 35
    iput p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->CJ:I

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;-><init>()V

    .line 24
    sget v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->Qhi:I

    iput v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->CJ:I

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->cJ:Ljava/net/HttpURLConnection;

    .line 29
    iput-object p2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    return-void
.end method


# virtual methods
.method public CJ()Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Qhi()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Qhi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->cJ:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 117
    const-string p1, ""

    return-object p1

    .line 119
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 124
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public ROR()Lcom/bytedance/sdk/component/cJ/Qhi/ROR;
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->cJ:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->cJ:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "Content-Range"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac()I

    move-result v5

    const/16 v6, 0xce

    if-eq v5, v6, :cond_2

    .line 107
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_4
    new-instance v1, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method public Sf()Lcom/bytedance/sdk/component/cJ/Qhi/ABk;
    .locals 1

    .line 146
    sget-object v0, Lcom/bytedance/sdk/component/cJ/Qhi/ABk;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/ABk;

    return-object v0
.end method

.method public Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->Gm()V

    .line 82
    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/hm;

    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->cJ:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/hm;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    :try_start_1
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/hm;

    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->cJ:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/hm;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;->ABk()V

    :cond_1
    return-object v0
.end method

.method public WAv()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    return-object v0
.end method

.method public ac()I
    .locals 1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->cJ:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 58
    :catch_0
    iget v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->CJ:I

    return v0
.end method

.method public cJ()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public close()V
    .locals 1

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public fl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->fl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->fl:Ljava/lang/String;

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->cJ:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hm()Lcom/bytedance/sdk/component/cJ/Qhi/Gm;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->WAv()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->WAv()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/Sf;->WAv()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/Gm;-><init>(Lcom/bytedance/sdk/component/ac/Qhi/Qhi;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, ""

    return-object v0
.end method
