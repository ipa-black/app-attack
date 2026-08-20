.class public Lcom/yandex/metrica/impl/ob/Ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/Converter<",
        "Lcom/yandex/metrica/impl/ob/Ua;",
        "Lcom/yandex/metrica/impl/ob/Na<",
        "Lcom/yandex/metrica/impl/ob/mf$c;",
        "Lcom/yandex/metrica/impl/ob/Vm;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ja;

.field private final b:Lcom/yandex/metrica/impl/ob/Ea;

.field private final c:Lcom/yandex/metrica/impl/ob/Ia;

.field private final d:Lcom/yandex/metrica/impl/ob/Ma;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ja;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ja;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ea;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ea;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/Ia;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Ia;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/Ma;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Ma;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Ca;-><init>(Lcom/yandex/metrica/impl/ob/Ja;Lcom/yandex/metrica/impl/ob/Ea;Lcom/yandex/metrica/impl/ob/Ia;Lcom/yandex/metrica/impl/ob/Ma;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ja;Lcom/yandex/metrica/impl/ob/Ea;Lcom/yandex/metrica/impl/ob/Ia;Lcom/yandex/metrica/impl/ob/Ma;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ca;->a:Lcom/yandex/metrica/impl/ob/Ja;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ca;->b:Lcom/yandex/metrica/impl/ob/Ea;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ca;->c:Lcom/yandex/metrica/impl/ob/Ia;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ca;->d:Lcom/yandex/metrica/impl/ob/Ma;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Ua;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Ua;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$c;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$c;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$c;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ca;->a:Lcom/yandex/metrica/impl/ob/Ja;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Ua;->a:Lcom/yandex/metrica/impl/ob/Ya;

    .line 4
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Ja;->a(Lcom/yandex/metrica/impl/ob/Ya;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v2, Lcom/yandex/metrica/impl/ob/mf$k;

    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$c;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 7
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ca;->b:Lcom/yandex/metrica/impl/ob/Ea;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Ua;->b:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Ea;->a(Ljava/math/BigDecimal;)Lcom/yandex/metrica/impl/ob/mf$e;

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$c;->c:Lcom/yandex/metrica/impl/ob/mf$e;

    .line 9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ca;->c:Lcom/yandex/metrica/impl/ob/Ia;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Ua;->c:Lcom/yandex/metrica/impl/ob/Xa;

    .line 10
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Ia;->a(Lcom/yandex/metrica/impl/ob/Xa;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object v2

    .line 11
    iget-object v3, v2, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$j;

    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$c;->d:Lcom/yandex/metrica/impl/ob/mf$j;

    .line 14
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Ua;->d:Lcom/yandex/metrica/impl/ob/ab;

    if-eqz p1, :cond_0

    .line 15
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Ca;->d:Lcom/yandex/metrica/impl/ob/Ma;

    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/Ma;->a(Lcom/yandex/metrica/impl/ob/ab;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object p1

    .line 16
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$m;

    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$c;->b:Lcom/yandex/metrica/impl/ob/mf$m;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x3

    .line 19
    new-array v3, v3, [Lcom/yandex/metrica/impl/ob/Vm;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    .line 20
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    move-result-object p1

    .line 31
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Ua;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Ca;->a(Lcom/yandex/metrica/impl/ob/Ua;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object p1

    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Na;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
