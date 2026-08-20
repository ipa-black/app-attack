.class Lcom/yandex/metrica/impl/ob/fa$b$i;
.super Lcom/yandex/metrica/impl/ob/ga;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fa$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/ga<",
        "Lcom/yandex/metrica/impl/ob/Ud;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fa$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ga;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/R7;)Lcom/yandex/metrica/core/api/ProtobufStateStorage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/R7;",
            ")",
            "Lcom/yandex/metrica/core/api/ProtobufStateStorage<",
            "Lcom/yandex/metrica/impl/ob/Ud;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/l9;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ea;

    .line 2
    new-instance v2, Lcom/yandex/metrica/impl/ob/vm;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/vm;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ea;-><init>(Lcom/yandex/metrica/impl/ob/vm;)V

    .line 3
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ea;->e()Lcom/yandex/metrica/core/api/ProtobufStateSerializer;

    move-result-object p1

    new-instance v1, Lcom/yandex/metrica/impl/ob/Wd;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Wd;-><init>()V

    const-string v2, "preload_info_data"

    invoke-direct {v0, v2, p2, p1, v1}, Lcom/yandex/metrica/impl/ob/l9;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/R7;Lcom/yandex/metrica/core/api/ProtobufStateSerializer;Lcom/yandex/metrica/core/api/ProtobufConverter;)V

    return-object v0
.end method

.method protected c(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R7;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->n()Lcom/yandex/metrica/impl/ob/R7;

    move-result-object p1

    return-object p1
.end method

.method protected d(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R7;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->o()Lcom/yandex/metrica/impl/ob/R7;

    move-result-object p1

    return-object p1
.end method
