.class public Lcom/yandex/metrica/impl/ob/Wd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/Ud;",
        "Lcom/yandex/metrica/impl/ob/Cf;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fe;

.field private final b:Lcom/yandex/metrica/impl/ob/Sd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/fe;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/fe;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/Sd;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Sd;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Wd;-><init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/Sd;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/Sd;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Wd;->a:Lcom/yandex/metrica/impl/ob/fe;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Wd;->b:Lcom/yandex/metrica/impl/ob/Sd;

    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Ud;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/Cf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Cf;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Wd;->a:Lcom/yandex/metrica/impl/ob/fe;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/Ud;->a:Lcom/yandex/metrica/impl/ob/ee;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/fe;->a(Lcom/yandex/metrica/impl/ob/ee;)Lcom/yandex/metrica/impl/ob/Cf$a;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Cf;->a:Lcom/yandex/metrica/impl/ob/Cf$a;

    .line 4
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Ud;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/Cf$b;

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Cf;->b:[Lcom/yandex/metrica/impl/ob/Cf$b;

    .line 6
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Ud;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/Ud$a;

    .line 7
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Cf;->b:[Lcom/yandex/metrica/impl/ob/Cf$b;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Wd;->b:Lcom/yandex/metrica/impl/ob/Sd;

    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/Sd;->a(Lcom/yandex/metrica/impl/ob/Ud$a;)Lcom/yandex/metrica/impl/ob/Cf$b;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Cf;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Cf;->b:[Lcom/yandex/metrica/impl/ob/Cf$b;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Cf;->b:[Lcom/yandex/metrica/impl/ob/Cf$b;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Wd;->b:Lcom/yandex/metrica/impl/ob/Sd;

    invoke-virtual {v5, v4}, Lcom/yandex/metrica/impl/ob/Sd;->a(Lcom/yandex/metrica/impl/ob/Cf$b;)Lcom/yandex/metrica/impl/ob/Ud$a;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ud;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Cf;->a:Lcom/yandex/metrica/impl/ob/Cf$a;

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Wd;->a:Lcom/yandex/metrica/impl/ob/fe;

    new-instance v2, Lcom/yandex/metrica/impl/ob/Cf$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Cf$a;-><init>()V

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/fe;->a(Lcom/yandex/metrica/impl/ob/Cf$a;)Lcom/yandex/metrica/impl/ob/ee;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Wd;->a:Lcom/yandex/metrica/impl/ob/fe;

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/fe;->a(Lcom/yandex/metrica/impl/ob/Cf$a;)Lcom/yandex/metrica/impl/ob/ee;

    move-result-object p1

    .line 10
    :goto_1
    invoke-direct {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/Ud;-><init>(Lcom/yandex/metrica/impl/ob/ee;Ljava/util/List;)V

    return-object v1
.end method
