.class Lcom/bytedance/sdk/component/ROR/cJ/fl$1;
.super Ljava/lang/Object;
.source "PostExecutor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/cJ/Qhi/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;

.field final synthetic cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->Qhi:Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const-string p1, "content-type"

    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->Qhi:Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;

    if-eqz v0, :cond_a

    if-nez p2, :cond_0

    .line 127
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;

    new-instance p2, Ljava/io/IOException;

    const-string v1, "No response"

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 133
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ROR()Lcom/bytedance/sdk/component/cJ/Qhi/ROR;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 136
    :goto_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 137
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->Qhi(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/ROR;->cJ(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 142
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    .line 143
    const-string v3, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_3
    invoke-static {v5}, Lcom/bytedance/sdk/component/ROR/CJ/Tgh;->Qhi(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 152
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->CJ()[B

    move-result-object p1

    .line 153
    new-instance v11, Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->cJ()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Qhi()J

    move-result-wide v9

    const/4 v6, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    :try_start_1
    invoke-virtual {v11, p1}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v11

    goto :goto_3

    .line 156
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/ROR/cJ/fl;->hm:Z

    if-eqz p1, :cond_5

    .line 157
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->CJ()[B

    move-result-object p1

    .line 158
    new-instance v6, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lcom/bytedance/sdk/component/cJ/Qhi/HzH;)Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lcom/bytedance/sdk/component/cJ/Qhi/WAv;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v6, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 159
    new-instance v11, Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->cJ()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Qhi()J

    move-result-wide v9

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    :try_start_3
    invoke-virtual {v11, p1}, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 163
    :cond_5
    :try_start_4
    new-instance v11, Lcom/bytedance/sdk/component/ROR/cJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Tgh()Lcom/bytedance/sdk/component/cJ/Qhi/HzH;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/HzH;->cJ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->cJ()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Qhi()J

    move-result-wide v9

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    :goto_2
    :try_start_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;

    invoke-static {p1, v11, p2}, Lcom/bytedance/sdk/component/ROR/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/fl;Lcom/bytedance/sdk/component/ROR/cJ;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 168
    :goto_3
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object v11, v0

    move-object v0, v1

    :goto_4
    if-eqz v11, :cond_6

    .line 171
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->Qhi:Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;

    invoke-virtual {p1, p2, v11}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V

    return-void

    .line 173
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->Qhi:Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;

    instance-of v1, p1, Lcom/bytedance/sdk/component/ROR/Qhi/cJ;

    const-string v2, "Unexpected exception"

    if-eqz v1, :cond_8

    .line 174
    check-cast p1, Lcom/bytedance/sdk/component/ROR/Qhi/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;

    if-nez v0, :cond_7

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_7
    new-instance v12, Lcom/bytedance/sdk/component/ROR/cJ;

    .line 175
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->CJ()Z

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->fl()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->cJ()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->Qhi()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/ROR/cJ;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 174
    invoke-virtual {p1, v1, v0, v12}, Lcom/bytedance/sdk/component/ROR/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;Lcom/bytedance/sdk/component/ROR/cJ;)V

    return-void

    .line 178
    :cond_8
    iget-object p2, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;

    if-nez v0, :cond_9

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V

    :cond_a
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ;Ljava/io/IOException;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->Qhi:Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ/fl$1;->cJ:Lcom/bytedance/sdk/component/ROR/cJ/fl;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
