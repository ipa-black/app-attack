.class public Lcom/yandex/metrica/impl/ob/Ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/Converter<",
        "Lcom/yandex/metrica/impl/ob/ab;",
        "Lcom/yandex/metrica/impl/ob/Na<",
        "Lcom/yandex/metrica/impl/ob/mf$m;",
        "Lcom/yandex/metrica/impl/ob/Vm;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Oa;

.field private final b:Lcom/yandex/metrica/impl/ob/kn;

.field private final c:Lcom/yandex/metrica/impl/ob/kn;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Oa;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Oa;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    new-instance v2, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Ma;-><init>(Lcom/yandex/metrica/impl/ob/Oa;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Oa;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ma;->a:Lcom/yandex/metrica/impl/ob/Oa;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ma;->b:Lcom/yandex/metrica/impl/ob/kn;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ma;->c:Lcom/yandex/metrica/impl/ob/kn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ab;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/ab;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$m;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$m;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$m;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ma;->b:Lcom/yandex/metrica/impl/ob/kn;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$m;->a:[B

    .line 6
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ma;->c:Lcom/yandex/metrica/impl/ob/kn;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/ab;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    move-result-object v2

    .line 7
    iget-object v3, v2, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$m;->b:[B

    .line 10
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ab;->c:Lcom/yandex/metrica/impl/ob/bb;

    if-eqz p1, :cond_0

    .line 11
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Ma;->a:Lcom/yandex/metrica/impl/ob/Oa;

    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/Oa;->a(Lcom/yandex/metrica/impl/ob/bb;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object p1

    .line 12
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$n;

    iput-object v3, v0, Lcom/yandex/metrica/impl/ob/mf$m;->c:Lcom/yandex/metrica/impl/ob/mf$n;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x3

    .line 15
    new-array v3, v3, [Lcom/yandex/metrica/impl/ob/Vm;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    .line 16
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    move-result-object p1

    .line 27
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/ab;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Ma;->a(Lcom/yandex/metrica/impl/ob/ab;)Lcom/yandex/metrica/impl/ob/Na;

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
