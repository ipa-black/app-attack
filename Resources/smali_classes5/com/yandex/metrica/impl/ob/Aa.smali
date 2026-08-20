.class public Lcom/yandex/metrica/impl/ob/Aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/Converter<",
        "Lcom/yandex/metrica/impl/ob/Sa;",
        "Lcom/yandex/metrica/impl/ob/Na<",
        "Lcom/yandex/metrica/impl/ob/mf$a;",
        "Lcom/yandex/metrica/impl/ob/Vm;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ea;

.field private final b:Lcom/yandex/metrica/impl/ob/kn;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ea;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ea;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Aa;-><init>(Lcom/yandex/metrica/impl/ob/Ea;Lcom/yandex/metrica/impl/ob/kn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ea;Lcom/yandex/metrica/impl/ob/kn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Aa;->a:Lcom/yandex/metrica/impl/ob/Ea;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Aa;->b:Lcom/yandex/metrica/impl/ob/kn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Sa;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Sa;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$a;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$a;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Aa;->a:Lcom/yandex/metrica/impl/ob/Ea;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Sa;->a:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Ea;->a(Ljava/math/BigDecimal;)Lcom/yandex/metrica/impl/ob/mf$e;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mf$a;->b:Lcom/yandex/metrica/impl/ob/mf$e;

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Aa;->b:Lcom/yandex/metrica/impl/ob/kn;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Sa;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    move-result-object p1

    .line 6
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/mf$a;->a:[B

    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/Vm;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    move-result-object p1

    .line 16
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Sa;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Aa;->a(Lcom/yandex/metrica/impl/ob/Sa;)Lcom/yandex/metrica/impl/ob/Na;

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
