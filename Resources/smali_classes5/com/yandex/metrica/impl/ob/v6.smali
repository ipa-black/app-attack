.class public Lcom/yandex/metrica/impl/ob/v6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/N6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/N6;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/N6;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/v6;-><init>(Lcom/yandex/metrica/impl/ob/N6;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/N6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/v6;->a:Lcom/yandex/metrica/impl/ob/N6;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/H6;Lcom/yandex/metrica/impl/ob/Q1;)Lcom/yandex/metrica/impl/ob/U1$f;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/H6;->a:Lcom/yandex/metrica/impl/ob/F6;

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F6;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/v6;->a:Lcom/yandex/metrica/impl/ob/N6;

    .line 7
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/N6;->a(Lcom/yandex/metrica/impl/ob/H6;)[B

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v0

    .line 9
    sget-object v2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 308
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->G:Lcom/yandex/metrica/impl/ob/a1;

    .line 309
    new-instance v3, Lcom/yandex/metrica/impl/ob/J;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v2

    invoke-direct {v3, p1, v1, v2, v0}, Lcom/yandex/metrica/impl/ob/J;-><init>([BLjava/lang/String;ILcom/yandex/metrica/impl/ob/cm;)V

    .line 310
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Q1;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/c0;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 311
    new-instance p1, Lcom/yandex/metrica/impl/ob/U1$f;

    invoke-direct {p1, v3, p2}, Lcom/yandex/metrica/impl/ob/U1$f;-><init>(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 312
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/J;->t()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Ljava/util/HashMap;)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/U1$f;->a(Z)Lcom/yandex/metrica/impl/ob/U1$f;

    move-result-object p1

    return-object p1
.end method
