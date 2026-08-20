.class abstract Lcom/criteo/publisher/model/a;
.super Lcom/criteo/publisher/model/o;
.source "$AutoValue_CdbRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/criteo/publisher/model/v;

.field private final c:Lcom/criteo/publisher/model/z;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Lcom/criteo/publisher/l0/d/c;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/criteo/publisher/model/v;Lcom/criteo/publisher/model/z;Ljava/lang/String;ILcom/criteo/publisher/l0/d/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/criteo/publisher/model/v;",
            "Lcom/criteo/publisher/model/z;",
            "Ljava/lang/String;",
            "I",
            "Lcom/criteo/publisher/l0/d/c;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/criteo/publisher/model/o;-><init>()V

    if-eqz p1, :cond_4

    .line 37
    iput-object p1, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 41
    iput-object p2, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    if-eqz p3, :cond_2

    .line 45
    iput-object p3, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    if-eqz p4, :cond_1

    .line 49
    iput-object p4, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    .line 50
    iput p5, p0, Lcom/criteo/publisher/model/a;->e:I

    .line 51
    iput-object p6, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/l0/d/c;

    if-eqz p7, :cond_0

    .line 55
    iput-object p7, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null slots"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null sdkVersion"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null user"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null publisher"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/criteo/publisher/l0/d/c;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gdprConsent"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/l0/d/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/criteo/publisher/model/a;->e:I

    return v0
.end method

.method public d()Lcom/criteo/publisher/model/v;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 118
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/model/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 119
    check-cast p1, Lcom/criteo/publisher/model/o;

    .line 120
    iget-object v1, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    .line 121
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->d()Lcom/criteo/publisher/model/v;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    .line 122
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->g()Lcom/criteo/publisher/model/z;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/criteo/publisher/model/a;->e:I

    .line 124
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->c()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/l0/d/c;

    if-nez v1, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->a()Lcom/criteo/publisher/l0/d/c;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->a()Lcom/criteo/publisher/l0/d/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    .line 126
    invoke-virtual {p1}, Lcom/criteo/publisher/model/o;->f()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    return-object v0
.end method

.method public g()Lcom/criteo/publisher/model/z;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 137
    iget-object v2, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 139
    iget-object v2, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 141
    iget-object v2, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 143
    iget v2, p0, Lcom/criteo/publisher/model/a;->e:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 145
    iget-object v2, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/l0/d/c;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 147
    iget-object v1, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CdbRequest{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publisher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->b:Lcom/criteo/publisher/model/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->c:Lcom/criteo/publisher/model/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/criteo/publisher/model/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gdprData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->f:Lcom/criteo/publisher/l0/d/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
