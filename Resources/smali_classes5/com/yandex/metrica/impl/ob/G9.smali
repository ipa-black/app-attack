.class public Lcom/yandex/metrica/impl/ob/G9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/core/api/ProtobufConverter<",
        "Lcom/yandex/metrica/impl/ob/Xb;",
        "Lcom/yandex/metrica/impl/ob/If$k$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/F9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/F9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/F9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/G9;-><init>(Lcom/yandex/metrica/impl/ob/F9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/F9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/G9;->a:Lcom/yandex/metrica/impl/ob/F9;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/If$k$a$a;
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$k$a$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$k$a$a;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/Xb;->a:Lcom/yandex/metrica/impl/ob/Qc;

    iget-boolean v2, v1, Lcom/yandex/metrica/impl/ob/Qc;->a:Z

    iput-boolean v2, v0, Lcom/yandex/metrica/impl/ob/If$k$a$a;->a:Z

    .line 4
    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/Qc;->b:Z

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a$a;->b:Z

    .line 5
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Xb;->b:Lcom/yandex/metrica/impl/ob/Wb;

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/G9;->a:Lcom/yandex/metrica/impl/ob/F9;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance v1, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;-><init>()V

    .line 36
    iget-wide v2, p1, Lcom/yandex/metrica/impl/ob/Wb;->a:J

    iput-wide v2, v1, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;->a:J

    .line 37
    iget-wide v2, p1, Lcom/yandex/metrica/impl/ob/Wb;->b:J

    iput-wide v2, v1, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;->b:J

    .line 38
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$k$a$a;->c:Lcom/yandex/metrica/impl/ob/If$k$a$a$a;

    :cond_0
    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/If$k$a$a;)Lcom/yandex/metrica/impl/ob/Xb;
    .locals 6

    .line 39
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/If$k$a$a;->c:Lcom/yandex/metrica/impl/ob/If$k$a$a$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/G9;->a:Lcom/yandex/metrica/impl/ob/F9;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    new-instance v1, Lcom/yandex/metrica/impl/ob/Wb;

    iget-wide v2, v0, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;->a:J

    iget-wide v4, v0, Lcom/yandex/metrica/impl/ob/If$k$a$a$a;->b:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/Wb;-><init>(JJ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xb;

    new-instance v2, Lcom/yandex/metrica/impl/ob/Qc;

    iget-boolean v3, p1, Lcom/yandex/metrica/impl/ob/If$k$a$a;->a:Z

    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/If$k$a$a;->b:Z

    invoke-direct {v2, v3, p1}, Lcom/yandex/metrica/impl/ob/Qc;-><init>(ZZ)V

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/Xb;-><init>(Lcom/yandex/metrica/impl/ob/Qc;Lcom/yandex/metrica/impl/ob/Wb;)V

    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Xb;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/Xb;)Lcom/yandex/metrica/impl/ob/If$k$a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$k$a$a;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/G9;->a(Lcom/yandex/metrica/impl/ob/If$k$a$a;)Lcom/yandex/metrica/impl/ob/Xb;

    move-result-object p1

    return-object p1
.end method
