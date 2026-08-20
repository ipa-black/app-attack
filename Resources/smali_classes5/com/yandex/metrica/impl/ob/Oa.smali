.class public Lcom/yandex/metrica/impl/ob/Oa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/Converter<",
        "Lcom/yandex/metrica/impl/ob/bb;",
        "Lcom/yandex/metrica/impl/ob/Na<",
        "Lcom/yandex/metrica/impl/ob/mf$n;",
        "Lcom/yandex/metrica/impl/ob/Vm;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ha;

.field private final b:Lcom/yandex/metrica/impl/ob/Da;

.field private final c:Lcom/yandex/metrica/impl/ob/kn;

.field private final d:Lcom/yandex/metrica/impl/ob/kn;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ha;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ha;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Da;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Da;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/kn;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/kn;-><init>(I)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Oa;-><init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Da;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ha;Lcom/yandex/metrica/impl/ob/Da;Lcom/yandex/metrica/impl/ob/kn;Lcom/yandex/metrica/impl/ob/kn;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Oa;->a:Lcom/yandex/metrica/impl/ob/Ha;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Oa;->b:Lcom/yandex/metrica/impl/ob/Da;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Oa;->c:Lcom/yandex/metrica/impl/ob/kn;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Oa;->d:Lcom/yandex/metrica/impl/ob/kn;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/bb;)Lcom/yandex/metrica/impl/ob/Na;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/bb;",
            ")",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf$n;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf$n;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf$n;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Oa;->c:Lcom/yandex/metrica/impl/ob/kn;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/bb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf$n;->a:[B

    .line 7
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/bb;->b:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 8
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Oa;->b:Lcom/yandex/metrica/impl/ob/Da;

    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/Da;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object v2

    .line 9
    iget-object v4, v2, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v4, Lcom/yandex/metrica/impl/ob/mf$d;

    iput-object v4, v0, Lcom/yandex/metrica/impl/ob/mf$n;->b:Lcom/yandex/metrica/impl/ob/mf$d;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 12
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Oa;->d:Lcom/yandex/metrica/impl/ob/kn;

    iget-object v5, p1, Lcom/yandex/metrica/impl/ob/bb;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/kn;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gn;

    move-result-object v4

    .line 14
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/gn;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v0, Lcom/yandex/metrica/impl/ob/mf$n;->c:[B

    .line 17
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/bb;->d:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 18
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Oa;->a:Lcom/yandex/metrica/impl/ob/Ha;

    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/Ha;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object v3

    .line 19
    iget-object p1, v3, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/metrica/impl/ob/mf$i;

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/mf$n;->d:Lcom/yandex/metrica/impl/ob/mf$i;

    :cond_1
    const/4 p1, 0x4

    .line 22
    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/Vm;

    const/4 v5, 0x0

    aput-object v1, p1, v5

    const/4 v1, 0x1

    aput-object v2, p1, v1

    const/4 v1, 0x2

    aput-object v4, p1, v1

    const/4 v1, 0x3

    aput-object v3, p1, v1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    move-result-object p1

    .line 41
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/bb;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Oa;->a(Lcom/yandex/metrica/impl/ob/bb;)Lcom/yandex/metrica/impl/ob/Na;

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
