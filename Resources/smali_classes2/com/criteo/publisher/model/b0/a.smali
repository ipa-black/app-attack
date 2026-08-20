.class abstract Lcom/criteo/publisher/model/b0/a;
.super Lcom/criteo/publisher/model/b0/m;
.source "$AutoValue_NativeAdvertiser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/net/URI;

.field private final d:Lcom/criteo/publisher/model/b0/o;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Lcom/criteo/publisher/model/b0/o;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/criteo/publisher/model/b0/m;-><init>()V

    if-eqz p1, :cond_3

    .line 25
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 29
    iput-object p2, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 33
    iput-object p3, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    if-eqz p4, :cond_0

    .line 37
    iput-object p4, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null logo"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null logoClickUrl"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null description"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null domain"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method c()Lcom/criteo/publisher/model/b0/o;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    return-object v0
.end method

.method d()Ljava/net/URI;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/model/b0/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 80
    check-cast p1, Lcom/criteo/publisher/model/b0/m;

    .line 81
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    .line 83
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/m;->d()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    .line 84
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/m;->c()Lcom/criteo/publisher/model/b0/o;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 95
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 97
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 99
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeAdvertiser{domain="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoClickUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->c:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/a;->d:Lcom/criteo/publisher/model/b0/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
