.class public Lcom/criteo/publisher/d0/a;
.super Ljava/lang/Object;
.source "SdkCache.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/criteo/publisher/model/n;",
            "Lcom/criteo/publisher/model/s;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/n0/k;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/n0/k;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/d0/a;->a:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/criteo/publisher/d0/a;->b:Lcom/criteo/publisher/n0/k;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/AdSize;
    .locals 2

    .line 85
    new-instance v0, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/AdSize;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/criteo/publisher/model/AdSize;->getWidth()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    return-object v0
.end method

.method private c(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/n0/a;
    .locals 4

    .line 65
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object p1, Lcom/criteo/publisher/n0/a;->c:Lcom/criteo/publisher/n0/a;

    return-object p1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object p1, Lcom/criteo/publisher/n0/a;->d:Lcom/criteo/publisher/n0/a;

    return-object p1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/d0/a;->b:Lcom/criteo/publisher/n0/k;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/k;->a()Lcom/criteo/publisher/model/AdSize;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lcom/criteo/publisher/d0/a;->a(Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/AdSize;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->k()I

    move-result v3

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->e()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    .line 76
    invoke-virtual {v2, v0}, Lcom/criteo/publisher/model/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v2, v1}, Lcom/criteo/publisher/model/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 80
    :cond_2
    sget-object p1, Lcom/criteo/publisher/n0/a;->a:Lcom/criteo/publisher/n0/a;

    return-object p1

    .line 77
    :cond_3
    :goto_0
    sget-object p1, Lcom/criteo/publisher/n0/a;->b:Lcom/criteo/publisher/n0/a;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/s;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/criteo/publisher/d0/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/criteo/publisher/model/s;

    return-object p1
.end method

.method public a(Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/d0/a;->b(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/criteo/publisher/d0/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/n;
    .locals 5

    .line 54
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/d0/a;->c(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/n0/a;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/criteo/publisher/model/n;

    new-instance v3, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->k()I

    move-result v4

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->e()I

    move-result p1

    invoke-direct {v3, v4, p1}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    invoke-direct {v2, v3, v0, v1}, Lcom/criteo/publisher/model/n;-><init>(Lcom/criteo/publisher/model/AdSize;Ljava/lang/String;Lcom/criteo/publisher/n0/a;)V

    return-object v2
.end method

.method public b(Lcom/criteo/publisher/model/n;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/criteo/publisher/d0/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
