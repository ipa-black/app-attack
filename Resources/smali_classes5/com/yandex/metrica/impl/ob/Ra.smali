.class public Lcom/yandex/metrica/impl/ob/Ra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Fa<",
        "Lcom/yandex/metrica/impl/ob/eb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Oa;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Oa;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Oa;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Ra;-><init>(Lcom/yandex/metrica/impl/ob/Oa;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Oa;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ra;->a:Lcom/yandex/metrica/impl/ob/Oa;

    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/eb;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/mf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/mf;-><init>()V

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lcom/yandex/metrica/impl/ob/mf;->a:I

    .line 4
    new-instance v2, Lcom/yandex/metrica/impl/ob/mf$q;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/mf$q;-><init>()V

    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    .line 6
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ra;->a:Lcom/yandex/metrica/impl/ob/Oa;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/eb;->b:Lcom/yandex/metrica/impl/ob/bb;

    .line 7
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/Oa;->a(Lcom/yandex/metrica/impl/ob/bb;)Lcom/yandex/metrica/impl/ob/Na;

    move-result-object p1

    .line 8
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/mf$q;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    check-cast v3, Lcom/yandex/metrica/impl/ob/mf$n;

    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/mf$q;->a:Lcom/yandex/metrica/impl/ob/mf$n;

    .line 10
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/Vm;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Um;->a([Lcom/yandex/metrica/impl/ob/Vm;)Lcom/yandex/metrica/impl/ob/Vm;

    move-result-object p1

    .line 20
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
