.class Lcom/criteo/publisher/f0/l$e;
.super Lcom/criteo/publisher/x;
.source "CsmBidLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/criteo/publisher/model/s;

.field final synthetic d:Lcom/criteo/publisher/f0/l;


# direct methods
.method public static synthetic $r8$lambda$c-8Azmq4RLjcp1tQ1-cL5NPoT4Y(ZJLcom/criteo/publisher/f0/n$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/criteo/publisher/f0/l$e;->a(ZJLcom/criteo/publisher/f0/n$a;)V

    return-void
.end method

.method constructor <init>(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/s;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/criteo/publisher/f0/l$e;->d:Lcom/criteo/publisher/f0/l;

    iput-object p2, p0, Lcom/criteo/publisher/f0/l$e;->c:Lcom/criteo/publisher/model/s;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method

.method private static synthetic a(ZJLcom/criteo/publisher/f0/n$a;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 256
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/criteo/publisher/f0/n$a;->c(Ljava/lang/Long;)Lcom/criteo/publisher/f0/n$a;

    :cond_0
    const/4 p0, 0x1

    .line 259
    invoke-virtual {p3, p0}, Lcom/criteo/publisher/f0/n$a;->c(Z)Lcom/criteo/publisher/f0/n$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/criteo/publisher/f0/l$e;->c:Lcom/criteo/publisher/model/s;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/s;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/criteo/publisher/f0/l$e;->c:Lcom/criteo/publisher/model/s;

    iget-object v2, p0, Lcom/criteo/publisher/f0/l$e;->d:Lcom/criteo/publisher/f0/l;

    invoke-static {v2}, Lcom/criteo/publisher/f0/l;->c(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/model/s;->a(Lcom/criteo/publisher/i;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 252
    iget-object v2, p0, Lcom/criteo/publisher/f0/l$e;->d:Lcom/criteo/publisher/f0/l;

    invoke-static {v2}, Lcom/criteo/publisher/f0/l;->c(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v2

    .line 254
    iget-object v4, p0, Lcom/criteo/publisher/f0/l$e;->d:Lcom/criteo/publisher/f0/l;

    invoke-static {v4}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/r;

    move-result-object v4

    new-instance v5, Lcom/criteo/publisher/f0/l$e$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v2, v3}, Lcom/criteo/publisher/f0/l$e$$ExternalSyntheticLambda0;-><init>(ZJ)V

    invoke-virtual {v4, v0, v5}, Lcom/criteo/publisher/f0/r;->a(Ljava/lang/String;Lcom/criteo/publisher/f0/r$a;)V

    .line 262
    iget-object v1, p0, Lcom/criteo/publisher/f0/l$e;->d:Lcom/criteo/publisher/f0/l;

    invoke-static {v1}, Lcom/criteo/publisher/f0/l;->b(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/x;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/f0/l$e;->d:Lcom/criteo/publisher/f0/l;

    invoke-static {v2}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/r;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/criteo/publisher/f0/x;->a(Lcom/criteo/publisher/f0/r;Ljava/lang/String;)V

    return-void
.end method
