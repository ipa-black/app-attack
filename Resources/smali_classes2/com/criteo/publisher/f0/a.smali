.class abstract Lcom/criteo/publisher/f0/a;
.super Lcom/criteo/publisher/f0/n;
.source "$AutoValue_Metric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/f0/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/lang/Long;

.field private final c:Z

.field private final d:Z

.field private final e:Ljava/lang/Long;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/Integer;

.field private final i:Ljava/lang/Integer;

.field private final j:Z


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/lang/Long;ZZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/criteo/publisher/f0/n;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/criteo/publisher/f0/a;->a:Ljava/lang/Long;

    .line 41
    iput-object p2, p0, Lcom/criteo/publisher/f0/a;->b:Ljava/lang/Long;

    .line 42
    iput-boolean p3, p0, Lcom/criteo/publisher/f0/a;->c:Z

    .line 43
    iput-boolean p4, p0, Lcom/criteo/publisher/f0/a;->d:Z

    .line 44
    iput-object p5, p0, Lcom/criteo/publisher/f0/a;->e:Ljava/lang/Long;

    if-eqz p6, :cond_0

    .line 48
    iput-object p6, p0, Lcom/criteo/publisher/f0/a;->f:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/criteo/publisher/f0/a;->g:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/criteo/publisher/f0/a;->h:Ljava/lang/Integer;

    .line 51
    iput-object p9, p0, Lcom/criteo/publisher/f0/a;->i:Ljava/lang/Integer;

    .line 52
    iput-boolean p10, p0, Lcom/criteo/publisher/f0/a;->j:Z

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null impressionId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method b()Ljava/lang/Long;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/criteo/publisher/f0/a;->b:Ljava/lang/Long;

    return-object v0
.end method

.method c()Ljava/lang/Long;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/criteo/publisher/f0/a;->a:Ljava/lang/Long;

    return-object v0
.end method

.method d()Ljava/lang/Long;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/criteo/publisher/f0/a;->e:Ljava/lang/Long;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/criteo/publisher/f0/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/f0/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 134
    check-cast p1, Lcom/criteo/publisher/f0/n;

    .line 135
    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->a:Ljava/lang/Long;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->c()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->b:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->b()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-boolean v1, p0, Lcom/criteo/publisher/f0/a;->c:Z

    .line 137
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->j()Z

    move-result v3

    if-ne v1, v3, :cond_7

    iget-boolean v1, p0, Lcom/criteo/publisher/f0/a;->d:Z

    .line 138
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->i()Z

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->e:Ljava/lang/Long;

    if-nez v1, :cond_3

    .line 139
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->d()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->d()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->f:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->g:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 141
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->h:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 142
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->h()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->h()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->i:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 143
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->f()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_5
    iget-boolean v1, p0, Lcom/criteo/publisher/f0/a;->j:Z

    .line 144
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->k()Z

    move-result p1

    if-ne v1, p1, :cond_7

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    return v0

    :cond_8
    return v2
.end method

.method f()Ljava/lang/Integer;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/criteo/publisher/f0/a;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/criteo/publisher/f0/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/Integer;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/criteo/publisher/f0/a;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/criteo/publisher/f0/a;->a:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 155
    iget-object v3, p0, Lcom/criteo/publisher/f0/a;->b:Ljava/lang/Long;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 157
    iget-boolean v3, p0, Lcom/criteo/publisher/f0/a;->c:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 159
    iget-boolean v3, p0, Lcom/criteo/publisher/f0/a;->d:Z

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 161
    iget-object v3, p0, Lcom/criteo/publisher/f0/a;->e:Ljava/lang/Long;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 163
    iget-object v3, p0, Lcom/criteo/publisher/f0/a;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 165
    iget-object v3, p0, Lcom/criteo/publisher/f0/a;->g:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 167
    iget-object v3, p0, Lcom/criteo/publisher/f0/a;->h:Ljava/lang/Integer;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 169
    iget-object v3, p0, Lcom/criteo/publisher/f0/a;->i:Ljava/lang/Integer;

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_7
    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 171
    iget-boolean v1, p0, Lcom/criteo/publisher/f0/a;->j:Z

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move v4, v5

    :goto_8
    xor-int/2addr v0, v4

    return v0
.end method

.method i()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/criteo/publisher/f0/a;->d:Z

    return v0
.end method

.method j()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/criteo/publisher/f0/a;->c:Z

    return v0
.end method

.method k()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/criteo/publisher/f0/a;->j:Z

    return v0
.end method

.method l()Lcom/criteo/publisher/f0/n$a;
    .locals 2

    .line 177
    new-instance v0, Lcom/criteo/publisher/f0/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/criteo/publisher/f0/a$b;-><init>(Lcom/criteo/publisher/f0/n;Lcom/criteo/publisher/f0/a$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metric{cdbCallStartTimestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cdbCallEndTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cdbCallTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/criteo/publisher/f0/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cachedBidUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/criteo/publisher/f0/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f0/a;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readyToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/criteo/publisher/f0/a;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
