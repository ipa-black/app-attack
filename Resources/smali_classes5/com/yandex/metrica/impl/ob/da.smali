.class public Lcom/yandex/metrica/impl/ob/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/wl;",
        "Lcom/yandex/metrica/impl/ob/If$w;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ba;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ba;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ba;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/da;-><init>(Lcom/yandex/metrica/impl/ob/ba;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ba;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/da;->a:Lcom/yandex/metrica/impl/ob/ba;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/wl;)Lcom/yandex/metrica/impl/ob/If$w;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$w;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$w;-><init>()V

    .line 4
    iget v1, p1, Lcom/yandex/metrica/impl/ob/wl;->a:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    .line 5
    iget v1, p1, Lcom/yandex/metrica/impl/ob/wl;->b:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    .line 6
    iget v1, p1, Lcom/yandex/metrica/impl/ob/wl;->c:I

    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    .line 7
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/wl;->d:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    .line 8
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/wl;->e:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    .line 9
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/wl;->f:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    .line 10
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/wl;->g:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/da;->a:Lcom/yandex/metrica/impl/ob/ba;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/wl;->h:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/ba;->a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/If$y;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$w;)Lcom/yandex/metrica/impl/ob/wl;
    .locals 11

    .line 12
    new-instance v10, Lcom/yandex/metrica/impl/ob/wl;

    iget v1, p1, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    iget v2, p1, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    iget v3, p1, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    iget-boolean v6, p1, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    iget-boolean v7, p1, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    iget-boolean v8, p1, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/da;->a:Lcom/yandex/metrica/impl/ob/ba;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 20
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ba;->a([Lcom/yandex/metrica/impl/ob/If$y;)Ljava/util/List;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/yandex/metrica/impl/ob/wl;-><init>(IIIJZZZLjava/util/List;)V

    return-object v10
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/wl;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/da;->a(Lcom/yandex/metrica/impl/ob/wl;)Lcom/yandex/metrica/impl/ob/If$w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$w;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/da;->a(Lcom/yandex/metrica/impl/ob/If$w;)Lcom/yandex/metrica/impl/ob/wl;

    move-result-object p1

    return-object p1
.end method
