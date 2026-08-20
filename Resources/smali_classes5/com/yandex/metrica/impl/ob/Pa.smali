.class public Lcom/yandex/metrica/impl/ob/Pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Fa<",
        "Lcom/yandex/metrica/impl/ob/cb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Oa;

.field private final b:Lcom/yandex/metrica/impl/ob/Ja;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Oa;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Oa;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Ja;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Ja;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Pa;-><init>(Lcom/yandex/metrica/impl/ob/Oa;Lcom/yandex/metrica/impl/ob/Ja;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Oa;Lcom/yandex/metrica/impl/ob/Ja;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Pa;->a:Lcom/yandex/metrica/impl/ob/Oa;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Pa;->b:Lcom/yandex/metrica/impl/ob/Ja;

    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/cb;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 4
    new-instance v2, Lcom/yandex/metrica/impl/ob/mf$o;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/mf$o;-><init>()V

    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

    .line 6
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Pa;->a:Lcom/yandex/metrica/impl/ob/Oa;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/bb;

    .line 7
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Oa;->a(Lcom/yandex/metrica/impl/ob/bb;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object v2

    .line 8
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

    iget-object v4, v2, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v4, Lcom/yandex/metrica/impl/ob/mf$n;

    iput-object v4, v3, Lcom/yandex/metrica/impl/ob/mf$o;->b:Lcom/yandex/metrica/impl/ob/mf$n;

    .line 10
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Pa;->b:Lcom/yandex/metrica/impl/ob/Ja;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ob/Ya;

    .line 11
    invoke-virtual {v3, p1}, Lcom/yandex/metrica/impl/ob/Ja;->a(Lcom/yandex/metrica/impl/ob/Ya;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object p1

    .line 12
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/mf;->c:Lcom/yandex/metrica/impl/ob/mf$o;

    iget-object v4, p1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v4, Lcom/yandex/metrica/impl/ob/mf$k;

    iput-object v4, v3, Lcom/yandex/metrica/impl/ob/mf$o;->a:Lcom/yandex/metrica/impl/ob/mf$k;

    .line 14
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/Vm;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    move-result-object p1

    .line 25
    new-instance v1, Lcom/yandex/metrica/impl/ob/Na;

    invoke-direct {v1, v0, p1}, Lcom/yandex/metrica/impl/ob/Na;-><init>(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/Vm;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
