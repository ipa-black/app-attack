.class Lcom/criteo/publisher/f0/i;
.super Lcom/criteo/publisher/f0/r;
.source "BoundedMetricRepository.java"


# instance fields
.field private final a:Lcom/criteo/publisher/f0/r;

.field private final b:Lcom/criteo/publisher/n0/g;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f0/r;Lcom/criteo/publisher/n0/g;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/criteo/publisher/f0/r;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/criteo/publisher/f0/i;->a:Lcom/criteo/publisher/f0/r;

    .line 36
    iput-object p2, p0, Lcom/criteo/publisher/f0/i;->b:Lcom/criteo/publisher/n0/g;

    return-void
.end method


# virtual methods
.method a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/criteo/publisher/f0/n;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/criteo/publisher/f0/i;->a:Lcom/criteo/publisher/f0/r;

    invoke-virtual {v0}, Lcom/criteo/publisher/f0/r;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Lcom/criteo/publisher/f0/p;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/criteo/publisher/f0/i;->a:Lcom/criteo/publisher/f0/r;

    invoke-virtual {v0, p1, p2}, Lcom/criteo/publisher/f0/r;->a(Ljava/lang/String;Lcom/criteo/publisher/f0/p;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/criteo/publisher/f0/r$a;)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/i;->b()I

    move-result v0

    iget-object v1, p0, Lcom/criteo/publisher/f0/i;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v1}, Lcom/criteo/publisher/n0/g;->l()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/f0/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f0/i;->a:Lcom/criteo/publisher/f0/r;

    invoke-virtual {v0, p1, p2}, Lcom/criteo/publisher/f0/r;->a(Ljava/lang/String;Lcom/criteo/publisher/f0/r$a;)V

    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/criteo/publisher/f0/i;->a:Lcom/criteo/publisher/f0/r;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/f0/r;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method b()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/f0/i;->a:Lcom/criteo/publisher/f0/r;

    invoke-virtual {v0}, Lcom/criteo/publisher/f0/r;->b()I

    move-result v0

    return v0
.end method
