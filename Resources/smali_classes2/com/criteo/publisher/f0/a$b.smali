.class Lcom/criteo/publisher/f0/a$b;
.super Lcom/criteo/publisher/f0/n$a;
.source "$AutoValue_Metric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/criteo/publisher/f0/n$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/criteo/publisher/f0/n;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/criteo/publisher/f0/n$a;-><init>()V

    .line 194
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->c()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/a$b;->a:Ljava/lang/Long;

    .line 195
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->b()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/a$b;->b:Ljava/lang/Long;

    .line 196
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/a$b;->c:Ljava/lang/Boolean;

    .line 197
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/a$b;->d:Ljava/lang/Boolean;

    .line 198
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->d()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/a$b;->e:Ljava/lang/Long;

    .line 199
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/a$b;->f:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/a$b;->g:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->h()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/a$b;->h:Ljava/lang/Integer;

    .line 202
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->f()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/a$b;->i:Ljava/lang/Integer;

    .line 203
    invoke-virtual {p1}, Lcom/criteo/publisher/f0/n;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->j:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/criteo/publisher/f0/n;Lcom/criteo/publisher/f0/a$a;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f0/a$b;-><init>(Lcom/criteo/publisher/f0/n;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Integer;)Lcom/criteo/publisher/f0/n$a;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method a(Ljava/lang/Long;)Lcom/criteo/publisher/f0/n$a;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->b:Ljava/lang/Long;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/criteo/publisher/f0/n$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 235
    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->f:Ljava/lang/String;

    return-object p0

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null impressionId"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Z)Lcom/criteo/publisher/f0/n$a;
    .locals 0

    .line 222
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method a()Lcom/criteo/publisher/f0/n;
    .locals 13

    .line 261
    iget-object v0, p0, Lcom/criteo/publisher/f0/a$b;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 262
    const-string v0, " cdbCallTimeout"

    goto :goto_0

    .line 261
    :cond_0
    const-string v0, ""

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/f0/a$b;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cachedBidUsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/criteo/publisher/f0/a$b;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " impressionId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/criteo/publisher/f0/a$b;->j:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readyToSend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    new-instance v0, Lcom/criteo/publisher/f0/e;

    iget-object v3, p0, Lcom/criteo/publisher/f0/a$b;->a:Ljava/lang/Long;

    iget-object v4, p0, Lcom/criteo/publisher/f0/a$b;->b:Ljava/lang/Long;

    iget-object v1, p0, Lcom/criteo/publisher/f0/a$b;->c:Ljava/lang/Boolean;

    .line 279
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v1, p0, Lcom/criteo/publisher/f0/a$b;->d:Ljava/lang/Boolean;

    .line 280
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/criteo/publisher/f0/a$b;->e:Ljava/lang/Long;

    iget-object v8, p0, Lcom/criteo/publisher/f0/a$b;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/criteo/publisher/f0/a$b;->g:Ljava/lang/String;

    iget-object v10, p0, Lcom/criteo/publisher/f0/a$b;->h:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/criteo/publisher/f0/a$b;->i:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/criteo/publisher/f0/a$b;->j:Ljava/lang/Boolean;

    .line 286
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/criteo/publisher/f0/e;-><init>(Ljava/lang/Long;Ljava/lang/Long;ZZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-object v0

    .line 274
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

.method b(Ljava/lang/Integer;)Lcom/criteo/publisher/f0/n$a;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method b(Ljava/lang/Long;)Lcom/criteo/publisher/f0/n$a;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method b(Ljava/lang/String;)Lcom/criteo/publisher/f0/n$a;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method b(Z)Lcom/criteo/publisher/f0/n$a;
    .locals 0

    .line 217
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method c(Ljava/lang/Long;)Lcom/criteo/publisher/f0/n$a;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method c(Z)Lcom/criteo/publisher/f0/n$a;
    .locals 0

    .line 255
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/f0/a$b;->j:Ljava/lang/Boolean;

    return-object p0
.end method
