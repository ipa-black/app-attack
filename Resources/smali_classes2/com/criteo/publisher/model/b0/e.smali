.class abstract Lcom/criteo/publisher/model/b0/e;
.super Lcom/criteo/publisher/model/b0/q;
.source "$AutoValue_NativePrivacy.java"


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Ljava/net/URL;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/criteo/publisher/model/b0/q;-><init>()V

    if-eqz p1, :cond_2

    .line 24
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/e;->a:Ljava/net/URI;

    if-eqz p2, :cond_1

    .line 28
    iput-object p2, p0, Lcom/criteo/publisher/model/b0/e;->b:Ljava/net/URL;

    if-eqz p3, :cond_0

    .line 32
    iput-object p3, p0, Lcom/criteo/publisher/model/b0/e;->c:Ljava/lang/String;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null legalText"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null imageUrl"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null clickUrl"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()Ljava/net/URI;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "optoutClickUrl"
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/e;->a:Ljava/net/URI;

    return-object v0
.end method

.method b()Ljava/net/URL;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "optoutImageUrl"
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/e;->b:Ljava/net/URL;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longLegalText"
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lcom/criteo/publisher/model/b0/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 71
    check-cast p1, Lcom/criteo/publisher/model/b0/q;

    .line 72
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/e;->a:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/q;->a()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/e;->b:Ljava/net/URL;

    .line 73
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/q;->b()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/e;->c:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/q;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 83
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/e;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 85
    iget-object v2, p0, Lcom/criteo/publisher/model/b0/e;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/e;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativePrivacy{clickUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/e;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/e;->b:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", legalText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
