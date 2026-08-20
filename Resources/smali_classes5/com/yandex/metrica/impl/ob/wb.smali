.class public Lcom/yandex/metrica/impl/ob/wb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/vb;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/vb;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/vb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/wb;->a:Lcom/yandex/metrica/impl/ob/vb;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/qm;)Lcom/yandex/metrica/impl/ob/ub;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/qm<",
            "Lcom/yandex/metrica/impl/ob/ub;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/ub;"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/qm;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/ub;

    .line 6
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ub;->a:Lcom/yandex/metrica/impl/ob/tb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/tb;->b:Ljava/lang/String;

    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lcom/yandex/metrica/impl/ob/ub;

    sget-object v0, Lcom/yandex/metrica/impl/ob/U0;->d:Lcom/yandex/metrica/impl/ob/U0;

    const/4 v1, 0x0

    const-string v2, "AdvId is invalid: 00000000-0000-0000-0000-000000000000"

    invoke-direct {p1, v1, v0, v2}, Lcom/yandex/metrica/impl/ob/ub;-><init>(Lcom/yandex/metrica/impl/ob/tb;Lcom/yandex/metrica/impl/ob/U0;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/wb;)Lcom/yandex/metrica/impl/ob/vb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/wb;->a:Lcom/yandex/metrica/impl/ob/vb;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ub;
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/wb$a;

    invoke-direct {v0, p0, p1}, Lcom/yandex/metrica/impl/ob/wb$a;-><init>(Lcom/yandex/metrica/impl/ob/wb;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/wb;->a(Lcom/yandex/metrica/impl/ob/qm;)Lcom/yandex/metrica/impl/ob/ub;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Gb;)Lcom/yandex/metrica/impl/ob/ub;
    .locals 1

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/wb$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/wb$b;-><init>(Lcom/yandex/metrica/impl/ob/wb;Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Gb;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/wb;->a(Lcom/yandex/metrica/impl/ob/qm;)Lcom/yandex/metrica/impl/ob/ub;

    move-result-object p1

    return-object p1
.end method
