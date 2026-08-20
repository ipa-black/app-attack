.class public Lcom/yandex/metrica/impl/ob/L9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/oc;",
        "Lcom/yandex/metrica/impl/ob/If$k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/K9;

.field private final b:Lcom/yandex/metrica/impl/ob/M9;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/K9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/K9;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/M9;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/M9;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/L9;-><init>(Lcom/yandex/metrica/impl/ob/K9;Lcom/yandex/metrica/impl/ob/M9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/K9;Lcom/yandex/metrica/impl/ob/M9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L9;->a:Lcom/yandex/metrica/impl/ob/K9;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/L9;->b:Lcom/yandex/metrica/impl/ob/M9;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/oc;)Lcom/yandex/metrica/impl/ob/If$k;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L9;->a:Lcom/yandex/metrica/impl/ob/K9;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/oc;->a:Lcom/yandex/metrica/impl/ob/mc;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/K9;->a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/If$k$a;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$k;->a:Lcom/yandex/metrica/impl/ob/If$k$a;

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L9;->b:Lcom/yandex/metrica/impl/ob/M9;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/oc;->b:Lcom/yandex/metrica/impl/ob/Ac;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/M9;->a(Lcom/yandex/metrica/impl/ob/Ac;)Lcom/yandex/metrica/impl/ob/If$k$b;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/If$k;->b:Lcom/yandex/metrica/impl/ob/If$k$b;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$k;)Lcom/yandex/metrica/impl/ob/oc;
    .locals 4

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/oc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L9;->a:Lcom/yandex/metrica/impl/ob/K9;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/If$k;->a:Lcom/yandex/metrica/impl/ob/If$k$a;

    new-instance v3, Lcom/yandex/metrica/impl/ob/If$k$a;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/If$k$a;-><init>()V

    if-nez v2, :cond_0

    move-object v2, v3

    .line 7
    :cond_0
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/K9;->a(Lcom/yandex/metrica/impl/ob/If$k$a;)Lcom/yandex/metrica/impl/ob/mc;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L9;->b:Lcom/yandex/metrica/impl/ob/M9;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/If$k;->b:Lcom/yandex/metrica/impl/ob/If$k$b;

    new-instance v3, Lcom/yandex/metrica/impl/ob/If$k$b;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/If$k$b;-><init>()V

    if-nez p1, :cond_1

    move-object p1, v3

    .line 13
    :cond_1
    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/M9;->a(Lcom/yandex/metrica/impl/ob/If$k$b;)Lcom/yandex/metrica/impl/ob/Ac;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/oc;-><init>(Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/Ac;)V

    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/oc;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/L9;->a(Lcom/yandex/metrica/impl/ob/oc;)Lcom/yandex/metrica/impl/ob/If$k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$k;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/L9;->a(Lcom/yandex/metrica/impl/ob/If$k;)Lcom/yandex/metrica/impl/ob/oc;

    move-result-object p1

    return-object p1
.end method
