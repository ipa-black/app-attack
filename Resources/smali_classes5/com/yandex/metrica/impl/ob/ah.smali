.class public Lcom/yandex/metrica/impl/ob/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ah$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/core/api/ProtobufStateStorage<",
            "Lcom/yandex/metrica/impl/ob/eh;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yandex/metrica/impl/ob/eh;

.field private c:Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

.field private d:Lcom/yandex/metrica/impl/ob/gh;

.field private e:Lcom/yandex/metrica/impl/ob/ah$a;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/ah$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/core/api/ProtobufStateStorage<",
            "Lcom/yandex/metrica/impl/ob/eh;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/ah$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    invoke-direct {v0}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/gh;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/gh;-><init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/ah;-><init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/ah$a;Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;Lcom/yandex/metrica/impl/ob/gh;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/ah$a;Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;Lcom/yandex/metrica/impl/ob/gh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/core/api/ProtobufStateStorage<",
            "Lcom/yandex/metrica/impl/ob/eh;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/ah$a;",
            "Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;",
            "Lcom/yandex/metrica/impl/ob/gh;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 4
    invoke-interface {p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/eh;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ah;->b:Lcom/yandex/metrica/impl/ob/eh;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ah;->c:Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ah;->d:Lcom/yandex/metrica/impl/ob/gh;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ah;->e:Lcom/yandex/metrica/impl/ob/ah$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 7
    new-instance v7, Lcom/yandex/metrica/impl/ob/eh;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ah;->b:Lcom/yandex/metrica/impl/ob/eh;

    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/eh;->a:Ljava/util/List;

    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/eh;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ah;->c:Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;

    .line 10
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/services/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/eh;-><init>(Ljava/util/List;Ljava/lang/String;JZZ)V

    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    invoke-interface {v0, v7}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 15
    iput-object v7, p0, Lcom/yandex/metrica/impl/ob/ah;->b:Lcom/yandex/metrica/impl/ob/eh;

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ah;->e:Lcom/yandex/metrica/impl/ob/ah$a;

    check-cast v0, Lcom/yandex/metrica/impl/ob/dh$a;

    .line 17
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/dh$a;->a:Lcom/yandex/metrica/impl/ob/dh;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dh;->b()V

    .line 18
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/dh$a;->a:Lcom/yandex/metrica/impl/ob/dh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/dh;->a(Lcom/yandex/metrica/impl/ob/dh;Z)Z

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/eh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ah;->a:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ah;->b:Lcom/yandex/metrica/impl/ob/eh;

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ah;->d:Lcom/yandex/metrica/impl/ob/gh;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gh;->a()V

    .line 4
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ah;->e:Lcom/yandex/metrica/impl/ob/ah$a;

    check-cast p1, Lcom/yandex/metrica/impl/ob/dh$a;

    .line 5
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/dh$a;->a:Lcom/yandex/metrica/impl/ob/dh;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dh;->b()V

    .line 6
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/dh$a;->a:Lcom/yandex/metrica/impl/ob/dh;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/dh;->a(Lcom/yandex/metrica/impl/ob/dh;Z)Z

    return-void
.end method
