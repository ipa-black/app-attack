.class public Lcom/yandex/metrica/impl/ob/A9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/ra;",
        "Lcom/yandex/metrica/impl/ob/If$f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/z9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/z9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/z9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/A9;-><init>(Lcom/yandex/metrica/impl/ob/z9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/z9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/A9;->a:Lcom/yandex/metrica/impl/ob/z9;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/qa;)Lcom/yandex/metrica/impl/ob/If$e;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A9;->a:Lcom/yandex/metrica/impl/ob/z9;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$e;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$e;-><init>()V

    .line 36
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/qa;->a:J

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$e;->a:J

    .line 37
    iget p1, p1, Lcom/yandex/metrica/impl/ob/qa;->b:I

    iput p1, v0, Lcom/yandex/metrica/impl/ob/If$e;->b:I

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A9;->a:Lcom/yandex/metrica/impl/ob/z9;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/z9;->a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ra;)Lcom/yandex/metrica/impl/ob/If$f;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$f;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$f;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ra;->a:Lcom/yandex/metrica/impl/ob/qa;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/qa;)Lcom/yandex/metrica/impl/ob/If$e;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$f;->a:Lcom/yandex/metrica/impl/ob/If$e;

    .line 4
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/ra;->b:Lcom/yandex/metrica/impl/ob/qa;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/qa;)Lcom/yandex/metrica/impl/ob/If$e;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$f;->b:Lcom/yandex/metrica/impl/ob/If$e;

    .line 5
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ra;->c:Lcom/yandex/metrica/impl/ob/qa;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/qa;)Lcom/yandex/metrica/impl/ob/If$e;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/If$f;->c:Lcom/yandex/metrica/impl/ob/If$e;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$f;)Lcom/yandex/metrica/impl/ob/ra;
    .locals 3

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/ra;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/If$f;->a:Lcom/yandex/metrica/impl/ob/If$e;

    .line 7
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;

    move-result-object v1

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/If$f;->b:Lcom/yandex/metrica/impl/ob/If$e;

    .line 8
    invoke-direct {p0, v2}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;

    move-result-object v2

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/If$f;->c:Lcom/yandex/metrica/impl/ob/If$e;

    .line 9
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/ra;-><init>(Lcom/yandex/metrica/impl/ob/qa;Lcom/yandex/metrica/impl/ob/qa;Lcom/yandex/metrica/impl/ob/qa;)V

    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/ra;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/ra;)Lcom/yandex/metrica/impl/ob/If$f;

    move-result-object p1

    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$f;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/ra;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/If$f;->a:Lcom/yandex/metrica/impl/ob/If$e;

    .line 3
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;

    move-result-object v1

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/If$f;->b:Lcom/yandex/metrica/impl/ob/If$e;

    .line 4
    invoke-direct {p0, v2}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;

    move-result-object v2

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/If$f;->c:Lcom/yandex/metrica/impl/ob/If$e;

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A9;->a(Lcom/yandex/metrica/impl/ob/If$e;)Lcom/yandex/metrica/impl/ob/qa;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/ra;-><init>(Lcom/yandex/metrica/impl/ob/qa;Lcom/yandex/metrica/impl/ob/qa;Lcom/yandex/metrica/impl/ob/qa;)V

    return-object v0
.end method
