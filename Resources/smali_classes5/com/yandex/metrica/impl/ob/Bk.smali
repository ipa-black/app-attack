.class Lcom/yandex/metrica/impl/ob/Bk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/Bk$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ak;

.field private final b:Lcom/yandex/metrica/impl/ob/Ak;

.field private final c:Lcom/yandex/metrica/impl/ob/Ak;

.field private final d:Lcom/yandex/metrica/impl/ob/Ak;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/Ak;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Bk;->a:Lcom/yandex/metrica/impl/ob/Ak;

    .line 20
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Bk;->b:Lcom/yandex/metrica/impl/ob/Ak;

    .line 21
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Bk;->c:Lcom/yandex/metrica/impl/ob/Ak;

    .line 22
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Bk;->d:Lcom/yandex/metrica/impl/ob/Ak;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/zk;Lcom/yandex/metrica/impl/ob/fl;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ak;

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/zk;->c()Lcom/yandex/metrica/impl/ob/yk;

    move-result-object v1

    iget-object v2, p2, Lcom/yandex/metrica/impl/ob/fl;->e:Lcom/yandex/metrica/impl/ob/wl;

    .line 4
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Bk;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Ak;-><init>(Lcom/yandex/metrica/impl/ob/yk;I)V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ak;

    .line 7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/zk;->b()Lcom/yandex/metrica/impl/ob/yk;

    move-result-object v2

    iget-object v3, p2, Lcom/yandex/metrica/impl/ob/fl;->f:Lcom/yandex/metrica/impl/ob/hl;

    .line 8
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Bk;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Ak;-><init>(Lcom/yandex/metrica/impl/ob/yk;I)V

    new-instance v2, Lcom/yandex/metrica/impl/ob/Ak;

    .line 11
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/zk;->d()Lcom/yandex/metrica/impl/ob/yk;

    move-result-object v3

    iget-object v4, p2, Lcom/yandex/metrica/impl/ob/fl;->h:Lcom/yandex/metrica/impl/ob/hl;

    .line 12
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/Bk;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Ak;-><init>(Lcom/yandex/metrica/impl/ob/yk;I)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/Ak;

    .line 15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/zk;->a()Lcom/yandex/metrica/impl/ob/yk;

    move-result-object p1

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/fl;->g:Lcom/yandex/metrica/impl/ob/hl;

    .line 16
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/Bk;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {v3, p1, p2}, Lcom/yandex/metrica/impl/ob/Ak;-><init>(Lcom/yandex/metrica/impl/ob/yk;I)V

    .line 17
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Bk;-><init>(Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/Ak;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method a()Lcom/yandex/metrica/impl/ob/Ak;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bk;->d:Lcom/yandex/metrica/impl/ob/Ak;

    return-object v0
.end method

.method b()Lcom/yandex/metrica/impl/ob/Ak;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bk;->b:Lcom/yandex/metrica/impl/ob/Ak;

    return-object v0
.end method

.method c()Lcom/yandex/metrica/impl/ob/Ak;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bk;->a:Lcom/yandex/metrica/impl/ob/Ak;

    return-object v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/Ak;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Bk;->c:Lcom/yandex/metrica/impl/ob/Ak;

    return-object v0
.end method
