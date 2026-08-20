.class Lcom/criteo/publisher/model/b0/b$a;
.super Lcom/criteo/publisher/model/b0/n$a;
.source "$AutoValue_NativeAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/b0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/criteo/publisher/model/b0/m;

.field private c:Lcom/criteo/publisher/model/b0/q;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/criteo/publisher/model/b0/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/criteo/publisher/model/b0/m;)Lcom/criteo/publisher/model/b0/n$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/b$a;->b:Lcom/criteo/publisher/model/b0/m;

    return-object p0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null advertiser"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/criteo/publisher/model/b0/q;)Lcom/criteo/publisher/model/b0/n$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/b$a;->c:Lcom/criteo/publisher/model/b0/q;

    return-object p0

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null privacy"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/util/List;)Lcom/criteo/publisher/model/b0/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;)",
            "Lcom/criteo/publisher/model/b0/n$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 118
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/b$a;->a:Ljava/util/List;

    return-object p0

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null nativeProducts"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a()Lcom/criteo/publisher/model/b0/n;
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b$a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 163
    const-string v0, " nativeProducts"

    goto :goto_0

    .line 162
    :cond_0
    const-string v0, ""

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b$a;->b:Lcom/criteo/publisher/model/b0/m;

    if-nez v1, :cond_1

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " advertiser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b$a;->c:Lcom/criteo/publisher/model/b0/q;

    if-nez v1, :cond_2

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b$a;->d:Ljava/util/List;

    if-nez v1, :cond_3

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    new-instance v0, Lcom/criteo/publisher/model/b0/h;

    iget-object v1, p0, Lcom/criteo/publisher/model/b0/b$a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/criteo/publisher/model/b0/b$a;->b:Lcom/criteo/publisher/model/b0/m;

    iget-object v3, p0, Lcom/criteo/publisher/model/b0/b$a;->c:Lcom/criteo/publisher/model/b0/q;

    iget-object v4, p0, Lcom/criteo/publisher/model/b0/b$a;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/criteo/publisher/model/b0/h;-><init>(Ljava/util/List;Lcom/criteo/publisher/model/b0/m;Lcom/criteo/publisher/model/b0/q;Ljava/util/List;)V

    return-object v0

    .line 175
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing required properties:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method b(Ljava/util/List;)Lcom/criteo/publisher/model/b0/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;)",
            "Lcom/criteo/publisher/model/b0/n$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 149
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/b$a;->d:Ljava/util/List;

    return-object p0

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null pixels"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"nativeProducts\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/b$a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"pixels\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
