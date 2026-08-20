.class public Lcom/yandex/metrica/impl/ob/I9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/cc;",
        "Lcom/yandex/metrica/impl/ob/If$k$a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/H9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/H9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/H9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/I9;-><init>(Lcom/yandex/metrica/impl/ob/H9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/H9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/I9;->a:Lcom/yandex/metrica/impl/ob/H9;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/cc;)Lcom/yandex/metrica/impl/ob/If$k$a$b;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a$b;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/cc;->a:Lcom/yandex/metrica/impl/ob/Qc;

    iget-boolean v2, v1, Lcom/yandex/metrica/impl/ob/Qc;->a:Z

    iput-boolean v2, v0, Lcom/yandex/metrica/impl/ob/If$k$a$b;->a:Z

    .line 4
    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/Qc;->b:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a$b;->b:Z

    .line 5
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/cc;->b:Lcom/yandex/metrica/impl/ob/ac;

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/I9;->a:Lcom/yandex/metrica/impl/ob/H9;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/H9;->a(Lcom/yandex/metrica/impl/ob/ac;)Lcom/yandex/metrica/impl/ob/If$k$a$b$a;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/If$k$a$b;->c:Lcom/yandex/metrica/impl/ob/If$k$a$b$a;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$k$a$b;)Lcom/yandex/metrica/impl/ob/cc;
    .locals 4

    .line 7
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/If$k$a$b;->c:Lcom/yandex/metrica/impl/ob/If$k$a$b$a;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/I9;->a:Lcom/yandex/metrica/impl/ob/H9;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/H9;->a(Lcom/yandex/metrica/impl/ob/If$k$a$b$a;)Lcom/yandex/metrica/impl/ob/ac;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/cc;

    new-instance v2, Lcom/yandex/metrica/impl/ob/Qc;

    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/If$k$a$b;->a:Z

    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/If$k$a$b;->b:Z

    invoke-direct {v2, v3, p1}, Lcom/yandex/metrica/impl/ob/Qc;-><init>(ZZ)V

    invoke-direct {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/cc;-><init>(Lcom/yandex/metrica/impl/ob/Qc;Lcom/yandex/metrica/impl/ob/ac;)V

    return-object v1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/I9;->a(Lcom/yandex/metrica/impl/ob/cc;)Lcom/yandex/metrica/impl/ob/If$k$a$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$k$a$b;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/I9;->a(Lcom/yandex/metrica/impl/ob/If$k$a$b;)Lcom/yandex/metrica/impl/ob/cc;

    move-result-object p1

    return-object p1
.end method
